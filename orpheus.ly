\version "2.18.2" global = { \key a \minor \time 2/4 } sopranoMusic =
\relative c'' { \clef "treble"
  c4. b8 | c4 b4 | a4. b8 | gis2 |
  b4. c8 | d4 e4 | e4. f8 | b,2 |
  e4. d8 | c4 c16( d16 e8) | c4. b8 | c2 |
  \repeat volta 2 {
  e4. e8 | d4 d4 | f4. f8 | e2 |
  e4. e8 | d4 e4 | d4. e8 | b2 |
  cis4. e8 | f8 e8 d8 c8 | b4. a8 | a2 | 
 }
}

sopranoWordsOne = \lyricmode {
 O -- rpheus | with his | lute made | trees. |
 And the mou -- ntain tops that freeze, |
 Bow them -- selves when he did sing: |
 To his mu -- sic plants and flowers |
 E -- ver sprung; as sun and showers |
 There had made _ a _ la -- sting spring. }

sopranoWordsTwo = \lyricmode {
 Ev -- ery thing that heard him play, |
 Even the bil -- lows of the sea, |
 Hung their heads, and then lay by. |
 In sweet mu -- sic is such art, |
 Kil -- ling care and grief of heart |
 Fall a -- sleep, _ or _ hea -- ring, die.
}

altoMusic = \relative a' { \clef "treble"
  a4. gis8 | a4 g4 | f4. g8 | e2 |
e4. gis8 | a4 b4 | c4. d8 | gis,2 |
c4. b8 | a4 g4 | f4. g8 | e2 |
\repeat volta 2 {
  c'4. c8 | b4 b4 | d4. d8 | cis2 |
  c4. c8 | b4 c4 | a4. b8 | gis2 |
  e4. cis'8 | d4 b4 | gis4. gis8 | a2 |
}
}

altoWordsOne = \lyricmode {
 O -- rpheus | with his | lute made | trees. |
 And the mou -- ntain tops that freeze, |
 Bow them -- selves when he did sing: |
 To his mu -- sic plants and flowers |
 E -- ver sprung; as sun and showers |
 There had made a la -- sting spring. }

altoWordsTwo = \lyricmode {
 Ev -- ery thing that heard him play, |
 Even the bil -- lows of the sea, |
 Hung their heads, and then lay by. |
 In sweet mu -- sic is such art, |
 Kil -- ling care and grief of heart |
 Fall a -- sleep, or hea -- ring, die.
}

bassMusic = \relative c' { \clef "bass"

a4. a8 | a4 c,4 | d4. d8 | e2 |
e4. e8 | fis4  gis4    | a4.  d,8   | e2 |
e4. e8 | f4  e4   | d4. d8 | c2 |

\repeat volta 2 {
 c8 d8 e8 f8 | g4 g4 | d8 e8 f8 g8 | a2 |
a4. b16 c16 | gis4 g4 | fis4 f4 | e2 |
a4. a8 | d,4 d4 | e4. e8 | a,2 |
}

}


bassWordsOne = \lyricmode {
 O -- rpheus | with his | lute made | trees. |
 And the mou -- ntain tops that freeze, |
 Bow them -- selves when he did sing: |
 To _ his _ mu -- sic plants _ and _ flowers |
 E -- ver _ sprung; as sun and showers |
 There had made a la -- sting spring. }
bassWordsTwo = \lyricmode {
 E -- very thing that heard him play, |
 Even the bil -- lows of the sea, |
 Hung their heads, and then lay by. |
 In _ sweet _ mu -- sic is _ such _ art, |
 Kil -- ling _ care and grief of heart |
 Fall a -- sleep, or hear -- ing, die.
}

\header {
  title = "Orpheus and His Lute"
  composer = "Matthew Locke"
  poet = "William Shakespeare"
  arranger = "English Ayres"
}

\layout {
  \context {
    \Score
    \override StaffGrouper.staff-staff-spacing.padding = #0
    \override StaffGrouper.staff-staff-spacing.basic-distance = #1
  }
}

\paper {

  system-system-spacing =
    #'((basic-distance . 20) 
       (minimum-distance . 16)
       (padding . 1)
       (stretchability . 60)) 
}

\score {

\new ChoirStaff \with {
    \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #20
  }
  <<
  \new Staff = "sopranos" <<
    \set Staff.instrumentName = #"Soprano"
    \new Voice = "sopranos" {
      \global
      \sopranoMusic
    }
  >>
  \new Lyrics \lyricsto "sopranos" {
    \sopranoWordsOne
  }
  \new Lyrics \lyricsto "sopranos" {
    \sopranoWordsTwo
  }
  \new Staff = "altos" <<
    \set Staff.instrumentName = #"Alto"
    \new Voice = "altos" {
      \global
      \altoMusic
    }
  >>
  \new Lyrics \lyricsto "altos" {
    \altoWordsOne
  }
  \new Lyrics \lyricsto "altos" {
    \altoWordsTwo
  }
  \new Staff = "basses" <<
    \set Staff.instrumentName = #"Bass"
    \new Voice = "basses" {
      \global
      \bassMusic
    }
  >>
  \new Lyrics \lyricsto "basses" {
    \bassWordsOne
  }
  \new Lyrics \lyricsto "basses" {
    \bassWordsTwo
  }
>>  % end ChoirStaff
  \layout { }
  \midi {}
}