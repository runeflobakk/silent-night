\version "2.22.1"
\include "defs.ily"

\header {
    title = "Silent Night"
    composer = "Franz Xaver Gruber"
    arranger = "Rune Flobakk (arr.)"
    tagline = ##f
    instrument = "Piano"
}


signature = {
    \key ees \major
    \time 3/4
}

melody = {
    bes4.( c8 bes4  g2.)
    bes4.( c8 bes4  g2.)
    f'2(      f4    d2.)
    ees2(     ees4  bes2.)

    \repeat unfold 2 {
        c2(      c4    ees4.  d8 c4
        bes4. c8 bes4  g2.)
    }

    f'2(f4       aes4.  f8  d4
    ees2.        g^\fermata)

    ees4.( bes8 g4 bes4.    aes8 f4
    ees2.~2.)
}

bellResponse = {
    r4 bes4\(^\ppp g g aes2\)
}

bass = {
    \repeat unfold 11 { ees2. }
    ees4 f g

    aes2.  aes      g   g
    aes    a        bes c2 <e, e,>4

    <f f,>2.    <bes bes,>2  <b b,>4 <c c,>2.  a'-5_\fermata
    <bes,, bes'>   bes'  ees,    ees
}

arpeggioBase = { r8 bes,  bes' f4 g8 }

arpeggioAccomp = {
    \arpeggioBase
    r8 bes,  bes' f  f'4
    r8 bes,, bes' f4 g8
    r  bes,  ees' f,  f' bes,
}

pedal = {
    \set pedalSustainStyle = #'bracket
    s2.\sustainOn s2.\sustainOff\sustainOn s2.\sustainOff\sustainOn

    \once \override PianoPedalBracket.edge-height = #'(1.0 . 0.0)
    s4\sustainOff\sustainOn_\pedSimile
}


\score {
    \new PianoStaff <<
    	\new Staff = "right hand" {
            \tempo "Adagio" 4 = 70
    	    \clef bass
            \signature

            s2.*4
            \clef treble

            <<
                \new Voice \relative bes' {
                    \voiceOne \melody
                }
                \new Voice \relative bes' {
                    \voiceTwo {
                        s2.*5 f2. s2.
                        r8 \clef bass g,-1 <aes-2 ees'-5> ees-1 <bes'-3 ees-5 f,-1>4\glissando
                        \clef treble
                            bes4-1_\markup { \fontsize #-3.5 "(L.H.)" }
                            c2-2 g'4. f8 ees4 s2.
                    }
                    \voiceThree \magnifyMusic 0.67 \relative bes'' \bellResponse
                    \voiceTwo {
                        <c' fis,>2. s2. f,8 g, c f <e c g> c
                        <f aes c>2 f4 <aes c ees>4. f8 <d g a>4
                        <ees g bes>2. <b' d>
                        s2. c,2 d4
                    }
                }
            >>
            \bar "|."
    	}

        \new Dynamics {
            s2.*11\mp s4 s2\<
            s2.*7\!\mf s2.\<
            s2.*2\!\f s2._\rit s2.\sp
            s2.*2\mp_\atempo s2 s4_\rit\>
            s2 s8\!\pp
        }

    	\new Staff = "left hand" {
            \clef bass
    	    \signature
            <<
                \relative {
                    \change Staff = "right hand" \stemDown \arpeggioAccomp
                    \change Staff = "left hand" \stemUp
                    \arpeggioAccomp
                    \transpose ees bes \relative { \arpeggioBase \arpeggioBase }
                    \arpeggioBase
                    s2.
                    r8 ees-3 ees'-1 g,4 aes8 r8 ees c' bes aes4
                    \repeat unfold 2 { r8 ees bes' f4  g8 }
                    r8 ees ees' g,4 aes8 r8 fis c' d ees c
                    r8 ees, bes' f4  g8 s2.
                    r8 c, f g4 aes8 r8 f bes r4.
                    r8 ees,-3 g-1 bes-3 c-2 d-1 ees2.-2
                    r8 ees, bes' f4  g8
                    aes2.
                    \arpeggioBase \arpeggioBase
                }
                \\
                \relative ees, \bass
            >>
        }

        \new Dynamics \pedal
    >>

	\layout {}
	\midi {}
}
