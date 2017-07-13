\score {
  <<
    \new ChordNames
    \chordmode {
      \akkorde
    }
    { \set chordChanges = ##t }
    \new FretBoards {
      { \set chordChanges = ##t }
      \chordmode {
        \set predefinedDiagramTable = #default-fret-table
        \akkorde
      }
    }
    \new Staff {
      \relative c {
        \clef "treble_8"
        \melodie
      }
    }
    \addlyrics {
      \lyricmode {
        \tiny
        \text
      }
    }
    \new TabStaff = "tab" {
      \relative c {
        \clef moderntab
        \melodie
      }
    }
  >>
  \layout {
    \context {
      \Staff
      \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #12
    }
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
