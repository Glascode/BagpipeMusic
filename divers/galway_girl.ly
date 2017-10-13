\version "2.18.2"

\include "bagpipe.ly"

\layout {
  indent = 0.0\cm
  \context { \Score \remove "Bar_number_engraver" }
}

\header {
  title = "Galway Girl"
  meter = "Hornpipe"
  arranger = "Lincoln Hilton & Xavier Boderiou"
}

{
  \hideKeySignature
  \time 2/4
  \partial 16 b16

  % FIRST PART

  \dblA A8 f \grg f16 \gre f16 \grg d f \grg e [d \shaked d8] \thrwf f \grg d16 f
  \grg e8 \gra e8 \dble e16 d \grg e f \grg e [d \shaked d8] \grg d16~ d \grg e f

  A16 [f \dble e d] A [f \dble e d] A [d \shaked d8] \thrwf f16~ f \grg d f
  \grg e16 [d \shaked d8] \dble e16 d \grg f e \thrwd d8. f16 \grg e d \grg b a


  \repeat volta 2 {
    % SECOND PART

    \thrwd d8 \grc d \grg d \gre b16 a \grg d \gre d \grc d \grg d~ d a \grg d c
    \grg c [a \shakec c8] \grg c16 [a \shakec c8] \grg c16 d \grg d \grc d \grg d e \grg e \gra e

    f16 \grg f \gre f \grg f~ f e \grg e f A [\hdblf f e \grg f~] f e \grg e \gra e
    \dble e d \grG d \grg d c [a \dble e c] a [\dbld d c a] \dble e [a \dbld d c]


    \grg d8 \grc d \grg d \gre b16 a \grg d \gre d \grc d \grg d~ d a \grg d c
    \grg c [a \shakec c8] \grg c16 [a \shakec c8] \grg c16 d \grg d \grc d \grg d e \grg e \gra e

    f16 \grg f \gre f \grg f~ f e \grg e f A [\hdblf f e \grg f~] f e \grg e \gra e
    \dble e d \grG d \grg d c [a \dbld d c] \dbld d [c a \grg a] b d \grg e f
  

    % THIRD PART (REPRISE OF THE FIRST PART)

    \dblA A8 f \grg f16 \gre f16 \grg d f \grg e [d \shaked d8] \thrwf f \grg d16 f
    \grg e8 \gra e8 \dble e16 d \grg e f \grg e [d \shaked d8] \grg d16~ d \grg e f

    A16 [f \dble e d] A [f \dble e d] A [d \shaked d8] \thrwf f16~ f \grg d f
    \grg e16 [d \shaked d8] \dble e16 d \grg f e \thrwd d8. f16 \grg e d \grg b a


    % FOURTH PART

    \thrwd d4~ d8 \grg d~ d \grg e16 f \dble e d \grg b a
    \shakeb b8 \grg a16 b \shaked d8 \grg e16 f \dble e d \grg e f \dblA A8 f16 A

    b \grG b \grg d b \dblb b a \grg f A \grg A [e \thrwf f~ f] \dble e d \grg b a
    \grg a [b \dbld d b] \grg a [f \dble e d]
  }
  \alternative {
    {
      \gra b2
    }
    {
      \gra b4~ b16 [f \dble e d]
    }
  }

  \break

  % FIFTH PART

  \gra b4 \grg a16 b \grg d8~ d \grg e16 f \dble e d \grg b a
  \shakeb b8 \grg a16 b \shaked d8 \grg e16 f \dble e d \grg e f \dblA A8 f16 A

  \tuplet 3/2 { b16 d f } A16 f \dble e d \grg f e \thrwd d8. f16 \dble e [d \grg b a]
  \grg a [b \dbld d b] \grg a [f \dble e d] \gra b4~ b8 [\dble e16 d]


  \repeat volta 2 {
    \gra b4 \grg a16 b \grg d8~ d \grg e16 f \dble e d \grg b a
    \shakeb b8 \grg a16 b \shaked d8 \grg e16 f \dble e d \grg e f \dblA A8 d16 c

    \tuplet 3/2 { b16 d f } A16 f \dble e d \grg f e \grc d e \grg f d \grg e d \grg b a
    \grg a [b \grg d f] \dble e [d \grg b a]  % \grg b4~ b8 [\dble e16 d]
  }
  \alternative {
    {
      \grg b4~ b8 [\dble e16 d]
    }
    {
      \grg b2
    }
  }
  
  \bar "|."
}