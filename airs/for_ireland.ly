\version "2.18.2"

\include "bagpipe.ly"

\header {
	title = "For Ireland I Will Not Tell Her Name"
	meter = "Air"
	arranger = "Trad."
}

\score {
	{
		\hideKeySignature
		\override Glissando.style = #'trill

		\override Glissando.minimum-length = #5
		\override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods

		\time 6/8
		\partial 4 \grg d8 e 

		f16[ \grg a8. \wbirl a8] \grd b16 d8. \grg e8 \thrwf f4. ~f8[ d \dble e]
		f16[ \grg a8. \wbirl a8] \grd b16[ d8 e16 \thrwf f32 d16.] \dble e4. ~e8[ \grg d8 \dble e]

		\break


		f16[ \grg a8. \wbirl a8] \grd b16[ \dblg g8. e8] \thrwf f4. \grg e16[ d8. \dble e8]
		\grg d16 b8. \grG a8 \grd b16[ d8. \dble e8] \thrwd d4. ~d8 \grg d e

		\break


		\grg f8.[ \dble e16 d8] \wslurd d8. \grg e16 f8 \dblg g4. ~g8 \glissando A \grf g
		\grA f8.[ \dble e16 d8] \wslurd d8. e16 \grg f32 d16. \dble e4. ~e8[ \dblA A \grf g]

		\break


		f16[ \grg a8. \wbirl a8] \grd b16[ g8. \dblA A8] \gre f4. \dble e16[ d8. \grg e8]
		\dbld d16 b8. \grG a8 \grd b16[ d8. \dble e8] \thrwd d4. ~d8

		\bar "|."

	}

	\layout {
		indent = 0.0\cm
		\context { \Score \remove "Bar_number_engraver" }
	}
	
	% \midi {}
}

