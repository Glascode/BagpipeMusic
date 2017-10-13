\version "2.18.2"

\include "bagpipe.ly"

\header {
    title = "Seonaidh's Air"
    % subtitle = "Subtitle"
    % poet = "Librettiste"
    meter = "Air"
    piece = "tempo = 65"
    % composer = "Composer"
    arranger = "Trad. arr."
    % opus = "Opus"
    tagline = ""
}

\score {
    {
        \parallelMusic #'(voiceA voiceB) {
            \hideKeySignature
            \time 4/4

            % MELODY:
            \partial 4 \thrwd d8 e
            \grg f4~ f~ f8 a \thrwd d[ e] \dblf f16 e8.~ e4~ e8 b \grg e[ f]
            \dblg g4~ g~ g8 e16 f g8 \gre f \grg f4~ f~ f8 a \thrwd d e |

            \hideKeySignature
            % HARMONY:
            \partial 4 \thrwd d8 e
            \grg f4~ f~ f8 a \thrwd d[ e] \dblf f16 e8.~ e4~ e8 b \grg e[ f]
            \dblg g4~ g~ g8 e16 f g8 \gre f \grg f4~ f~ f8 a \thrwd d e |

            \break

            % MELODY:
            \grg f4~ f~ f8 a \thrwd d[ A] \hdblf f16 e8.~ e4~ e8 b \grg e[ f]
            \dblg g4~ g~ g8 A a[ f] \dble e16 d8.~ d4~ d8 a \thrwd d e |

            % HARMONY
            \grg d4~ d~ d8 f \grg f[ c] \dbld d16 c8.~ c4~ c8 d \grg c[ d]
            \dble e4~ e~ e8 f \grg f[ A] g16 \grA f8.~ f4~ f8 \grg d a[ c] |

            \break


            % MELODY:
            \grg f4~ f~ f8 a \thrwd d[ e] \dblf f16 e8.~ e4~ e8 b \grg e[ f]
            \dblg g4~ g~ g8 e16 f g8 \gre f \grg f4~ f~ f8 a \thrwd d e |

            % HARMONY:
            \grg d4~ d~ d8 f \grg f[ c] \grg b16 c8.~ c4~ c8 d \grg c[ d]
            \grg c4~ c~ c8 \grg c16 d e8 \grc d \grg d4~ d~ d8 f \grg f[ c] |

            \break

            % MELODY:
            \grg f4~ f~ f8 a \thrwd d[ A] \hdblf f16 e8.~ e4~ e8 b \grg e[ f]
            \dblg g4~ g~ g8 A a[ f] \dble e16 d8.~ d4~ d4~ d4 |

            % HARMONY
            \grg d4~ d~ d8 f \grg f[ c] \dbld d16 c8.~ c4~ c8 G \grg c[ d]
            \grg b4~ b~ b8 f \grg f[ A] g16 \grA f8.~ f4~ f4~ f4 |
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

