\version "2.18.2"

\include "bagpipe.ly"

\header {
    title = "Blue Cloud"
    meter = "Jig"
    % composer = "Adam Quinn"
    arranger = "Adam Quinn"
}

\score {
    {
        \hideKeySignature
        \time 6/8

        \override Glissando.style = #'trill

        \override Glissando.minimum-length = #5
        \override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods

        \repeat volta 2 {
            \grg a8 \grd a \gre a \grg b16 \glissando c8. b8 \grg b16 \glissando c8. b8 \grg c \grd a \gre a
            \grg G \grd G \gre G \grg c d \grG d \dble e d b \dbld d b \grd G

            \grg a8 \grd a \gre a \grg b16 \glissando c8. b8 \grg b16 \glissando c8. b8 \grg c \grd a \gre a
            \grg G \grd G \gre G \grg e f e
        }
        \alternative {
            { c4 \shakec c8 \grG a4 A8 }
            { c4 \shakec c8 \grG a4 \grd b8 }
        }

        \break

        \repeat volta 2 {
            \grg c8 e \gra e \grg e f e \dblg g4 f8 \dble e d b
            \grg b16 \glissando c8. b8 \grg b16 \glissando c8. a8 \grg G \grd G \gre G \dbld d b \grd G

            \grg c8 e \gra e \grg e f e \dblg g4 f8 \dble e d b
            \grg G \grd G \gre G \grg e f e c4 \shakec c8 \grG a4 \grd b8
        }

        \break


        \repeat volta 2 {
            \grg G \grd G \gre G \grg b \grd G \gre b \dbld d c d \grg f e d
            \grg b16 \glissando c8. a8 \grg a \grd a \gre a \gbirl a4 \grd a8 \grg c b a

            \grg G \grd G \gre G \grg b \grd G \gre b \dbld d c d \grg f e d
            \grg c e \gra e \grg e f g
        }
        \alternative {
            { c4 \shakec c8 \grG a4 \grd b8 }
            { b16 \glissando c8. ~c8 \grg e f A }
        }

        \break


        \repeat volta 2 {
            b16 \glissando c8. A8 \birl a4 A8 c4 \shakec c8 \grg e d c 
            \grg b \grd G \gre b \grg b \grd G \gre b d4 \shaked d8 \grg f e d

            \grg b16 \glissando c8. A8 \birl a4 A8 c4 \shakec c8 \grg e d c 
            \grg c e \gra e \grg e f A
        }
        \alternative {
            { c4 \shaked c8 \grg e f A }
            { c4 \shakec c8 \grG a4 \grd b8 }
        }

        \break


        \repeat volta 2 {
            \grg G \grd G \gre G \dblg g4 e8 \dbld d b d \grg G b d
            \grg a \grd a \gre a \dblA A4 e8 \dblc c e \gra e \grg e f g

            \break

            \grg G \grd G \gre G \dblg g4 e8 \dbld d b d \grg G b d
            \grg a e \gra e \grg e f A
        }
        \alternative {
            { c4 \shakec c8 \grg e f g }
            { b16 \glissando c8. ~c8 \grg e f A }
        }

        \break


        \repeat volta 2 {
            b16 \glissando c8. A8 b16 \glissando c8. A8 b16 \glissando c8. A8 \hdblc c b a
            \grg c d \grG d \dbld d c d \dbld d c d \dbld d c b
        }
        \alternative {
            { \grg b16 \glissando c8. A8 b16 \glissando c8. A8 b16 \glissando c8. A8 \hdblc c b a
            \grg c e \gra e \grg e f A b16 \glissando c8. ~c8 \grg e f A }
            { \grg a \grd a \gre a \grg b16 \glissando c8. b8 \grg b16 \glissando c8. b8 \grg c \grd a \gre a
            \grg G \grd G \gre G \grg e f A c4 \shakec c8 \grG a }
        }
    }

    \layout {
        indent = 0.0\cm
        \context { \Score \remove "Bar_number_engraver" }
    }
    
    % \midi {}
}