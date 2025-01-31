---
slug: opencv-qr
title: 'Scanning QR codes in R'
date: '2023-10-30'
author: Jeroen Ooms
description: 'The new version of the opencv package includes a cool QR code scanner.'
photogallery: true
preface: 'This post was featured in the [R Weekly Highlights podcast](https://rweekly.fireside.fm/143) hosted by Eric Nantz and Mike Thomas.'
tags:
  - tech notes
  - packages
  - opencv
---


The latest version of the [opencv R package](https://ropensci.r-universe.dev/opencv) can detect and decode QR codes!

```r
# Install latest opencv
install.packages("opencv", repos = "https://ropensci.r-universe.dev")
```

There are two ways of using this: the [`ocv_qr_detect`](https://docs.ropensci.org/opencv/reference/qrcode.html) function tries to find the QR in an image file. It returns either a text string or NULL (if no QR code was found in the image):

```r
img <-  opencv::ocv_read('https://jeroen.github.io/images/qrtest.jpg')
opencv::ocv_qr_detect(img)
## https://www.r-project.org
```

Alternatively if your laptop has a camera, you can use R as a true QR code scanner! The [`qr_scanner`](https://docs.ropensci.org/opencv/reference/qrcode.html) function starts the camera device and filters the video stream through the above `ocv_qr_detect` until a QR code has been detected.

```r
# This requires a camera
txt <- opencv::qr_scanner()
```

By default, both `ocv_qr_detect` and `qr_scanner` return the text value of the decoded QR code. But both functions also have an option `draw = TRUE` which will instead return an annotated image with the position and value of the QR drawn into the image, and qr text value as an attribute.


{{< gallery >}}
{{< figureforgallery src="input.jpg" alt="Input photo which includes a QR code" >}}
{{< figureforgallery src="output.jpg" alt="Annotated output which shows the input plus highlighted QR area" >}}
{{< /gallery >}}

## Generating QR codes in R

There exists another package on CRAN called [qrcode](https://thierryo.github.io/qrcode/) (currently maintained by Thierry Onkelinx) which can generate most types of QR codes using R graphics, which is super cool.

We can combine the two packages to roundtrip text to QR codes in R:

```r
## generate a qr code image
png("qr-test.png")
plot(qrcode::qr_code("This is a test!"))
dev.off()

# Verify that we can read it:
ocv_qr_detect(ocv_read('qr-test.png'))
## [1] "This is a test!"
```

So this provides a quick way to exchange small blobs of information between computers running R, without the need for any network connection.
