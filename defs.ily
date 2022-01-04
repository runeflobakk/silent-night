% SPDX-License-Identifier: Apache-2.0 OR CC-BY-4.0

\paper {
    left-margin = 15\mm
    bottom-margin = 20\mm
    system-system-spacing =
        #'((basic-distance . 17)
           (minimum-distance . 8)
           (padding . 1)
           (stretchability . 60))
}

rit = \markup { \italic "rit." }

atempo = "a tempo"

pedSimile = \markup { \fontsize #-3 \italic "Ped. simile." }

rightHand = \markup { \italic \fontsize#-2 "m.d." }
leftHand = \markup { \italic \fontsize#-2 "m.s." }

copyrightSign = \markup \char ##x00A9
emdash = \markup \char ##x2014

licenseCc = "Creative Commons Attribution 4.0"
licenseApache = "Apache License Version 2.0"
