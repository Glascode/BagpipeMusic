\version "2.18.2"

\include "bagpipe.ly"

\header {
    title = "Sri Dasmesh March"
    % subtitle = "Subtitle"
    % poet = "Librettiste"
    meter = "March"
    % piece = "Piece"
    composer = "Sri Dasmesh Pipe Band"
    arranger = "Trad. arr."
    % opus = "Opus"
    tagline = ""
}

\score {
    {
        \parallelMusic #'(voiceA voiceB) {
            \hideKeySignature
            \time 4/4

            % Melody
            \grg a8 e8 \gra e4. \grg d16 e16 f8 e16 d16 \grg e8 a8 \wbirl a2.
            \grg a8 e8 \gra e4. \grg d16 e16 f8 e16 d16 \grg e8 A8 \grg A2. |

            \hideKeySignature
            % Harmony
            \grg a8 c8 \grG c4. \grg b16 c16 d8 c16 b16 \grg c8 \grG c8 \grg c2.
            \grg e8 c8 \grG c4. \grg b16 c16 d8 c16 b16 \grg c8 e8 \dble e8 c8~ c2 |

            \break

            % Melody
            \grf g2~ g8 A16 g16 \grA f8 g16 f16 \grg e8 a8 \wbirl a2.
            \grg G4. a8 \dblg g8 \grA f4 G8 \grg a2~ a2 |

            % Harmony
            \grf d2~ d8 e16 d16 \grA c8 e16 d16 \grg c8 \grG c8 \grg c2.
            \grg G4. a8 \dblg g8 \grA f4 G8 \grg a2~ a2 |
        }

        \new StaffGroup <<
            \new Staff << \voiceA >>
            \new Staff << \voiceB >>
        >>
    }

    \layout {
        indent = 0.0\cm
        \context {
            \Score
            \remove "Bar_number_engraver"
        }
    }
    
    \midi {}
}