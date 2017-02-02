\version "2.16.2"



%%%------GLOBAL SETTINGS------%%%
\header {
         title = \markup {\fontsize #1.5
			  \override #'(offset . 5)
			  \override #'(thickness . 3.5) 
			  \underline "XXXXXXXXXXXXXXX"}
	 subtitle = \markup {\fontsize #1.2
			     "Charanga OT"}
	 tagline = "" }

MyTime = { \time 4/4 }
MyKey = { \key c \major }
#(set-global-staff-size 14)
%%%%%%%%%%%%%%%%%%%%%%%%





%----------------------------------------------
%-------------ALTO SAX PART--------------------
%----------------------------------------------
asx = 
     %\transpose c a %%%% UNCOMMENT FOR PRINTED VERSION
     \relative c' {
  \MyKey
  c4( d) e f g a b c( b) a g f e d c(
  d) e f g a b c( b) a g f e d
}

%----------------------------------------------
%-------------TENOR SAX PART-------------------
%----------------------------------------------
tsx = 
    %\transpose c d' %%%% UNCOMMENT FOR PRINTED VERSION
     \relative c' {
  \MyKey
  c4( d) e f g a b c( b) a g f e d c(
  d) e f g a b c( b) a g f e d
}

%----------------------------------------------
%-------------TRUMPET PART---------------------
%----------------------------------------------
tpt =
     % \transpose c d %%%% UNCOMMENT FOR PRINTED VERSION
      \relative c' {
  \MyKey
    c4( d) e f g a b c( b) a g f e d c(
  d) e f g a b c( b) a g f e d
}

%----------------------------------------------
%-------------TROMBONE PART--------------------
%----------------------------------------------
tbn =
      %\transpose c c %%%% UNCOMMENT FOR PRINTED VERSION
      \relative c {
  \MyKey
    c4( d) e f g a b c( b) a g f e d c(
  d) e f g a b c( b) a g f e d
}

%----------------------------------------------
%-------------TUBA PART------------------------
%----------------------------------------------
tuba =
     % \transpose c c %%%% UNCOMMENT FOR PRINTED VERSION
      \relative c, {
  \MyKey
    c4( d) e f g a b c( b) a g f e d c(
  d) e f g a b c( b) a g f e d
}

%----------------------------------------------
%-------------PERC PARTS-----------------------
%-----PERC1=A+B, PERC2=C+D---------------------

percA = \drummode {
  \voiceOne
  hh4 <hh sn> hh <hh sn>
  hh4 <hh sn> hh <hh sn>
  hh4 <hh sn> hh <hh sn>
}
percB = \drummode {
  \voiceTwo
  bd4 s bd s
  bd4 s bd s
  bd4 s bd s
}

percC = \drummode {
  \voiceOne
  hh2 <hh sn> hh <hh sn>
  hh2 <hh sn> hh <hh sn>
  hh2 <hh sn> hh <hh sn>
}
percD = \drummode {
  \voiceTwo
  bd2 s bd s
  bd2 s bd s
  bd2 s bd s
}


%%%------FORMATTING PARTS------%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
saxoAlto = {
  \MyTime
  \set Staff.instrumentName = #"Sx. Alto"
  \set Staff.midiInstrument = #"alto sax"
  \clef treble
  << \asx >>}

saxoTenor = {
  \MyTime
  \set Staff.instrumentName = #"Sx. Tenor"
  \set Staff.midiInstrument = #"tenor sax"
  \clef treble
  << \tsx >>}

trompeta = {
  \MyTime
  \set Staff.instrumentName = \markup { Tpt. Si \flat }
  \set Staff.midiInstrument = #"trumpet"
  \clef treble
  << \tpt >>}

trombon = {
  \MyTime
  \set Staff.instrumentName = #"Trombón"
  \set Staff.midiInstrument = #"trombone"
  \clef bass
  << \tbn >>}

tuba = {
  \MyTime
  \set Staff.instrumentName = #"Tuba"
  \set Staff.midiInstrument = #"tuba"
  \clef bass
  << \tuba >>}

percuOne = {
  \MyTime
  <<
    \set DrumStaff.instrumentName = #"Perc. 1"
    \new DrumVoice \percA
    \new DrumVoice \percB >>}

percuTwo = {
  \MyTime
  <<
    \set DrumStaff.instrumentName = #"Perc. 2"
    \new DrumVoice \percC
    \new DrumVoice \percD >>}

%%%%%---MANAGING OUTPUT---%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
  <<
    \new StaffGroup = "charanga" <<
      \new Staff = "SaxoAlto" \saxoAlto
      \new Staff = "SaxoTenor" \saxoTenor
      \new Staff = "Trompeta" \trompeta
      \new Staff = "Trombon" \trombon
      \new Staff = "Tuba" \tuba
      \new DrumStaff  \percuOne
      \new DrumStaff  \percuTwo
    >>
  >>
  \layout { }
  \midi {\tempo 4 = 120}
}


