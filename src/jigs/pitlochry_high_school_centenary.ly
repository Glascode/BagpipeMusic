\version "2.18.2"

\include "bagpipe.ly"
\include "../format.ly"

\score {
  \header {
    title = "The Pitlochry High School Centenary"
    meter = "Jig"
    composer = "Gordon Duncan"
  }

  {
    \hideKeySignature
    \time 6/8

    % Part 1
    \repeat volta 2 {
      \slurd d4 e8 \grg f e d g b \grG b \grg b a b
      \slurd d4 e8 \grg f e d g b \grG b \grg c d e

      \slurd d4 e8 \grg f e d g b \grG b \grg b a b
      \grg a8 \grd c a \grg d a e \grg a e \gra e \grg e d c
    }

    \break

    % Part 2
    \repeat volta 2 {
      \slurd d4 A8 \grg A g f g \grA g \grf g \grA g f e
      \slurd d4 A8 \grg A g f \grg e c \gre a \grg a \grd c e

      \slurd d4 A8 \grg A g f g \grA g \grf g \grA g16 \grf g8. f8
      e8 \grg e \gra e \grg e f d \grg e c \gre a \grg a \grd c e
    }

    \break

    % Part 3
    \repeat volta 2 {
      \grg d8 a \grg e a \grg f a \grA g a \grg f a \grg e a
      \grg d8 a \grg e a \grg f a \grA g b \gra b \grg c d e

      \grg d8 a \grg e a \grg f a \grA g a \grg f a \grg e a
      \grg e8 A \grg A e \grg e \gra e g A \grg A \grg A g e
    }

    \break

    % Part 4
    \repeat volta 2 {
      \time 9/8
      \grg a8 d A \grg A a d g \grA g \grf g
      \time 12/8
      a8 d f \grg f a d e \grg e \gra e \grg c d e

      \time 6/8
      \grg a8 d A \grg A a d g \grA g \grf g \grA g16 \grf g8. f8
      e8 \grg e \gra e \grg e f d \grg e c \gre a \grg a \grd c e
    }
  }
  
  % \midi {}
}
