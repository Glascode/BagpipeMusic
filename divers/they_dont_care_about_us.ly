\version "2.18.2"

\include "bagpipe.ly"

\header {
    title = "They Don't care About Us"
    meter = "Réb et Solb"
    % composer = "Mickael Jackson"
    arranger = "Bagad Cap Caval arrangement"
    tagline = ""
}

\score {
    {
        \hideKeySignature
        \time 2/4

        % \mark "Intro"
        \repeat volta 2 {
            f8 d f d \grg e16 \gra e c8 e c
            f d \grg f16 e d8 \grg e c \grg e16 d c a
            f8 d f d \grg e16 \gra e c8 e c

            \break
        
            f8 \grg f16 e \grg f d g e~ e8[ \grg e16 d] \grg e d c \grg d~
            d8 \grc d16 \grg d c d e f~ f8[ \grg f16 d] e8. \grg e16

            \break

            f8 \grg f16 e \grg f d g e~ e8[ \grg e16 d] \grg e d c \grg d~
            d8 c16 d \grg a b c \gre d~ d4~ d4

            \break


            f8 \grg f16 e f[ e d \wthrwe e~] e8[ \grg e16 d] \grg e d c \grg d~
            d8 \grc d16 \grg d c d e f~ f8[ \grg f16 d] e8. \grg e16

            \break

            f8 \grg f16 e f \gre f g e~ e8[ \grg e16 d] \grg e d c \grg d~
            d8 c16 d \grg a b c \gre d~ d4~ d4
        }

        \break


        % \mark "Theme"
        c8 a c a \grg b G b G
        c8 a c16 b a8 \grg b G b16 a G8
        c8 a c a \grg b16 \grG b G8 b G

        \break

        c8 \grg c16 b c e d b~ b8 \grg b16 a b a G a~
        a8 \grg a16 \grd a G a b c~ c8 \grg c16 a \tuplet 3/2 { b8 c d }

        \break

        c8 \grg c16 b c e d b~ b8 \grg b16 a b a G a~
        a8 \grg a16 \grd a b a G a~ a4~ a

        \break


        c8 \grg c16 b c e d b~ b8 \grg b16 a b a G a~
        a8 \grg a16 \grd a G a b c~ c8 \grg c16 a \tuplet 3/2 { b8 c d }

        \break

        c8 \grg c16 b c e d b~ b8 \grg b16 a b a G a~
        a8 c16 b a b G a~ a4~ a
    }

    \layout {
        indent = 0.0\cm
        \context { \Score \remove "Bar_number_engraver" }
    }
    
    % \midi {}
}

