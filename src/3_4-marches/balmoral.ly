\version "2.18.2"

\include "bagpipe.ly"
\include "../format.ly"

\score {

  {
    \hideKeySignature
    \time 3/4

    \repeat volta 2 {
      \grg a8. b16 \grip c4 \dble e \grg a8. b16 \grip c2
      \dblc b8 \grG a \grip b2 \dblc c16 b a b \grip c2

      \grg a8. b16 \grip c4 \dble e \grg a8. b16 \grip c2
      \dblc b8 \grG a \grip b4 \thrwd d \dblc c8. b16 \grG a2
    }

    \break

    \repeat volta 2 {
      \grg a8. b16 \grip c4 \dble e \grg a8. b16 \grip c2
      \dblc b8 \grG a \grip b2 \dblc c16 b a b \grip c2

      \grg a8. b16 \grip c4 \dble e \grg a8. b16 \grip c2
      \dblc b8 \grG a \grip b4 \thrwd d \dblc c8. b16 \grG a2
    }
  }

  \header {
    title = "Balmoral"
    meter = "March"
    arranger = "Trad. arr."
  }

}
