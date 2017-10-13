\version "2.18.2"

\include "bagpipe.ly"

\header {
  title = "42nd Highlanders"
  meter = "March"
  arranger = "Trad. arr."
}

\score {
	{
		\hideKeySignature
		\time 2/4
		\partial 8 e8

		\repeat volta 2 {
			\grg a4 \taor a8. b16 \dblc c8 \gre b \dblc c e
			\grg a4 \taor a8. b16 \dblc c8 e \dblb b e

			\grg a4 \taor a8. b16 \dblc c8 \gre b \dblc c e
			\grg f8 A \hdble e A \hdblc c A \hdblc c b
		}

		\break

		\repeat volta 2 {
			\dblc c8 e \gra e \grg f16. g32 A8 e \dblf f e
			\dblc c8 e \gra e \grg f16. g32 A8 c \dblb b4
			\break
			\dblc c8 e \gra e \grg f16. g32 A8 e \dblf f e
		}
		\alternative {
			{
				\grg f8 A \hdble e A \hdblc c A \hdblc c b
			}
			{
				\grg f8 A \hdble e8. d16 \hdblc c8 \gre a \wbirl a4
			}
		}
		\bar "|."
	}

	\layout {
		indent = 0.0\cm
		\context { \Score \remove "Bar_number_engraver" }
	}
}