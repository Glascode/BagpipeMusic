\version "2.18.2"

\include "bagpipe.ly"

\header {
    title = "Mason's Apron"
    meter = "Reel"
    arranger = "Stuart Liddell"
}

\score {
    {
        \hideKeySignature
        \time 2/4

        \repeat volta 2 {
            \grg c16 \grd a \gre a \grd b \gbirl a8 \grg a16 G
            \shakea a8 \grg a16 b \grg c a \grg b c

            \grg d b \grG b c \grg d b \grc b a \grg b
            c \grg d e \grg f e \grg f g

            \break

            A a \grg a b \grg a b \grg a G
            \shakea a8 \grg a16 b \shakec c8 b16 a

            \grg b c \grg d e \grg f e \grg f A
        }
        \alternative {
            { \dble e16 d \dblc c b \birl a8 A }
            { \dble e16 d \dblc c b \birl a8 \grg e16 d }
        }

        \break


        \repeat volta 2 {
            \grg c \grd a \dble e a \grg f a \dble e a
            \grg c \grd a \dble e a \grg f e \grg d c

            \grg d b \grG b c \grg d b \grc b a \grg b
            c \grg d e \grg f e \grg f g

            \break

            A a \grg a b \grg a b \grg a G
            \shakea a8 \grg a16 b \shakec c8 b16 a

            \grg b c \grg d e \grg f e \grg f A
            \dble e d \dblc c b \birl a8 A
        }
        
    }

    \layout {
        indent = 0.0\cm
        \context { \Score \remove "Bar_number_engraver" }
    }
    
    % \midi {}
}