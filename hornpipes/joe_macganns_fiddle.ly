\version "2.18.2"

\include "bagpipe.ly"

\header {
    title = "Joe MacGann's Fiddle"
    meter = "Slow Hornpipe"
    arranger = "D.R. MacLennan"
}

\score {
    {
        \hideKeySignature
        \time 4/4

        % PART 1

        \partial 4 f4
        \repeat volta 2 {
            \grg a8.[ b16 \grg d8. e16] \grg f8.[ e16 \grg d8. c16]
            \grg b8.[ d16 \grA g8. b16] \grG a4 \dbld d8. c16

            \grg b8.[ d16 \grA f8. b16] \grg a8.[ d16 \grg f16 A8.]
            \grf g8.[ f16 \dble e8. d16] \grg c16 e8. \dblA A4

            \break

            \grg a8.[ b16 \grg d8. e16] \grg f8.[ e16 \grg d8. c16]
            \grg b8.[ d16 \grA g8. b16] \grG a4 \dbld d8. c16

            \grg b8.[ e16 \grA g8. e16] \grg f16[ A8. \hdblf f8. d16]
            \dble e4 d4 \slurd d4
        }
        
        \break

        % PART 2

        \partial 4 \dblg g4
        \repeat volta 2 {
            \grA f8.[ g16 A8. g16] \grA f8.[ e16 \grg d8. c16]
            \grg b16[ d8. \grg b16 g8.] \grA f8.[ d16 \grg a8. d16]

            \grg b8.[ d16 \grA f8. b16] \grg a8.[ d16 \grg f16 A8.]
            \grf g8.[ f16 \dble e8. d16] \grg c16 e8. \dblA A4

            \break

            f8.[ g16 A8. g16] \grA f8.[ e16 \grg d8. c16]
            \grg b16[ d8. \grg b16 g8.] \grA f8.[ d16 \grg a8. d16]

            \grg b8.[ e16 \grA g8. e16] \grg f16[ A8. \hdblf f8. d16]
            \dble e4 d4 \slurd d4
        }

        \break

        % PART 3

        \partial 4 \dblA A4
        \repeat volta 2 {
            a8.[ d16 \grg f8. d16] \grg a8.[ e16 \grA g8. e16]
            \grg f8.[ d16 A8. f16] e8.[ c16 A8. c16]  % BUG ENTRE LE f16 ET LE e6

            \grg b8.[ d16 \grA f8. b16] \grg a8.[ d16 \grg f16 A8.]
            \grf g8.[ f16 \dble e8. d16] \grg c16 e8. \dblA A4


            %a8.[ d16 \grg f8. d16] \grg a8.[ e16 \grA g8. e16]
            %\grg f8.[ d16 A8. f16] \dble e8.[ c16 A8. c16]

            %\grg b8.[ d16 \grA f8. b16] \grg a8.[ d16 \grg f16 A8.]
            %\grf g8.[ f16 \dble e8. d16] \grg c16 e8. \dblA A4


            \break

            a8.[ d16 \grg f8. d16] \grg a8.[ e16 \grA g8. e16]
            \grg f8.[ d16 A8. f16] \grg e8.[ c16 A8. c16]

            \grg b8.[ e16 \grA g8. e16] \grg f16 A8. \hdblf f8. d16
            \dble e4 d4 \slurd d4
        }
    }

    \layout {
        indent = 0.0\cm
        \context { \Score \remove "Bar_number_engraver" }
    }
    
    % \midi {}
}