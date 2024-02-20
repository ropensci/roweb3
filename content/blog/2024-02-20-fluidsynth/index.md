---
slug: fluidsynth
title: 'Read and Play Digital Music (MIDI) in R using the *fluidsynth* package'
date: '2024-02-20'
author: Jeroen Ooms
featured: true
description: 'A new package with bindings to libfluidsynth to read and synthesize midi files in R'
tags:
  - tech notes
  - music
  - sound
---

A few weeks ago, prof [Matt Crump](https://www.crumplab.com/people/matt_crump.html) wrote a [blog post](https://homophony.quest/blog/32_1_30_24_R_synth/) in which he explores tools to handle MIDI data in R, in preparation for a cognition experiment that involves creating musical stimuli. In the article he ends up using a mix of external command line tools `ffmpeg` and `fluidsynth` and a python module.

This solution of course hurts my R soul: Invoking shell commands from R [is unreliable](/blog/2021/09/13/system-calls-r-package/#downsides-of-system-commands) and users are often unable (or unwilling) to install all kinds of extra software on their machine. Some tools may not even be available for all platforms, or create conflicts, or the user might not have permission to install software in the first place. So let's see what we can do to improve the situation.


## The 'fluidsynth' R package

[FluidSynth](https://www.fluidsynth.org/) is a widely used software synthesizer, and includes a neat C interface [libfluidsynth](https://www.fluidsynth.org/api/). We created a new package with R bindings that allows for parsing, playing and converting midi in R without the need for external programs. You can install the `fluidsynth` package directly from [r-universe](https://ropensci.r-universe.dev/fluidsynth):


```r
install.packages('fluidsynth', repos = 'https://ropensci.r-universe.dev')
```

On Windows and MacOS `libfluidsynth` is statically linked, which basically means it is already included with the binary R package. On Linux you may need to install `libfluidsynth` from your distribution; the package will automatically show you when to do so.


## Example: parse MIDI data

Let's start with reading a midi file to see what it contains. The `midi_read` function takes a path to a midi file as argument and returns a data frame with so called midi events:

```r
library(fluidsynth)
my_midi <- demo_midi()
midi_df <- midi_read(my_midi)
```
```
    tick channel event          param1 param2
   <int>   <int> <fct>           <int>  <int>
 1     0       0 MIDI_SYSEX          9      1
 2     0       0 NA             555556      0
 3    80       0 CONTROL_CHANGE    121      0
 4    81       1 CONTROL_CHANGE    121      0
 5    82       2 CONTROL_CHANGE    121      0
 6    83       3 CONTROL_CHANGE    121      0
 7    84       4 CONTROL_CHANGE    121      0
 8    85       5 CONTROL_CHANGE    121      0
 9    86       6 CONTROL_CHANGE    121      0
10    87       7 CONTROL_CHANGE    121      0
# ℹ 23,001 more rows
```

Each row in the data frame represents an event, such as an instrument being configured or a note being played. The `midi_df` data frame has 5 columns:

 - `tick` - a relative timestamp
 - `channel` - on which channel (e.g for which instrument) does the event occur
 - `event` - the type of event: usually a musical note being played or [controller change](https://cmtext.indiana.edu/MIDI/chapter3_controller_change.php)
 - `param1` and `param2`: each midi event can take 2 numeric parameters. The meaning of these parameters depends on the type of event. For the common "note on" event, these represent the note and velocity.

Actually `midi_read()` is similar to `tuneR::readMidi` except for that it does not include midi metadata in the output (and is much faster). But now on to the fun stuff.

## Synthesizing and soundfonts

Let's play the midi! The `midi_play()` function tries to detect your local audio hardware and you should hear music playing:

```r
library(fluidsynth)
midi_play(
  demo_midi(),
  soundfont = soundfont_path()
)
```

Now `midi_play` has a few arguments that are important to understand. The most important one is the `soundfont`. What is a soundfont?

## What is a soundfont

Besides the midi file, a soundfont provides the other essential ingredient for synthesizing digital music.

As explained above, a midi file is mostly a table of timestamps and note values. It does not contain any audio. This is where soundfonts come in: a soundfont contains a soundbank of audio fragments of all the notes being played by different instruments; analogous to the glyphs in a typeface font. The software synthesizer uses these audio fragments as the basis for generating music from the midi data.

The sound and quality of the output is very much determined by which soundfont you are using. On Linux distributions a soundfont is often included with libfluidsynth; on Windows and MacOS the R package defaults to a nice free soundfont called [GeneralUser GS](https://schristiancollins.com/generaluser) by Pianist and composer S. Christian Collins. You can easily try other soundfonts as well, just download the `.sf2` file and set the path in `midi_play()`.

## Rendering audio to a file

Whereas `midi_play()` synthesizes the music in real-time to your soundcard, it can also save the output into an audio file. This is what `midi_convert()` does:


```r
midi_convert(
  midi = demo_midi(),
  output = 'output.mp3'
)
```

Internally this performs two steps: first the midi is synthesized by fluidsynth into a raw/wav file. This file can be very large and may not work in all players. Therefore it is automatically converted it into a proper compressed audio format such as mp3, using the [av](https://docs.ropensci.org/av/) package `av::av_audio_convert()`. The output format is determined by the file extension, see `av::av_muxers()` for supported formats on your system.

Note that similar to `fluidsynth`, the `av` package replaces the need for the `ffmpeg` command line utility, by binding directly to the ffmpeg C interface. So we can safely depend on it, as users on e.g. Windows and MacOS will not need to install any 3rd party software.

## Additional settings

Besides the choice of soundfont, fluidsynth provides many more options to influence the synthesizing process which you can set in the `settings`  argument in `midi_play` or `midi_convert`:

```r
midi_convert(
  demo_midi(),
  output = "low-quality.mp3",
  settings = list('synth.sample-rate' = 22050)
)
```


Use `fluidsynth_setting_list()` and `fluidsynth_setting_options()` to see all supported options and their types and options. To get the default for a given option use `fluidsynth_setting_default()`:

```r
# List all available settings
fluidsynth_setting_list()

# List possible values for a given options
fluidsynth_setting_options('audio.driver')

# Get the default for a given option:
fluidsynth_setting_default('synth.sample-rate')
```

