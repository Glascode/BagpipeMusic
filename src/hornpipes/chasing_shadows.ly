\version "2.18.2"

\include "bagpipe.ly"
\include "../format.ly"

\score {
  {
    \hideKeySignature
    \time 2/4

    \partial 8 \grg d16 e

    % Part 1 %
    \repeat volta 2 {
      \grg f16 a \gbirl a8 \grg a16 d \grG d a \grg b G \grg G \grd G \gre G g \grA f e
      \grg f16 a \grg d f \grg a d \grg f d \grg e a \gbirl a8 \grg a16 g \grA f e

      \grg f16 a \gbirl a8 \grg a16 d \grG d a \grg b G \grg G \grd G \gre G g \grA f e
      \grg f a \gbirl a8 \grg e16 a \gbirl a8 \grg a16 g \grA f e \thrwd d8 \grg d16 e
    }

    \break

    % Part 2 %
    \repeat volta 2 {
      \grg f16 a \gbirl a8 A16 d \shaked d8 \grA g16 b \grg d g \grA b g \grA f e
      \grg f16 a \grg d f \grg a d \grg f d \grg e a \gbirl a8 \grg a16 g \grA f e
    }
    \alternative {
      { \grg f16 a \gbirl a8 A16 d \shaked d8 \grA g16 b \grg d g \grA b g \grA f e
        \grg f a \gbirl a8 \grg e16 a \gbirl a8 \grg a16 g \grA f e \thrwd d8 \grg d16 e }
      { \grg f16 a \gbirl a8 \grg a16 d \grG d a \grg b G \grg G \grd G \gre G g \grA f e
        \grg f a \gbirl a8 \grg e16 a \gbirl a8 \grg a16 g \grA f e \thrwd d8 \grg d16 e }
    }

    \break

    % Part 3 %
    \repeat volta 2 {
      \grg f16 a \gbirl a8 \grg a16 f \grg f e \grg e a \grd c e \grg a \grd c \dble e a
      \grg f16 a \gbirl a8 \grg f16 a \grg d f \grg e[ a \gbirl a8] \grg a \grg d16 e

      \grg f16 a \gbirl a8 \grg a16 f \grg f e \grg e a \grd c e \grg a \grd c \dble e a
      \grg f a \gbirl a8 \grg e16 a \gbirl a8 \grg a16 g \grA f e \thrwd d8 \grg f16 g
    }

    \break

    % Part 4 %
    A d \grg f A a A f d g b \grg d g b d g e
    \grg f16 a \grg d f \grg a f \grg e d \grg e[ a \gbirl a8] \grg a16 g \grA f g
    
    A d \grg f A a A f d g b \grg d g b d g e
    \grg f a \gbirl a8 \grg e16 a \gbirl a8 \grg a16 g \grA f e \thrwd d8 \grg f16 g

    \break

    A d \grg f A a A f d g b \grg d g b d g e
    \grg f16 a \grg d f \grg a f \grg e d \grg e[ a \gbirl a8] \grg a16 g \grA f e
    
    \grg f16 a \gbirl a8 \grg a16 d \grG d a \grg b G \grg G \grd G \gre G g \grA f e
    \grg f a \gbirl a8 \grg e16 a \gbirl a8 \grg a16 g \grA f e \thrwd d4


    %\repeat volta 2 {
    %   \partial 8 \grg f16 g
    %   A d \grg f A a A f d g b \grg d g b d g e
    %   \grg f16 a \grg d f \grg a f \grg e d \grg e[ a \gbirl a8] \grg a16 g \grA f g
    %}
    %\alternative {
    %   { A d \grg f A a A f d g b \grg d g b d g e
    %     \grg f a \gbirl a8 \grg e16 a \gbirl a8 \grg a16 g \grA f e \thrwd d4 }
    %   { \grg f16 a \gbirl a8 \grg a16 d \grG d a \grg b G \grg G \grd G \gre G g \grA f e
    %     \grg f a \gbirl a8 \grg e16 a \gbirl a8 \grg a16 g \grA f e \thrwd d4 }
    %}
  }

  \header {
    title = "Chasing Shadows"
    meter = "Hornpipe"
    arranger = "Trad. arr."
  }
}
