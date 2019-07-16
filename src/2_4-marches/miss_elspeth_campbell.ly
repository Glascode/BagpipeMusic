\version "2.18.2"

\include "bagpipe.ly"
\include "../format.ly"

\score {
  {
    \hideKeySignature
    \time 2/4

    \partial 8 e16. d32

    \repeat volta 2 {
      \grg c16. e32 \grg a16. \grd c32 \grg a16.[ b32 \grip c16. d32] \dble e16. d32 \grg c32 \grd a16. \dblA A8 e16. f32
      \dblg g8[ \hdble e16. d32] \dblb b8[ \grg a32 \grd G16.] \dble e16.[ d32 \dblb b16. a32] \dblG G8[ \dble e16. d32]

      \grg c16. e32 \grg a16. \grd c32 \grg a16.[ b32 \grip c16. d32] \dble e16. d32 \grg c32 \grd a16. \dblA A8 e16. f32
      \dblg g8[ \hdble e16. d32] \dblb b16. a32 \grg b32 \grd G16. \grg a8[ \taor a] \wbirl a4
    }

  }

  \header {
    title = "Miss Elspeth Campbell"
    meter = "March"
    arranger = "Trad. arr."
  }
  
  % \midi {}
}