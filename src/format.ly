today = #(strftime "%e %B %Y" (localtime (current-time)))

\paper {

  tagline = \markup {
    \line {
      \concat { "WCPD ·" \today }
    }
  }

  scoreTitleMarkup = \markup {
    \column {
      \fill-line {
        \column {
          \large \bold \fromproperty #'header:title
          \bold \fromproperty #'header:subtitle
        }
        \fromproperty #'header:meter
        \line {
          \fromproperty #'header:composer
          \italic \fromproperty #'header:arranger
          \tiny \fromproperty #'header:date
        }
      }
    }
  }

}
