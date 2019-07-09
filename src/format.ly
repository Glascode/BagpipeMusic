today = #(strftime "%e %B %Y" (localtime (current-time)))

\paper {

  top-margin = 1\cm

  tagline = \markup {
    \line {
      \tiny\concat { "WCPD ·" \today }
    }
  }

  scoreTitleMarkup = \markup {
    \fill-line {
      \column {
        \large \bold \fromproperty #'header:title
        \bold \fromproperty #'header:subtitle
      }
      \fromproperty #'header:meter
      \column {
        \fromproperty #'header:composer
        \italic \fromproperty #'header:arranger
        \tiny \fromproperty #'header:date
      }
    }
  }

  markup-system-spacing #'basic-distance = #10

}
