\version "2.18.2"

\include "bagpipe.ly"

\header {
    title = "Seonaidh's Tune"
    % subtitle = "Subtitle"
    % poet = "Librettiste"
    meter = "March"
    % piece = "Pièce"
    % composer = "Name"
    arranger = "Arr. MPD"
    % opus = "Opus"
    tagline = ""
}

\score {
    {
        \hideKeySignature
        \time 4/4

        % Part 1

        \thrwd d8. e16 \grg f8. g16 \grA f16 e8. \grg f4
        \thrwd d8. e16 \grg f8. g16 \grA f16 d8. \dble e4
        \grg b16 e8. \dblg g8. f16 \grg e16 d8. \dblc c8. b16
        \grg a8. \grd c16 \grg e8. g16 \gre f4 \gra f4

        \break

        \thrwd d8. e16 \grg f8. g16 \grA f16 e8. \grg f4
        \thrwd d8. e16 \grg f8. g16 \grA f16 d8. \dble e4
        \grg b16 e8. \dblg g8. f16 \grg e16 d8. \dblc c8. b16
        \grg a8. \grd c16 \grg e16 g8. \grA f16 d8. \slurd d4
        \bar "||" \break


        % Part 2

        \grg f16 A8. \grg A8. g16 \grA f16 e8. \grg f4
        \grg f8. g16 \dblA A8. g16 \grA f16 d8. \dble e4
        \grg b16 e8. \dblg g8. f16 \grg e16 d8. \dblc c8. b16
        \grg a8. \grd c16 \grg e16 g8. \dblf f4 \gre f4

        \break

        \grg f16 A8. \grg A8. g16 \grA f16 e8. \grg f4
        \grg f8. g16 \dblA A8. g16 \grA f16 d8. \dble e4
        \grg b16 e8. \dblg g8. f16 \grg e16 d8. \dblc c8. b16
        \grg a8. \grd c16 \grg e16 g8. \grA f16 d8. \slurd d4
        \bar "|."
    }

    \layout {
        indent = 0.0\cm
        \context { \Score \remove "Bar_number_engraver" }
    }
    
    % \midi {}
}