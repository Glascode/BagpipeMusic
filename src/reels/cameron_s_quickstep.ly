\version "2.18.2"

\include "bagpipe.ly"
\include "../format.ly"

\score {

  {
    \hideKeySignature
    \time 2/4

    \partial 8 A8

    % Part 1
    \repeat volta 2 {
        \birl a8[ \dble e16. c32] \birl a8[ \dble e16 a16] \dblf f8 \grg e \gra e[ \dblA A]
        \birl a8[ \dble e16. c32] \birl a8[ \dble e16 a16] \dblc c8 \grg b \taor b[ \dblA A]

        \break

        \birl a8[ \dble e16. c32] \birl a8[ \dble e16 a16] \dblf f8 \grg e \gra e[ \dblA A]
        f32[ A16. \hdble e A32] \hdblc c[ A16. \hdblb b32 A16.] \hdblc c8 \gre a \wbirl a[ \dblA A]
    }

    \break

    % Part 2
    \repeat volta 2 {
      \hdblf f8 \grg e32 A16. \hdblc c8 \gre a16 A16 \hdblc c8 \gre a \wbirl a[ \dblA A]
      \hdblf f8 \grg e32 A16. \hdblc c8 \gre a16 A16 \hdblc c8 \grg b \taor b[ \dblA A]

      \hdblf f8 \grg e32 A16. \hdblc c8 \gre a16 A16 \hdble e16. c32 A16. c32 \dble e8[ \dblA A]
      f32[ A16. \hdble e A32] \hdblc c[ A16. \hdblb b32 A16.] \hdblc c8 \gre a \wbirl a[ \dblA A]
    }

    \break

    % Part 3
    \repeat volta 2 {
        \birl a8[ \dble e16. c32] \birl a16. e32 \grg c \grd a16. \dblf f8 \grg e \gra e[ \dblA A]
        \birl a8[ \dble e16. c32] \birl a16. e32 \grg c \grd a16. \dblc c8 \grg b \taor b[ \dblA A]

        \break

        \birl a8[ \dble e16. c32] \birl a16. e32 \grg c \grd a16. \dblf f8 \grg e \gra e[ \dblA A]

        f32[ A16. \hdble e A32] \hdblc c[ A16. \hdblb b32 A16.] \hdblc c8 \gre a \wbirl a[ \dblA A]
    }

    \break

    % Part 4
    f32 A16. e32 A16. \hdblc c32[ A16. \hdblb b32 A16.] \hdblc c32[ A16. \hdblb b32 A16.] \hdblc c32[  A16. \hdblb b32 A16.]
    f32 A16. e32 A16. \hdblc c32[ A16. \hdblb b32 A16.] \hdblc c8 \grg b \taor b[ \dblA A]

    f32 A16. e32 A16. \hdblc c32[ A16. \hdblb b32 A16.] \hdble e16. c32 A16. c32 \dble e8[ \dblA A]
    f32[ A16. \hdble e A32] \hdblc c[ A16. \hdblb b32 A16.] \hdblc c8 \gre a \wbirl a A16. g32

    \break

    \grA f32 A16. e32 A16. \hdblc c32[ A16. \hdblb b32 A16.] \hdbla a32[ A16. \hdblb b32 A16.] \hdblc c32[  A16. \hdbla a32 A16.]
    f32 A16. e32 A16. \hdblc c32[ A16. \hdblb b32 A16.] \hdblc c8 \grg b \grip A ~A16. g32

    \grA f32 A16. e32 A16. \hdblc c32[ A16. \hdblb b32 A16.] a16. b32 \grip c16. d32 \dble e8 \dblA A
    f32[ A16. \hdble e A32] \hdblc c[ A16. \hdblb b32 A16.] \hdblc c8 \gre a \wbirl a4
  }
  
  \header {
    title = "Cameron's Quickstep"
    meter = "Reel"
    arranger = "Trad. arr. Gordon Walker"
  }

  % \midi {}

}