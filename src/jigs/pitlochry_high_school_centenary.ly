\version "2.18.2"

\include "bagpipe.ly"

\header {
    title = "The Pitlochry High School Centenary"
    % subtitle = "Subtitle"
    meter = "Jig"
    % composer = "Name"
    arranger = "Gordon Duncan"
    tagline = ""
}

\score {
    {
        \hideKeySignature
        \time 6/8

        \repeat volta 2 {
            \slurd d4 e8 \grg f e d g b \grG b \grg b a b
            \slurd d4 e8 \grg f e d g b \grG b \grg c d e

            \slurd d4 e8 \grg f e d g b \grG b \grg b a b
            \grg a8 \grd c a \grg d a e \grg a e \gra e \grg e d c
        }

        \break

        \repeat volta 2 {
            \slurd d4 A8 \grg A g f g \grA g \grf g \grA g f e
            \slurd d4 A8 \grg A g f \grg e c \grd a \grg a \gre c e

            \slurd d4 A8 \grg A g f g \grA g \grf g \grA g f e
            \grg a8 \grd c a \grg d a e \grg a e \gra e \grg e d c
        }
    }

    \layout {
        indent = 0.0\cm
        \context { \Score \remove "Bar_number_engraver" }
    }
    
    % \midi {}
}