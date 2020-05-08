\version "2.18.2"

\include "bagpipe.ly"
\include "../format.ly"

\score {
  {
    \hideKeySignature
    \time 6/8

    % \mark "Annotation"
    % \partial 4
    \repeat volta 2 {
      \grg f8 e d \dble e4 A8 g e d \slurd d4 e8
      \grg f8 e d \dble e4 A8 g e d \grg c d e

      \grg f8 e d \dble e4 A8 g e d \slurd d4 e8
      \grg f16 A8. f8 \grA g e c \grg e d c \thrwd d
    }
  }

  \header {
    title = "The Gold Ring"
    % subtitle = "Subtitle"
    % poet = "Librettiste"
    meter = "Jig"
    % piece = "Piece"
    % composer = "Name"
    arranger = "Trad. arr."
    % opus = "Opus"
  }
  
  % \midi {}
}
