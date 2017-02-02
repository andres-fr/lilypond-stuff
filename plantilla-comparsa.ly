\version "2.18.2"

%%%------GLOBAL SETTINGS------%%%


%% basic control structure
% ifThenElse = #(define-music-function (parser location bool thn els)(boolean? ly:music? ly:music?) (if bool thn els))

%%
\header {
         title = \markup {\fontsize #1.5
			  \override #'(offset . 5)
			  \override #'(thickness . 3.5) 
			  \underline "POPURRI GREASE"}
	 subtitle = \markup {\fontsize #1.2
			     "COMPARSA OS SOLFAMIDAS"}
	 tagline = "" }


%%% TEST
% c4( d) e f g a b c( b) a g f e d c(d) e f g a b c( b) a g f e d


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% GLOBAL VARIABLES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
global = {
  \key c \minor
  \time 4/4
}
MyTempo = 120
%displayInConcertPitch = ##f
 
scoreAAltoSaxI =
\transpose c a  %%%% COMMENT FOR CONCERT PITCH
\relative c'
{
  \global
  \transposition es % this transposes midi a minor sixth down
  
  % Music follows here.
  
}

scoreAAltoSaxII =
\transpose c a %%%% COMMENT FOR CONCERT PITCH
\relative c'
{
  \global
  \transposition es % this transposes midi a minor sixth down
  
  % Music follows here.
  
}
  

scoreATenorSax =
\transpose c d' %%%% COMMENT FOR CONCERT PITCH
\relative c'
{
  \global
  \transposition bes, % this transposes midi a major second down
  
  % Music follows here.
  
}

scoreATrumpetBbI =
\transpose c d  %%%% COMMENT FOR CONCERT PITCH
\relative c'
{
  \global
  \transposition bes % this transposes midi a major second down
  
  % Music follows here.
}

scoreATrumpetBbII =
\transpose c d  %%%% COMMENT FOR CONCERT PITCH
\relative c'
{
  \global
  \transposition bes % this transposes midi a major second down
  
  % Music follows here.
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ritmoUno = {c4 g c8. g16 g8 bes}


scoreATromboneI =
\relative c
{\global
  % Music follows here.
  \ritmoUno \ritmoUno
}

scoreATromboneII =
\relative c
{\global
  % Music follows here.
  \ritmoUno \ritmoUno
}

scoreATuba =
\relative c
{\global
  % Music follows here.
  \ritmoUno \ritmoUno
}

scoreADrumDrumsI = \drummode {
  \global
  % Drums follow here.
  
}

scoreADrumDrumsII = \drummode {
  \global
  % Drums follow here.
  
}

scoreADrumDrumsIII = \drummode {
  \global
  % Drums follow here.
  
}

scoreADrumDrumsIV = \drummode {
  \global
  % Drums follow here.
  
}

scoreAAltoSaxIPart = \new Staff \with {
  instrumentName = "Alto Sax I"
  midiInstrument = "alto sax"
} \scoreAAltoSaxI

scoreAAltoSaxIIPart = \new Staff \with {
  instrumentName = "Alto Sax II"
  midiInstrument = "alto sax"
} \scoreAAltoSaxII

scoreATenorSaxPart = \new Staff \with {
  instrumentName = "Tenor Sax"
  midiInstrument = "tenor sax"
} \scoreATenorSax

scoreATrumpetBbIPart = \new Staff \with {
  instrumentName = "Trumpet in Bb I"
  midiInstrument = "trumpet"
} \scoreATrumpetBbI

scoreATrumpetBbIIPart = \new Staff \with {
  instrumentName = "Trumpet in Bb II"
  midiInstrument = "trumpet"
} \scoreATrumpetBbII

scoreATromboneIPart = \new Staff \with {
  instrumentName = "Trombone I"
  midiInstrument = "trombone"
} { \clef bass \scoreATromboneI }

scoreATromboneIIPart = \new Staff \with {
  instrumentName = "Trombone II"
  midiInstrument = "trombone"
} { \clef bass \scoreATromboneII }

scoreATubaPart = \new Staff \with {
  instrumentName = "Tuba"
  midiInstrument = "tuba"
} { \clef bass \scoreATuba }

scoreADrumsIPart = \new DrumStaff \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Drums I"
} \scoreADrumDrumsI

scoreADrumsIIPart = \new DrumStaff \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Drums II"
} \scoreADrumDrumsII

scoreADrumsIIIPart = \new DrumStaff \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Drums III"
} \scoreADrumDrumsIII

scoreADrumsIVPart = \new DrumStaff \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Drums IV"
} \scoreADrumDrumsIV

\score {
  <<
    \scoreAAltoSaxIPart
    \scoreAAltoSaxIIPart
    \scoreATenorSaxPart
    \scoreATrumpetBbIPart
    \scoreATrumpetBbIIPart
    \scoreATromboneIPart
    \scoreATromboneIIPart
    \scoreATubaPart
    \scoreADrumsIPart
    \scoreADrumsIIPart
    \scoreADrumsIIIPart
    \scoreADrumsIVPart
  >>
  \layout { }
  \midi {
    \tempo 4= \MyTempo
  }
}
