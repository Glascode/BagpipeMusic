\version "2.18.2"

\include "bagpipe.ly"

\paper {
    print-all-headers = ##t
}

\score {
    \header {
        title = "Suite montagne"
        subtitle = "Suite 1"
        meter = "Tempo = 155"
        arranger = "Trad. arr."
        piece = "Tonalité = Fa mineur"
        opus = "Gavotte Montagne"
    }
    {
        %\override Score.RehearsalMark.self-alignment-X = #CENTER

        \hideKeySignature
        \time 4/4

        \mark "Thème A"
        \partial 8 e8
        \dble e d \grg e f \grA g e \grg f d
        \grg e f \grg d c \dblb b4 \grG b8 \grg e

        \gra e d \grg e f \grA g e \grg f d
        \grg e f \grg d c \dblb b4 \grG b8 a

        \break

        \grg a \grd a \grg b \grG b \grg e f \dble e \gra e
        \grg d b \dbld d c \grg a4 \wbirl a8 \grd a

        \grg a \grd a \grg b \grG b \grg e f \dble e \gra e
        \grg d b \dbld d c \grg a4 \wbirl a
    
        \break


        \mark "Thème B"
        \shakee e8 d \grg e f \grA g e \grg f d
        \grg e f \grg d c \dblb b4 \grG b

        \shakee e8 d \grg e f \grA g e \grg f d
        \grg e f \grg d c \dblb b4 \grG b8 a

        \break

        \grg a \grd a \grg b \grG b \grg e f \dble e \gra e
        \grg d b \dbld d c \grg a4 \wbirl a8 \grd a

        \grg a \grd a \grg b \grG b \grg e f \dble e \gra e
        \grg d b \dbld d c \grg a4 \wbirl a

        \break


        \mark "Thème C"
        \shakee e8 d \grg e f g \grA g f4
        \grg f8 e \grg d c \dblb b4 \grG b

        \shakee e8 d \grg e f \grA g16 A8. \dblf f4
        \grg f8 e \grg d c \dblb b4 \grG b8 \grd b

        \break

        \grg c d e \dble e d c \grg a \grd a
        \dbld d c \grg a G \grg a4 \wbirl a8 c

        \grg c d e \dble e d c \grg a \grd a
        \dbld d c \grg a G \grg a4 \wbirl a8 \grd a

        \break


        \mark "Thème D"
        \grg a G \grg a b \grg c a \dble e \gra e
        \grg f e \grg d c \dblb b4 \grG b8 a

        \grg a G \grg a b \grg c a \dble e \gra e
        \grg f e \grg d c \dblb b4 \grG b8 \grd b

        \break

        \grg c d e \dble e d c \grg a \grd a
        \dbld d c \grg a G \grg a4 \wbirl a8 c

        \grg c d e \dble e d c \grg a \grd a
        \dbld d c \grg a G \grg a4 \wbirl a8 c
        
    }
}


\score {
    \header {
        subtitle = "Suite 2"
        meter = "Tempo = 155"
        arranger = "Trad. arr."
        piece = "Tonalité = Fa mineur"
        opus = "Gavotte Montagne"
    }
    {
        \hideKeySignature
        \time 4/4

        \mark "Thème A"
        \dble e4 \grg \tuplet 3/2 {c8 d e} \grA g8. e16 \grg c4
        \dblc c8 a \grg G8. a16 \grg c4 \grG c8 e

        \grg e \gra e \grg \tuplet 3/2 {c8 d e} \grA g8. e16 \grg c4
        \dblc c8 a \grg G8. a16 \grg c4 \grG c8 e

        \break

        \dble e \gra e \grg \tuplet 3/2 {c8 d e} \grA g8. e16 \grg c4
        \dblc c8 a \grg a8. G16 \grg a4 \gbirl a

        \dble e4 \grg \tuplet 3/2 {c8 d e} \grA g e \grg c d
        \grg \tuplet 3/2 {c b a} \grg b \grd c \grg a4 \gbirl a

        \break


        \mark "Thème B"
        \dble e4 \grg \tuplet 3/2 {c8 d e} \grA g8. e16 \grg c4
        \dblc c8 a \grg G8. a16 \grg c4 \grG c8 e

        \grg e \gra e \grg \tuplet 3/2 {c8 d e} \grA g8. e16 \grg c4
        \dblc c8 a \grg G8. a16 \grg c4 \grG c8 e

        \break

        \grg e \gra e \grg \tuplet 3/2 {c8 d e} \grA g8. e16 \grg c4
        \dblc c8 a \grg a8. G16 \grg a4 \gbirl a

        \dble e4 \grg \tuplet 3/2 {c8 d e} \grA g e \grg c d
        \grg \tuplet 3/2 {c b a} \grg b \grd c \grg a \grG a \grg a \grG a

        \break


        \mark "Thème C"
        \dble e4 \grg \tuplet 3/2 {c8 d e} \grA g8. e16 \grg c4
        \dblc c8 a \grg G8. a16 \grg e4 \gra e8 c

        \grg d e g e \grg \tuplet 3/2 {d e d} \dblc c4 
        \dbld c8 a \grg G8. a16 \grg e4 \gra e8 c

        \break

        \grg d e g e \grg \tuplet 3/2 {d e d} \dblc c4 
        \dbld c8 a \grg a8. G16 \grg a4 \gbirl a

        \dble e4 \grg \tuplet 3/2 {c8 d e} \grA g e \grg c d
        \grg \tuplet 3/2 {c b a} \grg b \grd c \grg a \tuplet 3/2 { b32 a G} a4

        \bar "|."
    }
}


\layout {
    indent = 0.0\cm
    \context { \Score \remove "Bar_number_engraver" }
}

% \midi {}

