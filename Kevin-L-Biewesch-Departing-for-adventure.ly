\version "2.18.2"

date = #(strftime "%B %d %Y" (localtime (current-time)))
\header {
  title = "Departing for Adventure"
  subtitle = "Original Composition No. 4"
  %instrument = "Piano"
  composer = "Kevin L. Biewesch"
  tagline = \markup { \center-column {
    \with-url #"https://youtube.com/@VinLudens"
    \line { "Engraving with Lilypond" $(lilypond-version) \char ##x2014 "https://youtube.com/@VinLudens" }
    \line { \small \italic {  October 28 2018  } }
  } }
}

#(set-global-staff-size 18.5)

\paper {
  #(set-paper-size "a4")
}

\include "global.ly"
\include "right.ly"
\include "left.ly"
\include "dynamics.ly"


\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Dynamics = "Dynamics" \dynamics
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
  \midi {
    %\tempo 4=80
  }
}
