% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 
% Guitar-Version by: Nathanael Meister (nathanaelmeister@gmx.de)

\version "2.18.2"

\include "predefined-guitar-fretboards.ly"

\header {
  title = "A, a, a, der Winter, der ist da"
  subtitle = " "
  subsubtitle = ""
  poet = "Text: Hoffmann von Fallersleben (1850)"
  meter = ""
  composer = "Melodie: sächsisches Volkslied"
  arranger = ""
  tagline = "Diese Noten sind frei kopierbar für jedermann – erstellt für www.ebersberger-liedersammlung.de"
  %copyright = "Diese Noten sind frei kopierbar für jedermann – erstellt für www.ebersberger-liedersammlung.de"

}

\paper {
  #(set-paper-size "a4")
  bottom-margin = 5\mm
  top-margin = 10\mm

  left-margin = 22\mm
  line-width = 175\mm
}

\layout {
  indent = #0
}

akkorde = \chordmode {
  \germanChords
  f2 d:m a:m s4 bes4 f4 s4 c:7 s4 f2 s2
  s2 bes4 s4 f4 s4 c:7 s4 f4 s4 bes4 s4 f4 s4 c:7 s4
  f2 d:m a:m s4 bes4 f4 s4 c:7 s4 f2
}

melodie = \relative c {
  %\clef treble
  \time 4/4
  \tempo 4 = 110
  \key f\major
  \autoBeamOff
  f2 a c r4 bes a a g g f2 r c'4 c bes bes a a g g \breathe c c bes bes a a g g \breathe
  f2 a2 c r4 bes a a g g f2 r
  \bar "|."
}

text = \lyricmode {
  \set stanza = "1."
  A, a, a, der Win -- ter, der ist da!
  Herbst und Som -- mer sind ver -- gan -- gen,
  Win -- ter, der hat an -- ge -- fan -- gen.
  A, a, a, der Win -- ter, der ist da!
}

\include "global-files/score.ily"

\markup {
  \column {
    \hspace #0.1
    \fill-line {
      \hspace #0.1
      \column {
        \line {
          \bold "  2. "
          \column {
            "E, e, e, er bringt uns Eis und Schnee!"
            "Malt uns gar zum Zeitvertreiben"
            "Blumen an die Fensterscheiben."
            "E, e, e, er bringt uns Eis und Schnee!"
            " "
          }
        }
        \hspace #0.1
        \line {
          \bold "  3. "
          \column {
            "I, i, i, vergiß die Armen nie!"
            "Wenn Du liegst im warmen Kissen,"
            "denk an die, die frieren müssen."
            "I, i, i, vergiß die Armen nie!"
            " "
          }
        }
      }

      \hspace #0.1
      \column {
        \line {
          \bold "  4. "
          \column {
            "O, o, o, wie sind die Kinder froh!"
            "sehen jede Nacht im Traume"
            "sich schon unterm Weihnachtsbaume."
            "O, o, o, wie sind die Kinder froh!"
            " "
          }
        }
        \hspace #0.1
        \line {
          \bold "  5. "
          \column {
            "U, u, u, jetzt weiß ich, was ich tu!"
            "Hol den Schlitten aus dem Keller,"
            "und dann geht es schnell und schneller."
            "U, u, u, jetzt weiß ich, was ich tu!"
            " "
          }
        }
      }

      \hspace #0.1
    }
  }
}

