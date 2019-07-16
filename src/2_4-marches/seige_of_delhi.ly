\version "2.18.2"

\include "bagpipe.ly"
\include "../format.ly"

endTwo = { c8 A16. e32 \grg f16. [ d32 \dble e16. d32 ] }

\score {
  {
    \hideKeySignature
    \time 2/4

    \partial 8 \grg a16. b32

    % Part 1
    \repeat volta 2 {
      \grip c4 \dblc c8 e \dble e16. a32 \grg f16. a32 \dble e8 \grg a16. b32
      \grip c4 \dblc c8 e \grg f32 [ A16. \dble e16. c32 ] \dblb b8 \grg a16. b32

      \grip c4 \dblc c8 e \dble e16. a32 \grg f16. a32 \dble e8 \grg a16. b32
      \grip \endTwo \dblc c8 \gre a \wbirl a \grg a16. b32
    }

    \break

    % Part 2
    \repeat volta 2 {
      \grip c4 \dblc c8 e \thrwd d4 \wslurd d8 f
      \dblc c4 \grip c8 e \grg f32 [ A16. \dble e16. c32 ] \dblb b8 \grg a16. b32
      \break
      \grip c4 \dblc c8 e \thrwd d4 \wslurd d8 f
      \dblc \endTwo
    }
    \alternative {
      { \dblc c8 \gre a \wbirl a \grg a16. b32 }
      { \dblc c8 \gre a \wbirl a \dblg g8 }
    }

    \break

    % Part 3
    \repeat volta 2 {
      A8 [ \grip A16. f32 ] \grg e8 [ \grip e16. c32 ] \grg a8 [ \taor a16. c32 ] \dble e8 \grg a16. b32
      \grip c4 \dblc c8 e \grg f32 [ A16. \dble e16. c32 ] \dblb b8 \dblg g8
      \break
      A8 [ \grip A16. f32 ] \grg e8 [ \grip e16. c32 ] \grg a8 [ \taor a16. c32 ] \dble e8 [ \grg a16. b32 ]
      \grip \endTwo
    }
    \alternative {
      { \dblc c8 \gre a \wbirl a \dblg g8 }
      { \dblc c8 \gre a \wbirl a \grg a16. b32 }
    }

    \break

    \repeat volta 2 {
      \grip c4 \dblc c8 e \grf f16. d32 A16. d32 \grf f16. d32 A16. d32
      \dblc c4 \grip c8 e \grg f32 [ A16. \dble e16. c32 ] \dblb b8 \grg a16. b32
      \break
      \grip c4 \dblc c8 e \grf f16. d32 A16. d32 \grf f16. d32 A16. d32
      \dblc \endTwo
    }
    \alternative {
      { \dblc c8 \gre a \wbirl a \grg a16. b32 }
      { \dblc c8 \gre a \wbirl a4 }
    }

  }

  \header {
    title = "The Seige of Delhi"
    meter = "March"
    arranger = "Trad. arr."
  }
  
  % \midi {}
}