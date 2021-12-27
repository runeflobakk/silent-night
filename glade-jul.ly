\version "2.22.1"
\include "common.ly"


\header {
    title = "Glade jul"
    composer = "Rune Flobakk (bearb.)"
    tagline = ##f
}

signature = {
    \key ees \major
    \time 3/4
}

melody = {
    bes4.  c8 bes4  g2.
    bes4.  c8 bes4  g2.
    f'2       f4    d2.
    ees2      ees4  bes2.

    \repeat unfold 2 {
        c2       c4    ees4.  d8 c4
        bes4. c8 bes4  g2.
    }

    f'4.  f8 f4    aes4  f  d
    ees2.^\rit          g\fermata

    ees4.^\atempo  bes8 g4 bes4.    aes8 f4
    ees1.
}


bass = {
    \repeat unfold 11 { ees2. }
    ees4 f g

    aes2.  aes      g   g
    aes    a        bes c2 e,4

    f2.    bes2  b4 c2.  a
    bes,   bes   ees     ees
}




\score {
    \new PianoStaff <<
    	\new Staff = "right hand" {
            \tempo "Andante" 4 = 70
    	    \clef treble
            \signature

            R2.*4
            \relative bes' \melody
            \bar "|."
    	}

    	\new Staff = "left hand" {
            \clef bass
    	    \signature

            \relative ees, \bass
        }
    >>

	\layout {}
	\midi {}
}
