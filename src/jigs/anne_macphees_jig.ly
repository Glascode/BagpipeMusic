\version "2.18.2"

\include "bagpipe.ly"

\header {
    title = "Cathy Anne MacPhee's Jig"
    meter = "Jig"
    % composer = "Adam Quinn"
    arranger = "Fred Morrison"
    tagline = ""
}

\score {
    {
        \hideKeySignature
        \time 9/8

        \repeat volta 2 {
            \thrwd d4 \gre b8 \thrwd d4 e8 \dblc c4 e8 \slurb b4 f8 \dblf f8 e4 \grg f8 b8 \grG b8
            \thrwd d4 \grg b8 \thrwd d4 e8 \dblc c4 e8 \slurb b4 f8 \dblf f8 e4 \grg f8 b8 \grG b8

            \thrwd d4 \grg b8 \thrwd d4 e8 \dblc c4 e8 \slurb b4 f8 \dblf f8 e4 \grg f8 b8 \grG b8
            \thrwd d4 \grg b8 \thrwd d4 e8 \dblc c4 e8 \slurb b4 f8 \dblf f8 e4 \grg f8 b8 \grG b8
        }
    }

    \layout {
        indent = 0.0\cm
        \context { \Score \remove "Bar_number_engraver" }
    }
    
    % \midi {}
}