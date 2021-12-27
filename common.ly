\version "2.22.1"

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