\version "2.18.2"

\include "bagpipe.ly"

\layout {
  indent = 0.0\cm
  \context { \Score \remove "Bar_number_engraver" }
}

\header {
    title = "The Last of the Mohicans"
    meter = "March"
    arranger = "Trad. arr."
    tagline = ""
}

{
  \parallelMusic #'(voiceA voiceB) {
    \hideKeySignature
    \time 6/8
    
    % FIRST PART
    \grg b8. \gre b16 \grG b8 \grg f8. e16 d8 \grg e8. d16 c8 \grg d8. c16 \gre a8 |
    \hideKeySignature
    \grg f4. b ~ b ~ b |  % harmony 

    \grg b8. \gre b16 \grG b8 \grg f8. e16 d8 \grg e8. d16 c8 \grg d8. c16 \gre b8 |
    \grg f4. ~ f d ~ d |


    % SECOND PART
    \grg a4 \wbirl a8 \grg c8. \grd b16 \gre c8 \grg e8. c16 \grG c8 \grg c8. \grd b16 \gre c8 |
    \grg e4. ~ e \dblA A ~ A |

    \grg a4 \grd b8 \grg c8. \grd b16 \gre c8 \grg e8. c16 \grG c8 \grg c8. \grd b16 \gre c8 |
    c4. ~ c \grg b16 \grd a8. ~ a8 ~ a8. d16 e8 |


    % THIRD PART
    \thrwd d4 \grG d8 \grg d8. c16 d8 \grg e8. d16 \grG d8 \grg d8. c16 b8 |
    \grg f4. ~ f ~ f ~ f8. e16 d8 |

    \grg c4 \grip c8 \grg c8. \grd b16 \gre c8 \grg e8. c16 \grG c8 \grg c8. b16 \grG a8 |
    \grg e4. ~ e ~ e ~ e8. d16 c8 |


    % FOURTH PART
    \grg b8. \gre b16 \grG b8 \grg b8. \grd a16 \gre b8 \grg d8. c16 \gre b8 \grg c8. \grd  b16 \gre a8 |
    \grg b4. ~ b ~ b ~ b ~ |

    \grg b8. \gre b16 \grG b8 \grg b8. \grd a16 \gre b8 \grg d8. c16 \gre b8 \grg c8. \grd  b16 \gre a8 |
    b4. ~ b ~ b ~ b |
    }

    \new StaffGroup <<
    \new Staff << \voiceA >>
    \new Staff << \voiceB >>
    >>
  \bar "|."
}
