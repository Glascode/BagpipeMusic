\version "2.18.2"

\include "bagpipe.ly"

\header {
    title = "Sine Bhan"
    % subtitle = "Subtitle"
    % poet = "Librettiste"
    meter = "Air"
    % piece = "Piece"
    % composer = "Name"
    arranger = "Trad. arr."
    % opus = "Opus"
    tagline = ""
}

\score {
    {
        \parallelMusic #'(voiceA voiceB) {
            \hideKeySignature
            \time 6/8

            % Melody:
            \grg a4 \grd a8[ \grg b16] \grip c16~ c4 \grace { g32 e } f4 \grg e8 \gra e4.
            \dblc c4 \gre b8[ \grg c16] f16~ f4 \dble e4 c8 \slurb b4.

            \grg a4 \grd a8[ \grg b16] \grip c16~ c4 \grace { g32 e } f4 \grg e8 \gra e4.
            \grg a4 \grd a8[ \grg b16] \grip c16~ c4 \dblb b4 \grG a8 \wbirl a4. |

            \hideKeySignature
            % Harmony:
            \grg a4 \grd a8[ \grg b16] \grip c16~ c4 \grace { g32 e } f4 \grg e8 \gra e4.
            \dblc c4 \gre b8[ \grg c16] f16~ f4 \dble e4 c8 \slurb b4.

            \grg c4 \grd c8[ \grg d16] e16~ e4 \grace { g32 c } d4 \grg c8 \grG c4.
            \grg c4 \grd c8[ \grg d16] e16~ e4 \dbld d4 \grg c8 \grd c4. |

            \break

            % Melody:
            \grg a4 \grd a8[ \grg b16] \grip c16~ c4 \dblA A4 \gre f8 \dble e4.
            \dblA A4 \gre f8 \dble e4. \dblA A4 c8 \slurb b4.

            \grg a4 \grd a8[ \grg b16] \grip c16~ c4 \dblA A4 \gre f8 \dble e4.
            \grg a4 \grd a8[ \grg b16] \grip c16~ c4 \dblb b4 \grG a8 \wbirl a4. |

            % Harmony:
            \grg c4 \grd c8[ \grg d16] e16~ e4 \grg c4 d8 \dblc c4.
            \grg e4 d8 \dblc c4. \grg e4~ e8 \slurd d4.

            \grg c4 \grd c8[ \grg d16] e16~ e4 \grg c4 d8 \dblc c4.
            \grg c4 \grd c8[ \grg d16] e16~ e4 \dbld d4 \grg c8 \grd c4. |
        }

        \new StaffGroup <<
        \new Staff << \voiceA >>
        \new Staff << \voiceB >>
        >>
    }

    \layout {
        indent = 0.0\cm
        \context { \Score \remove "Bar_number_engraver" }
    }
    
    % \midi {}
}