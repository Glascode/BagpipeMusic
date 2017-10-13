\version "2.18.2"

\include "bagpipe.ly"

#(set-default-paper-size "a6" 'landscape)

\header {
	title = "Plinn 1"
	subtitle = "Réb et Solb"
	meter = "Plinn"
	arranger = "Trad. arr."
}

\score {
	{
		\hideKeySignature
		\time 2/4

		\repeat volta 2 {
			\grg d8 e \gra e d \grg c d \grg \tuplet 3/2 {c b a}
			\grg d e \gra e d \dblc c4 \gra c
		}

		\break

		\repeat volta 2 {
			\grg d8 e \gra e c \grg f e \dbld d4
			\grg \tuplet 3/2 {d8 e d} \gre c b \grg a4 \wbirl a
		}
	}

	\layout {
		indent = 0.0\cm
		\context { \Score \remove "Bar_number_engraver" }
	}
	
	% \midi {}
}
