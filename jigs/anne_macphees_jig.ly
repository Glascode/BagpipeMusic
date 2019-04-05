\version "2.18.2"

\include "bagpipe.ly"

\header {
    title = "Cathy Anne MacPhee's Jig"
    meter = "Jig"
    % composer = "Adam Quinn"
    arranger = "Fred Morrison"
}

\score {
    {
        \hideKeySignature
        \time 9/8

        \repeat volta 2 {
            a
        }
    }

    \layout {
        indent = 0.0\cm
        \context { \Score \remove "Bar_number_engraver" }
    }
    
    % \midi {}
}