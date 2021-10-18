---
title: ASA-BIOP 2021 conference
dateStart: 2021-09-24T15:00:00 # UTC!!
dateEnd: 2021-09-24T16:00:00 # UTC!!
date: 2021-09-24T16:00:00 # UTC!! same as dateEnd
description: short summary # If you use a colon put the whole field in ""
location: 'online' # free text
slug: "asa-biop-mark"
country: "\U0001F310" # emoji
outputs: 
- HTML
- Calendar 
attendees:
  - Mark Padgham
# deets: "Register at [blabla](#)" # not necessary but useful
resources: # can be added later, one entry per talk (don't add while still empty, add once there are resources)
  - title: Assessment and Standardization of R Packages for Statistical Analysis by rOpenSci
    speaker: Mark Padgham
    slides: https://mpadge.github.io/presentations/2021/ASA-BIOP/#1
    video: https://vimeo.com/632375553
---

Abstract: rOpenSci is currently expanding its system for peer-review of R packages to include packages implementing statistical algorithms. This talk will briefly present two new tools developed for our expansion of scope, in order to assess statistical packages. The first, the "autotest" package, automatically generates and executes tests on R packages by determining the types of each input parameter for each function, and then mutating both types and values. This can be used to document and confirm the robustness of software to unexpected inputs. The second tool, the "ssr" package, allows standards compliance to be integrated directly into R package code. Developers use a roxygen-like system to annotate code to record where and how specific standards standards are addressed, as well as providing context or explanation for non-compliance. The integration of standards within the code itself enables the automatic generation of detailed, explicit, and cross-linked reports on standards compliance.



