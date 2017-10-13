\version "2.18.2"

\include "bagpipe.ly"

#(set-default-paper-size "a6" 'landscape)

\header {
    title = "Plinn 2"
    subtitle = "Réb et Solb"
    meter = "Plinn"
    arranger = "Trad. arr."
}

\score {
    {
        \hideKeySignature
        \time 2/4

        \repeat volta 2 {
            \gre a8 \shakec c4 \grg e8 \gra e d \dblb b c
            \gre a \shakec c4 \grg e8 \gra e d \dblb b4
        }

        \break

        \repeat volta 2 {
            \grg a8 \grd c \grg a c \dblb b a \grg G a
            \grg b c \grg a \grd c \dblb b \grG a
        }
    }

    \layout {
        indent = 0.0\cm
        \context { \Score \remove "Bar_number_engraver" }
    }
    
    % \midi {}
}
