\version "2.18.2"

%%%------GLOBAL SETTINGS------%%%
% timidity -iA -B2,8 -Os1l -s 44100
% timidity 0AuraLee.mid -Ow -o - | ffmpeg -i - -acodec libmp3lame -ab 64k 0AuraLee1.mp3


% CAMBIOS: 
% Intro summer: mas vueltas, acelerando y añadiendo instrumentos poco a poco. 
% BAJO YOURE THE ONE: simplificar (cambiar tesitura y quitar semicorchea)
% ENLACE sumer->youre: quiza repetir, ir rallentando hasta caer en calderon con redoble y luego 1,2,3,4->ataca?

%% basic control structure
% ifThenElse = #(define-music-function (parser location bool thn els)(boolean? ly:music? ly:music?) (if bool thn els))





%%
\header {
         title = \markup {\fontsize #1.5
			  \override #'(offset . 5)
			  \override #'(thickness . 3.5) 
			  \underline "POPURRI GREASE"}
	 subtitle = \markup {\fontsize #1
			     "COMPARSA OS SOLFAMIDAS"}
	 tagline = "" }


%%% TEST
% c4( d) e f g a b c( b) a g f e d c(d) e f g a b c( b) a g f e d


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% GLOBAL VARIABLES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(set-global-staff-size 16)

\defineBarLine "[" #'("" "[" "")
\defineBarLine "]" #'("]" "" "")


global = {
  \key bes \major
  \time 4/4
}

MidiTempo = 160

tempoSummerNights = 130
tempoGreaseLightning = 165
tempoWeGoTogether = 188
tempoYoureTheOne = 120
 
scoreAAltoSaxI =
\transpose c a % uncomment this for print version
\relative c'' 
{
  \global 
  %\transposition es % this transposes midi a minor sixth down
  {\tempo \markup \italic{comeza lento e acelera} 4 = \tempoSummerNights}
  \set Score.tempoHideNote = ##t
  r1 | r | r | r | r | r | bes4 r8 bes es4 r8 es | f4 r8 f es f4 es8| 
  
  \repeat volta 2 { 
  bes,4 r8 bes es4 r8 es | f4 r8 f es f4 es8|
  r4 d'8 bes es c(c4) | f8 d f f es2 |  bes,4 r8 bes es4 r8 es | \tuplet 3/2 {f4 f f} g2 |
  r4 e'8 c f4 r | e8 c e f(f2)| r4 bes,8 f g4 g8 g | f g f d(d4) d8 bes | es4 f8 g f g f bes,(|bes4) r2. |
  % tell me boy
   bes8 bes r d es es r es | c c r c f f r f | r4 f'8 f g4 g8 g | g4 g8 g f g f d(| 
   % coda
   d8) d-> d4-> r8 es8-> es4-> | r8 f8-> f4->  r8 es8-> es4-> | r8 d-> d4-> r8 es8-> es4-> | r8 f8-> f4->  r8 es8-> es4-> 
  }
  
  {\tempo \markup \italic{acelera} 4 = \tempoGreaseLightning}
  \set Score.tempoHideNote = ##t
  d2 d | e4 e e8 e e e |
  
  %%%%%%%%%%%%%%%% GREASE LIGHTNING
  \key f \major
  \repeat volta 2 { 
  a,1(|a1)|r4 f' es8 f4 f8(|f4) f es8 f(f4) |  
  f d c d8 c | f d4 c8(c2) |r4 f es8 f4 f8(|f4) f es8 f(f4) |  
  r g g r | r f f r | r g g r | f8 f f f f4 d | f4 f, f f | c8 c c c c c c c |
  }
  
  {\tempo \markup \italic{palmas} 4 = \tempoGreaseLightning}
  \set Score.tempoHideNote = ##t
  c'4-> r2. | r d4-> | c4-> r2. | r1 |
  d4-> r2. | r d4-> | c4-> r2. | 
  r2 r8 c d c | g'4 r r8 c, d c | f4 r r8 c d c | g'4 r r8 c, d c | f8 f f f f4 d | 
  
  
  {\tempo \markup \italic{We Go Together} 4 = \tempoWeGoTogether}
  \set Score.tempoHideNote = ##t
  f4 r f r |   f d es f|    
  
  %%%%%%%%%%%%%%%% WE GO TOGETHER
  \key es \major
  g4 g8 g4 g8 f4 | es es8 es4 es8 d4 | c c8 c4 c8 es4 | d4 r2. |
  
  \repeat volta 2 { 
  r4 g, bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 g' g4. f8 | es d es c(c2) | r2 f4 es | d4. es4. f4 | f4. g8(g2)(|g2) r4 bes,-> | aes1-> | bes-> |
  }
  
  
  %parte b
  r4 es es4. c8 | es4 f8 es8(es2) | r4 es es c | es f8 es8(es2) | r4 bes bes bes | c2. bes4 | c g bes2(|bes2)  r|
  r4 es es4. c8 | es4 f8 es8(es2) | r4 es es c | es f8 es8(es2) | f4 f2 f4 | g2 f | bes,4 r bes r | bes bes c d \bar "||"
  
  %repite
  r4 g, bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 g' g4. f8 | es d es c(c2) | r2 f4 es | d4. es4. f4 | f4. g8(g2)(|g2) r4 bes,-> | aes1-> | bes-> |
  
  r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 g' g4. f8 | es d es c(c2) | r2 f4 es | d4. es4. f4 | f4. es8(es2)|f4.-> f-> f4-> | f4.-> es8->(es2) \bar "|."

%{
  \key c \minor
  {\tempo 4 = \tempoYoureTheOne}
  % i got 
  r1 | r2. g,8 bes | c2 r8 ges f es16 f(|f8) es4. r4 g8 bes | c2 r8 c16 c  bes8 aes16 bes(|bes8) g4. r4 g8 bes |
  b4 b2 f8 es16 f(|f8) es4. r8 es16 es es8 c16 es(|es8) c(c4) r g'8 bes | bes4 r r g8 bes | c d16 bes(bes2.) | r4 es16 es 8 es16(es8) d c bes16 c(|c2) r4 g8 bes |
  bes4 r r g8 bes | c d16 bes(bes2.) | r4 es16 es 8 es16(es8) d c bes16 c(|c2) es | es8.-> es-> es8-> r es-> es-> es16 es |
  % chorus
  es es es es r8 es16 es es es es es(es) es es8 | r8 g(g16) f8. es4 r8 es16 es |
  es es es es r8 es16 es es es es es(es) es es8 | r8 g(g16) f8. es4 c16 c8 d16(|d2) r8 d es f | f es16 d(d2) r8 es16 es |
  %repeat
  es es es es r8 es16 es es es es es(es) es es8 | r8 g(g16) f8. es4 r8 es16 es |
  es es es es r8 es16 es es es es es(es) es es8 | r8 g(g16) f8. es4 c16 c8 d16(|d2) r8 d es f | es4 es f8 f f f ||
  %%%
  % Rock
  %%%
  
  bes,4 r2. |
  %}
  
}

scoreAAltoSaxII =
\transpose c a %%%% COMMENT FOR CONCERT PITCH
\relative c''
{
  \global
  %\transposition es % this transposes midi a minor sixth down  
  {\tempo \markup \italic{comeza lento e acelera} 4 = \tempoSummerNights}
  \set Score.tempoHideNote = ##t
  r1 | r | r | r | r | r | f,4 r8 f g4 r8 g | a4 r8 a g a4 g8|
  
  \repeat volta 2 { 
  f4 r8 f g4 r8 g | a4 r8 a g a4 g8|
   r4 f8 d g es(es4) | a8 f a a g2 |  f4 r8 f g4 r8 g | \tuplet 3/2 {a4 a a} b2 |
   r4 g8 e a4 r | g8 e g a(a2)| r4 bes8 f g4 g8 g | f g f d(d4) d8 bes | es4 f8 g f g f bes,(|bes4) r2. |
   % tell me boy
   bes8 bes r d es es r es | c c r c f f r f | bes, r d'8 d es4 es8 es | e4 bes8 bes a bes a f(|
   % coda
   f8) f-> f4-> r8 g8-> g4-> | r8 a8-> a4->  r8 g8-> g4-> | r8 f-> f4-> r8 g8-> g4-> | r8 d8-> d4->  r8 g8-> g4-> 
  }
   {\tempo \markup \italic{acelera} 4 = \tempoGreaseLightning}
  \set Score.tempoHideNote = ##t
  bes2 bes | c4 c c8 c c c |
  
  %%%%%%%%%%%%%%%% GREASE LIGHTNING
  \key f \major
  \repeat volta 2 { 
  f,1 (|f1) |r4 a g8 a4 a8(|a4) a g8 a(a4) |  
  f' d c d8 c | f d4 c8(c2) |r4 a g8 a4 a8(|a4) a g8 a(a4) |
  r e' e r | r d d r | r e e r | d8 d d d d4 bes | a4 f f f | c8 c c c c c c c |
  }
  
  {\tempo \markup \italic{palmas} 4 = \tempoGreaseLightning}
  \set Score.tempoHideNote = ##t
  a'4-> r2. | r bes4-> | a4-> r2. | r1 |
  gis4-> r2. | r gis4-> | a4-> r2. | 
  r2 r8 c d c | g'4 r r8 c, d c | f4 r r8 c d c | g'4 r r8 c, d c | f8 f f f f4 d |
  
  {\tempo \markup \italic{We Go Together} 4 = \tempoWeGoTogether}
  \set Score.tempoHideNote = ##t
  f4 r a, r |  bes bes c d | 
  
  
  %%%%%%%%%%%%%%%% WE GO TOGETHER
  \key es \major
  es4 es8 es4 es8 d4 | c c8 c4 c8 bes4 | aes aes8 aes4 aes8 c4 | bes4 r2. |
  
  \repeat volta 2 { 
  r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 bes bes4. aes8 | g f g es(es2) | r2 aes4 g | f4. g4. aes4 | bes4. bes8(bes2)(|bes2) r4 bes-> | aes1-> | bes-> |
  }

  %parte b
  r4 c c4. aes8 | c4 c8 c8(c2) | r4 c c aes | c c8 c8(c2) | r4 g g g | aes2. g4 | aes es g2(|g2)  r|
  r4 c c4. aes8 | c4 c8 c8(c2) | r4 c c aes | c2 b4 bes | a4 a2 a4 | bes2 c | f,4 r g r | g g aes aes \bar "||"
  
  %repite
  r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 bes bes4. aes8 | g f g es(es2) | r2 aes4 g | f4. g4. aes4 | bes4. bes8(bes2)(|bes2) r4 bes-> | aes1-> | bes-> |
  
  r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 bes bes4. aes8 | g f g es(es2) | r2 aes4 g | f4. g4. aes4 | bes4. bes8(bes2) |aes4.-> aes-> aes4-> | aes4.-> g8->(g2) \bar "|."
  


%{
  \key c \minor
  {\tempo 4 = \tempoYoureTheOne}
  % i got 
  r1 | r2. g8 bes | c2 r8 ges f es16 f(|f8) es4. r4 g8 bes | c2 r8 c16 c  bes8 aes16 bes(|bes8) g4. r4 g8 bes |
  b4 b2 f8 es16 f(|f8) es4. r8 es16 es es8 c16 es(|es8) c(c4) r es8 g | g4 r r g8 bes | c d16 bes(bes2.) | r4 c16 c 8 c16(c8) bes aes g16 aes(|aes2) r4 es8 g |
  g4 r r g8 bes | c d16 bes(bes2.) | r4 c16 c 8 c16(c8) bes aes g16 aes(|aes2)  c | c8.-> c-> c8-> r c-> c-> c16 c |
  % chorus
  bes bes bes bes r8 bes16 bes bes bes bes c(c) c bes8 | r8 es(es16) des8. c4 r8 c16 c |
  bes bes bes bes r8 bes16 bes bes bes bes bes(bes) bes bes8 | r8 es(es16) des8. c4 c16 c8 bes16(|bes2) r8 bes c d | d c16 bes(bes2) r8 bes16 bes |
  %repeat
  bes bes bes bes r8 bes16 bes bes bes bes bes(bes) bes bes8 | r8 es(es16) des8. c4 r8 bes16 bes |
  bes bes bes bes r8 bes16 bes bes bes bes bes(bes) bes bes8 | r8 es(es16) des8. c4 c16 c8 bes16(|bes2) r8 bes c d |  c4 c a8 a a a ||
  %%%
  % Rock
  %%%
  
  bes4 r2. 
%}
  
}
  
bajoSummerI ={bes4 r8 bes es4 r8 es | f4 r8 f es f4 es8}
  
 ritmoUnoI = {c4 g c8. g16 g8 bes}
ritmoUnoVI = {aes4 es aes8. aes16 aes8 bes}
ritmoUnoIII = {es,4 bes' es,8. bes'16 es,8 f}
ritmoUnoV = {g4 d g8. d16 d8 g}


scoreATenorSax =
\transpose c d' %%%% COMMENT FOR CONCERT PITCH
\relative c
{
  \global
  %\transposition bes, % this transposes midi a major second down
  {\tempo \markup \italic{comeza lento e acelera} 4 = \tempoSummerNights}
  \set Score.tempoHideNote = ##t
  \bajoSummerI \bajoSummerI \bajoSummerI \bajoSummerI
  
  \repeat volta 2 { 
  \bajoSummerI \bajoSummerI
   bes4 r8 bes es4 r8 es | \tuplet 3/2 {f4 d f} g8 g a b| c4 r8 c, f4 r8 f c c c f(|f) f g a |
   % puente
   bes4 bes,8 bes es4 es8 es | f f f g(g4) g8 f | es4 c8 c f f f bes,(|bes) f' f f g g a a |
   % tell me boy
   bes,8 bes r d es es r es | c c r c f f r f | bes, bes c d es es r d | c c r c f4 f |
   % coda
   bes,4 r8 bes es4 r8 es | f4 r8 f es f4 es8 | bes4 r8 bes es4 r8 es | f4 r8 f es f4 es8
  }
  {\tempo \markup \italic{acelera} 4 = \tempoGreaseLightning}
  \set Score.tempoHideNote = ##t
  bes2 bes | c4 c c8 c c c |
  
  %%%%%%%%%%%%%%%% GREASE LIGHTNING
  \key f \major
  \repeat volta 2 { 
  f2 f | f4 f f f | f8 f a, a c c d c | f f a, a c c d c % bass I I
  bes2 bes | bes4 bes bes bes | f'8 f a, a c c d c | f f a, a c c d c % bass IV I
  c4 r2. | bes4 r2. | c4 r2. | bes2. bes4 | f' f f f | c8 c c c c c c c % ending
  }
  {\tempo \markup \italic{palmas} 4 = \tempoGreaseLightning}
  \set Score.tempoHideNote = ##t
  f4-> r2. | r bes,4-> | f'4-> r2. | r1 |
  bes,4-> r2. | r bes4-> | f'4-> r2. | 
  r2 r8 c d c | g'4 r r8 c, d c | f4 r r8 c d c | g'4 r r8 c, d c | f8 f f f f4 d |
  
  {\tempo \markup \italic{We Go Together} 4 = \tempoWeGoTogether}
  \set Score.tempoHideNote = ##t
  f4 r f r |  bes aes g f |  
  
  %%%%%%%%%%%%%%%% WE GO TOGETHER
  \key es \major
  es4 es8 es4 es8 d4 | c c8 c4 c8 bes4 | aes aes8 aes4 aes8 c4 | bes4 r2. |
  
  \repeat volta 2 { 
  es4. es8(es2) | c4. c8(c2) | aes4. aes8(aes2) | bes4. bes8(bes2) |
  es4. es8(es2) | c4. c8(c2) | aes4. aes8(aes2) | bes4. bes8(bes2) |
  r4 es es4. d8 | c4. c8(c2) | aes2 aes4 f' | bes,4. c4. d4 |
  d4. es8(es2)( | es2) r4 bes4-> | aes1-> | bes->|
  }
  
  % parte b
  aes'2 es | aes es | aes es | aes aes4 bes | es,2 bes' | es,2 bes' | es,2 bes' | es4 es, f g |
  aes2 es | aes es | aes es | aes g4 ges | f2 c' | f,4 f g a | bes,4 r c r | cis cis d bes \bar "||"
  
  %repite
  es4. es8(es2) | c4. c8(c2) | aes4. aes8(aes2) | bes4. bes8(bes2) |
  es4. es8(es2) | c4. c8(c2) | aes4. aes8(aes2) | bes4. bes8(bes2) |
  r4 es es4. d8 | c4. c8(c2) | aes2 aes4 f' | bes,4. c4. d4 |
  d4. es8(es2)( | es2) r4 bes4-> | aes1-> | bes->|
  
  es4. es8(es2) | c4. c8(c2) | aes4. aes8(aes2) | bes4. bes8(bes2) |
  es4. es8(es2) | c4. c8(c2) | aes4. aes8(aes2) | bes4. bes8(bes2) |
  r4 es es4. d8 | c4. c8(c2) | aes2 aes4 f' | bes,4. c4. d4 |
  d4. es8(es2) | aes,4.-> aes-> aes4-> | es'4.-> es8->(es2) \bar "|."
  
  
  
  

%{
  \key c \minor
  {\tempo 4 = \tempoYoureTheOne}
  \ritmoUnoI \ritmoUnoI \ritmoUnoI \ritmoUnoI \ritmoUnoVI \ritmoUnoIII \ritmoUnoV \ritmoUnoI | \ritmoUnoI |
  bes8 es(es16) es8. es4 r4 | r8 d(d16) d8. d4 es8 d |c2. es4 | r8 es(es16) es8. es8 d8 c bes |
  bes8 es(es16) es8. es4 r4 | r8 d(d16) d8. d4 es8 d |c2. es4 | r4 es16 es 8 es16(es8) d c bes | c8.-> c-> c8-> r c-> c-> es16 es |
  % chorus
  es16 es es es r8 es16 es es es es es(es) es es8 | r8 es(es16) des8. c8 bes c d |
  es16 es es es r8 es16 es es es es es(es) es es8 | r8 es(es16) des8. c2 |
  r4 c16 c8 d16(d2) | r8 d es f f es16 d16( d8) es16 es
  % repeat
  es16 es es es r8 es16 es es es es es(es) es es8 | r8 es(es16) des8. c8 bes c d |
  es16 es es es r8 es16 es es es es es(es) es es8 | r8 es(es16) des8. c4 c16 c8 d16(|d2)  r8 d es f |
  es4 es f8 f f f | 
  %%%
  % Rock
  %%%
  bes,4 r2.
  %}
  
}

scoreATrumpetBbI =
 \transpose c d  %%%% COMMENT FOR CONCERT PITCH
\relative c''
{
  \global 
  %\transposition bes % this transposes midi a major second down
  {\tempo \markup \italic{comeza lento e acelera} 4 = \tempoSummerNights}
  \set Score.tempoHideNote = ##t

  r1 | r | r |r |r |r | bes4 r8 bes es4 r8 es | f4 r8 f es f4 es8| 
  
  \repeat volta 2 { 
  bes,4 r8 bes es4 r8 es | f4 r8 f es f4 es8|
  r4 d'8 bes es c(c4) | f8 d f f es2 |  bes,4 r8 bes es4 r8 es | \tuplet 3/2 {f4 f f} g2 |
  r4 e'8 c f4 r | e8 c e f(f2)| r4 bes,8 f g4 g8 g | f g f d(d4) d8 bes | es4 f8 g f g f bes,(|bes4) r2. |
  % tell me boy
   bes8 bes r d es es r es | c c r c f f r f | r4 f'8 f g4 g8 g | g4 g8 g f g f d(| 
   % coda
   d8) d-> d4-> r8 es8-> es4-> | r8 f8-> f4->  r8 es8-> es4-> | r8 d-> d4-> r8 es8-> es4-> | r8 f8-> f4->  r8 es8-> es4-> 
  }
  {\tempo \markup \italic{acelera} 4 = \tempoGreaseLightning}
  \set Score.tempoHideNote = ##t
  d2 d | e4 e e8 e e e |
  
   %%%%%%%%%%%%%%%% GREASE LIGHTNING
  \key f \major
  \repeat volta 2 { 
  a,1(|a1)|r4 f' es8 f4 f8(|f4) f es8 f(f4) |  
  f d c d8 c | f d4 c8(c2) |r4 f es8 f4 f8(|f4) f es8 f(f4) |  
  r g g r | r f f r | r g g r | f8 f f f f4 d | f4 f, f f | c8 c c c c c c c |
  }
  
  {\tempo \markup \italic{palmas} 4 = \tempoGreaseLightning}
  \set Score.tempoHideNote = ##t
  c'4-> r2. | r d4-> | c4-> r2. | r1 |
  d4-> r2. | r d4-> | c4-> r2. | 
  r2 r8 c d c | g'4 r r8 c, d c | f4 r r8 c d c | g'4 r r8 c, d c | f8 f f f f4 d |
  
  
  {\tempo \markup \italic{We Go Together} 4 = \tempoWeGoTogether}
  \set Score.tempoHideNote = ##t
  f4 r f r |   f d es f|   
  
  %%%%%%%%%%%%%%%% WE GO TOGETHER
  \key es \major
  g4 g8 g4 g8 f4 | es es8 es4 es8 d4 | c c8 c4 c8 es4 | d4 r2. |
  
  \repeat volta 2 { 
  r4 g, bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 g' g4. f8 | es d es c(c2) | r2 f4 es | d4. es4. f4 | f4. g8(g2)(|g2) r4 bes,-> | aes1-> | bes-> |
  }

  %parte b
  r4 es es4. c8 | es4 f8 es8(es2) | r4 es es c | es f8 es8(es2) | r4 bes bes bes | c2. bes4 | c g bes2(|bes2)  r|
  r4 es es4. c8 | es4 f8 es8(es2) | r4 es es c | es f8 es8(es2) | f4 f2 f4 | g2 f | bes,4 r bes r | bes bes c d \bar "||"
  
  %repite
  r4 g, bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 g' g4. f8 | es d es c(c2) | r2 f4 es | d4. es4. f4 | f4. g8(g2)(|g2) r4 bes,-> | aes1-> | bes-> |
  
  r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 g' g4. f8 | es d es c(c2) | r2 f4 es | d4. es4. f4 | f4. es8(es2)|f4.-> f-> f4-> | f4.-> es8->(es2) \bar "|."


%{
  \key c \minor
  {\tempo 4 = \tempoYoureTheOne}
  % i got 
  r1 | r2. g,8 bes | c2 r8 ges f es16 f(|f8) es4. r4 g8 bes | c2 r8 c16 c  bes8 aes16 bes(|bes8) g4. r4 g8 bes |
  b4 b2 f8 es16 f(|f8) es4. r8 es16 es es8 c16 es(|es8) c(c4) r g'8 bes | bes4 r r g8 bes | c d16 bes(bes2.) | r4 es16 es 8 es16(es8) d c bes16 c(|c2) r4 g8 bes |
  bes4 r r g8 bes | c d16 bes(bes2.) | r4 es16 es 8 es16(es8) d c bes16 c(|c2) es | es8.-> es-> es8-> r es-> es-> es16 es |
  % chorus
  es es es es r8 es16 es es es es es(es) es es8 | r8 g(g16) f8. es4 r8 es16 es |
  es es es es r8 es16 es es es es es(es) es es8 | r8 g(g16) f8. es4 c16 c8 d16(|d2) r8 d es f | f es16 d(d2) r8 es16 es |
  %repeat
  es es es es r8 es16 es es es es es(es) es es8 | r8 g(g16) f8. es4 r8 es16 es |
  es es es es r8 es16 es es es es es(es) es es8 | r8 g(g16) f8. es4 c16 c8 d16(|d2) r8 d es f | es4 es f8 f f f ||
  %%%
  % Rock
  %%%
  
  bes,4 r2.
%}
  
}

scoreATrumpetBbII =
\transpose c d  %%%% COMMENT FOR CONCERT PITCH
\relative c''
{
  \global 
   %\transposition bes % this transposes midi a major second down
   {\tempo \markup \italic{comeza lento e acelera} 4 = \tempoSummerNights}
  \set Score.tempoHideNote = ##t
   r1 | r | r |r |r |r | f,4 r8 f g4 r8 g | a4 r8 a g a4 g8|
   
   \repeat volta 2 { 
   f4 r8 f g4 r8 g | a4 r8 a g a4 g8|
   r4 f8 d g es(es4) | a8 f a a g2 |  f4 r8 f g4 r8 g | \tuplet 3/2 {a4 a a} b2 |
   r4 g8 e a4 r | g8 e g a(a2)| r4 bes8 f g4 g8 g | f g f d(d4) d8 bes | es4 f8 g f g f bes,(|bes4) r2. |
   % tell me boy
   bes8 bes r d es es r es | c c r c f f r f | bes, r d'8 d es4 es8 es | e4 bes8 bes a bes a f(|
   % coda
   f8) f-> f4-> r8 g8-> g4-> | r8 a8-> a4->  r8 g8-> g4-> | r8 f-> f4-> r8 g8-> g4-> | r8 a8-> a4->  r8 g8-> g4-> 
   }
   {\tempo \markup \italic{acelera} 4 = \tempoGreaseLightning}
  \set Score.tempoHideNote = ##t
   bes2 bes | c4 c c8 c c c |
   
    %%%%%%%%%%%%%%%% GREASE LIGHTNING
  \key f \major
  \repeat volta 2 { 
  f,1 (|f1) |r4 a g8 a4 a8(|a4) a g8 a(a4) |  
  f' d c d8 c | f d4 c8(c2) |r4 a g8 a4 a8(|a4) a g8 a(a4) |
  r e' e r | r d d r | r e e r | d8 d d d d4 bes | a4 f f f | c8 c c c c c c c |
  }
  
  {\tempo \markup \italic{palmas} 4 = \tempoGreaseLightning}
  \set Score.tempoHideNote = ##t
  a'4-> r2. | r bes4-> | a4-> r2. | r1 |
  gis4-> r2. | r gis4-> | a4-> r2. | 
  r2 r8 c d c | g'4 r r8 c, d c | f4 r r8 c d c | g'4 r r8 c, d c | f8 f f f f4 d |
  
  {\tempo \markup \italic{We Go Together} 4 = \tempoWeGoTogether}
  \set Score.tempoHideNote = ##t
  f4 r a, r |  bes bes c d |  

  
  %%%%%%%%%%%%%%%% WE GO TOGETHER
  \key es \major
  es4 es8 es4 es8 d4 | c c8 c4 c8 bes4 | aes aes8 aes4 aes8 c4 | bes4 r2. |
  
  \repeat volta 2 { 
  r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 bes bes4. aes8 | g f g es(es2) | r2 aes4 g | f4. g4. aes4 | bes4. bes8(bes2)(|bes2) r4 bes-> | aes1-> | bes-> |
  }
  
  
  %parte b
  r4 c c4. aes8 | c4 c8 c8(c2) | r4 c c aes | c c8 c8(c2) | r4 g g g | aes2. g4 | aes es g2(|g2)  r|
  r4 c c4. aes8 | c4 c8 c8(c2) | r4 c c aes | c2 b4 bes | a4 a2 a4 | bes2 c | f,4 r g r | g g aes aes \bar "||"
  
  %repite
  r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 bes bes4. aes8 | g f g es(es2) | r2 aes4 g | f4. g4. aes4 | bes4. bes8(bes2)(|bes2) r4 bes-> | aes1-> | bes-> |
  
  r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 bes bes4. aes8 | g f g es(es2) | r2 aes4 g | f4. g4. aes4 | bes4. bes8(bes2) |aes4.-> aes-> aes4-> | aes4.-> g8->(g2) \bar "|."
  
  

%{
   \key c \minor
  {\tempo 4 = \tempoYoureTheOne}
  % i got 
  r1 | r2. g8 bes | c2 r8 ges f es16 f(|f8) es4. r4 g8 bes | c2 r8 c16 c  bes8 aes16 bes(|bes8) g4. r4 g8 bes |
  b4 b2 f8 es16 f(|f8) es4. r8 es16 es es8 c16 es(|es8) c(c4) r es8 g | g4 r r g8 bes | c d16 bes(bes2.) | r4 c16 c 8 c16(c8) bes aes g16 aes(|aes2) r4 es8 g |
  g4 r r g8 bes | c d16 bes(bes2.) | r4 c16 c 8 c16(c8) bes aes g16 aes(|aes2)  c | c8.-> c-> c8-> r c-> c-> c16 c |
  % chorus
  bes bes bes bes r8 bes16 bes bes bes bes bes(bes) bes bes8 | r8 es(es16) des8. c4 r8 c16 c |
  bes bes bes bes r8 bes16 bes bes bes bes bes(bes) bes bes8 | r8 es(es16) des8. c4 c16 c8 bes16(|bes2) r8 bes c d | d c16 bes(bes2) r8 bes16 bes |
  %repeat
  bes bes bes bes r8 bes16 bes bes bes bes bes(bes) bes bes8 | r8 es(es16) des8. c4 r8 bes16 bes |
  bes bes bes bes r8 bes16 bes bes bes bes bes(bes) bes bes8 | r8 es(es16) des8. c4 c16 c8 bes16(|bes2) r8 bes c d |  c4 c a8 a a a ||
  %%%
  % Rock
  %%%
  bes4 r2.
%}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

scoreATromboneI =
\relative c'
{\global 
 {\tempo \markup \italic{comeza lento e acelera} 4 = \tempoSummerNights}
  \set Score.tempoHideNote = ##t
 bes,4 r8 bes es4 r8 es | f4 r8 f es f4 es8| bes4 r8 bes es4 r8 es | f4 r8 f es f4 es8|
 bes4 r8 bes es4 r8 es | f4 r8 f es f4 es8| bes4 r8 bes es4 r8 es | f4 r8 f es f4 es8|
 
 \repeat volta 2 { 
  r4 d'8 bes es c(c4) | f8 d f f es2 |  bes,4 r8 bes es4 r8 es | f4 r8 f es f4 es8|
  r4 d'8 bes es c4 es8 | \tuplet 3/2 {f4 d f} g2 |  g,4 r8 g a4 r8 a g g g a(|a) a bes c |
  % puente
  d4 d8 d es4 es8 es | c c c d(d4) d8 bes | es4 f8 g f g f bes,(|bes) f f f g g a a |
  bes4 f'8 f g4 g8 g | g4 g8 g f g f d(| d4) r es,8 es r8 d | c c r c f4 f |
  %coda
  bes,4 r8 bes es4 r8 es | f4 r8 f es f4 es8| bes4 r8 bes es4 r8 es | f4 r8 f es f4 es8|
 }
 {\tempo \markup \italic{acelera} 4 = \tempoGreaseLightning}
  \set Score.tempoHideNote = ##t
 bes2 bes | c4 c c8 c c c |
  
  
  %%%%%%%%%%%%%%%% GREASE LIGHTNING
  \key f \major
  \repeat volta 2 { 
  f f a a c c d c | f4 d c8 a4 f8(|f2.) r4 | r1
  bes8 bes d d f f g f | aes4 g f8 d4 c8(|c2.) r4 | r2 r8 c d c |
  g'4 r r8 c, d c | f4 r r8 c d c |
  g'4 r r8 c, d c | f8 f f f f4 d | f4 f, f f | c8 c c c c c c c
  }
  {\tempo \markup \italic{palmas} 4 = \tempoGreaseLightning}
  \set Score.tempoHideNote = ##t
  f4-> r2. | r bes4-> | f4-> r2. | r1 |
  bes4-> r2. | r bes4-> | f4-> r2. | 
  r2 r8 c' d c | g'4 r r8 c, d c | f4 r r8 c d c | g'4 r r8 c, d c | f8 f f f f4 d |
  
  {\tempo \markup \italic{We Go Together} 4 = \tempoWeGoTogether}
  \set Score.tempoHideNote = ##t
  f4 r f r |  bes, bes c d |  
  
  %%%%%%%%%%%%%%%% WE GO TOGETHER
  \key es \major
  %%%%%%%%%%%%%%%% WE GO TOGETHER
  \key es \major
  es4 es8 es4 es8 d4 | c c8 c4 c8 bes4 | aes aes8 aes4 aes8 f4 | bes4 r2. |
  
  \repeat volta 2 { 
  r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 g' g4. f8 | es d es c(c2) | r2 f4 es | d4. es4. f4 | f4. g8(g2)(|g2) r4 f-> | es1-> | f-> |
  }
  
  %parte b
  r4 es es4. c8 | es4 f8 es8(es2) | r4 es es c | es f8 es8(es2) | r4 bes bes bes | c2. bes4 | c2 g' | fis f |
  es4 es es4. c8 | es4 f8 es8(es2) | r4 es es c | es f8 es8(es2) | f4 f2 f4 | g2 f | d4 r es r | e e f f \bar "||"
  
  %repite
  r4 g, bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 g' g4. f8 | es d es c(c2) | r2 f4 es | d4. es4. f4 | f4. g8(g2)(|g2) r4 f-> | es1-> | f-> |
  
  r4 g, bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 g' g4. f8 | es d es c(c2) | r2 f4 es | d4. es4. f4 | f4. es8(es2) | f4.-> f-> f4-> | f4.-> es8->(es2) \bar "|."

  
  
%{
 
 \key c \minor
 {\tempo 4 = \tempoYoureTheOne}
 % i got 
  \ritmoUnoI \ritmoUnoI \ritmoUnoI \ritmoUnoI \ritmoUnoVI \ritmoUnoIII \ritmoUnoV \ritmoUnoI | \ritmoUnoI |
  bes8 es'(es16) es8. es4 r4 | r8 d(d16) d8. d4 es8 d |c2. es4 | r8 es(es16) es8. es8 d8 c bes |
  bes8 es(es16) es8. es4 r4 | r8 d(d16) d8. d4 es8 d |c2. es4 | r4 es16 es 8 es16(es8) d c bes | c8.-> c-> c8-> r c-> c-> es16 es |
  % chorus
  es16 es es es r8 es16 es es es es es(es) es es8 | r8 es(es16) des8. c8 bes c d |
  es16 es es es r8 es16 es es es es es(es) es es8 | r8 es(es16) des8. c2 |
  r4 c16 c8 d16(d2) | r8 d es f f es16 d16( d8) es16 es
  % repeat
  es16 es es es r8 es16 es es es es es(es) es es8 | r8 es(es16) des8. c8 bes c d |
  es16 es es es r8 es16 es es es es es(es) es es8 | r8 es(es16) des8. c4 c16 c8 d16(|d2)  r8 d es f |
  es4 es es8 es es es |
  %%%
  % Rock
  %%%
  bes4 r2.
%}
    
}

scoreATromboneII =
\relative c'
{\global 
 {\tempo \markup \italic{comeza lento e acelera} 4 = \tempoSummerNights}
  \set Score.tempoHideNote = ##t
  
  f,4 r8 f g4 r8 g | a4 r8 a g a4 g8| f4 r8 f g4 r8 g | a4 r8 a g a4 g8|
   f4 r8 f g4 r8 g | a4 r8 a g a4 g8|  f4 r8 f g4 r8 g | a4 r8 a g a4 g8|
   
   \repeat volta 2 { 
  r4 f8 d g es(es4) | a8 f a a g2 |  f4 r8 f g4 r8 g | a4 r8 a g a4 g8| 
  r4 f8 d g es4 g8 |  \tuplet 3/2 {a4 f a} b8 b, c d | c4 r8 c f4 r8 f c c c f(|f) f g a |
  % puente
  bes4 bes8 bes bes4 bes8 bes | a a a bes(bes4) g8 f | es4 c8 c f f f bes,(|bes) f' f f g g a a |
  bes4 d8 d es4 es8 es | e4 bes8 bes a bes a f(| f4) r es8 es r8 d | c c r c f4 f |
  % coda
  f4 r8 f g4 r8 g | a4 r8 a g a4 g8| f4 r8 f g4 r8 g | a4 r8 a g a4 g8|
   }
   {\tempo \markup \italic{acelera} 4 = \tempoGreaseLightning}
  \set Score.tempoHideNote = ##t
   f2 f | g4 g g8 g g g |
   
   %%%%%%%%%%%%%%%% GREASE LIGHTNING
  \key f \major
  \repeat volta 2 { 
  f f a a c c d c | f4 d c8 a4 f8(|f2.) r4 | r1
  bes8 bes d d f f g f | aes4 g f8 d4 c8(|c2.) r4 | r2 r8 c d c |
  g'4 r r8 c, d c | f4 r r8 c d c |
  g'4 r r8 c, d c | f8 f f f f4 d | f4 f, f f | c8 c c c c c c c
  }
  {\tempo \markup \italic{palmas} 4 = \tempoGreaseLightning}
  \set Score.tempoHideNote = ##t
  f4-> r2. | r bes4-> | f4-> r2. | r1 |
  bes4-> r2. | r bes4-> | f4-> r2. | 
  r2 r8 c d c | g'4 r r8 c, d c | f4 r r8 c d c | g'4 r r8 c, d c | f8 f f f f4 d |
  
  {\tempo \markup \italic{We Go Together} 4 = \tempoWeGoTogether}
  \set Score.tempoHideNote = ##t
  f4 r f r |  bes aes g f |  
  
  %%%%%%%%%%%%%%%% WE GO TOGETHER
  \key es \major
  es4 es'8 es4 es8 d4 | c c8 c4 c8 bes4 | aes aes8 aes4 aes8 f4 | bes4 r2. |
  
  \repeat volta 2 { 
    r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 bes bes4. aes8 | g f g es(es2) | r2 aes4 g | f4. g4. aes4 | bes4. bes8(bes2)(|bes2) r4 bes-> | c1-> | d-> |
  }
  
  
  %parte b
  r4 c c4. aes8 | c4 c8 c8(c2) | r4 c c aes | c c8 c8(c2) | r4 g g g | aes2. g4 | g2 es'| d des |
  c4 c c4. aes8 | c4 c8 c8(c2) | r4 c c aes | c2 b4 bes | a4 a2 a4 | bes2 c | bes4 r c r | cis cis d bes \bar "||"
  
  %repite
  r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 bes bes4. aes8 | g f g es(es2) | r2 aes4 g | f4. g4. aes4 | bes4. bes8(bes2)(|bes2) r4 bes-> | c1-> | d-> |
  r4 g, bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 g bes c | d4. c8(c2) | aes4 aes f aes | bes8 bes bes c(c) c bes4 |
  r4 bes bes4. aes8 | g f g es(es2) | r2 aes4 g | f4. g4. aes4 | bes4. bes8(bes2) |aes4.-> aes-> aes4-> | es4.-> es8->(es2) \bar "|."
  

  

%{
   
   \key c \minor
 {\tempo 4 = \tempoYoureTheOne}
 % i got 
  c,4 g c8. g16 g8 bes \ritmoUnoI \ritmoUnoI \ritmoUnoI \ritmoUnoVI \ritmoUnoIII \ritmoUnoV \ritmoUnoI | \ritmoUnoI |
  bes8 bes'(bes16) bes8. bes4 r4 | r8 bes(bes16) bes8. bes4 bes8 bes |g2. c4 | r8 c(c16) c8. c8 bes8 aes bes |
  g8 bes(bes16) bes8. bes4 r4 | r8 bes(bes16) bes8. bes4 bes8 bes |g2. c4 | r4 c16 c 8 c16(c8) bes aes g | aes8.-> aes-> aes8-> r aes-> aes-> c16 c |
  % chorus
  bes16 bes bes bes r8 bes16 bes bes bes bes bes(bes) bes bes8 | r8 g(g16) g8. aes8 g aes bes |
  bes16 bes bes bes r8 bes16 bes bes bes bes bes(bes) bes bes8 | r8 g(g16) g8. aes2|
  r4 aes16 aes8 bes16(bes2) | r8 bes c d d c16 bes16(bes8) c16 c
  % repeat
  bes16 bes bes bes r8 bes16 bes bes bes bes bes(bes) bes bes8 | r8 g(g16) g8. aes8 g aes bes |
  bes16 bes bes bes r8 bes16 bes bes bes bes bes(bes) bes bes8 | r8 g(g16) g8. aes4 aes16 aes8 bes16(bes2) | 
  r8 bes, bes bes c4 c f8 f f f |
  %%%
  % Rock
  %%%
  bes4 r2.
  %}
 
}

scoreATuba =
\relative c
{\global 
 {\tempo \markup \italic{comeza lento e acelera} 4 = \tempoSummerNights}
  \set Score.tempoHideNote = ##t
  \bajoSummerI \bajoSummerI \bajoSummerI \bajoSummerI 
  
  \repeat volta 2 { 
  \bajoSummerI \bajoSummerI
   bes4 r8 bes es4 r8 es | \tuplet 3/2 {f4 d f} g8 g, a b| c4 r8 c f4 r8 f c c c f(|f) f, g a |
   % puente
   bes4 bes8 bes es4 es8 es | f f f g(g4) g8 f | es4 c8 c f f f bes,(|bes) f f f g g a a |
   % tell me boy
   bes8 bes r d es es r es | c c r c f f r f, | bes bes c d es es r d | c c r c f4 f, |
   % coda
   \bajoSummerI \bajoSummerI 
  }
  {\tempo \markup \italic{acelera} 4 = \tempoGreaseLightning}
  \set Score.tempoHideNote = ##t
  bes2 bes | c4 c c8 c c c |
  
  %%%%%%%%%%%%%%%% GREASE LIGHTNING
  \key f \major
  \repeat volta 2 { 
  f,2 f | f4 f f f | f8 f a a c c d c | f, f a a c c d c % bass I I
  bes2 bes | bes4 bes bes bes | f8 f a a c c d c | f, f a a c c d c % bass IV I
  c4 r2. | bes4 r2. | c4 r2. | bes2. bes4 | f f f f | c8 c c c c c c c % ending
  }
  {\tempo \markup \italic{palmas} 4 = \tempoGreaseLightning}
  \set Score.tempoHideNote = ##t
  f4-> r2. | r bes4-> | f4-> r2. | r1 |
  bes4-> r2. | r bes4-> | f4-> r2. | 
  r2 r8 c' d c | g'4 r r8 c, d c | f4 r r8 c d c | g'4 r r8 c, d c | f8 f f f f4 d |
  
  {\tempo \markup \italic{We Go Together} 4 = \tempoWeGoTogether}
  \set Score.tempoHideNote = ##t
  f4 r f r |  bes, aes g f |  
  
  %%%%%%%%%%%%%%%% WE GO TOGETHER
  \key es \major
  es4 es'8 es4 es8 d4 | c c8 c4 c8 bes4 | aes aes8 aes4 aes8 f4 | bes4 r2. |
  
  \repeat volta 2 { 
  es4. es8(es2) | c4. c8(c2) | aes4. aes8(aes2) | bes4. bes8(bes2) |
  es4. es8(es2) | c4. c8(c2) | aes4. aes8(aes2) | bes4. bes8(bes2) |
  r4 es es4. d8 | c4. c8(c2) | aes2 aes4 f | bes4. c4. d4 |
  d4. es8(es2)( | es2) r4 bes4-> | aes1-> | bes->|
  }
  
  % parte b
  aes2 es | aes es | aes es | aes aes4 bes | es,2 bes' | es,2 bes' | es,2 bes' | es4 es, f g |
  aes2 es | aes es | aes es | aes g4 ges | f2 c' | f,4 f g a | bes4 r c r | cis cis d bes \bar "||"
  
  %repite
  es4. es8(es2) | c4. c8(c2) | aes4. aes8(aes2) | bes4. bes8(bes2) |
  es4. es8(es2) | c4. c8(c2) | aes4. aes8(aes2) | bes4. bes8(bes2) |
  r4 es es4. d8 | c4. c8(c2) | aes2 aes4 f | bes4. c4. d4 |
  d4. es8(es2)( | es2) r4 bes4-> | aes1-> | bes->|
  
  es4. es8(es2) | c4. c8(c2) | aes4. aes8(aes2) | bes4. bes8(bes2) |
  es4. es8(es2) | c4. c8(c2) | aes4. aes8(aes2) | bes4. bes8(bes2) |
  r4 es es4. d8 | c4. c8(c2) | aes2 aes4 f | bes4. c4. d4 |
  d4. es8(es2) | aes,4.-> aes-> aes4-> | es4.-> es8->(es2) \bar "|."

%{
 \key c \minor
 {\tempo 4 = \tempoYoureTheOne}
  % i got 
  \ritmoUnoI \ritmoUnoI \ritmoUnoI \ritmoUnoI \ritmoUnoVI \ritmoUnoIII \ritmoUnoV \ritmoUnoI | \ritmoUnoI |
  es,4 r r es8 es | g g16 g(g2) g4 | c2. bes4 |aes2(aes8) aes bes bes |
  es,4 r r es8 es |  g g16 g(g2) g4 | c2. bes4 |aes2 aes| aes8.-> aes-> aes8-> r aes-> aes-> bes |
  % chorus
  es,16 es es es r8 es16 es es es es es(es) es es8 | r8 g(g16) g8. aes8 es aes bes |
  es,16 es es es r8 es16 es es es es es(es) es es8 | r8 g(g16) g8. aes4 aes16 aes8 bes16(|bes2) r8 bes bes bes |
  bes2. r8 bes16 bes|
  %repeat
  es,16 es es es r8 es16 es es es es es(es) es es8 | r8 g(g16) g8. aes8 es aes bes |
  es,16 es es es r8 es16 es es es es es(es) es es8 | r8 g(g16) g8. aes4 aes16 aes8 bes16(|bes2) r8 bes bes bes |
  c4 c f,8 f f f |
  bes4 r2.
%}
  
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
  instrumentName = "Saxo Alto I"
  midiInstrument = "alto sax"
} \scoreAAltoSaxI

scoreAAltoSaxIIPart = \new Staff \with {
  instrumentName = "Saxo Alto II"
  midiInstrument = "alto sax"
} \scoreAAltoSaxII

scoreATenorSaxPart = \new Staff \with {
  instrumentName = "Saxo Tenor"
  midiInstrument = "tenor sax"
} \scoreATenorSax

scoreATrumpetBbIPart = \new Staff \with {
  instrumentName = "Tpta. Sib I"
  midiInstrument = "trumpet"
} \scoreATrumpetBbI

scoreATrumpetBbIIPart = \new Staff \with {
  instrumentName = "Tpta. Sib II"
  midiInstrument = "trumpet"
} \scoreATrumpetBbII

scoreATromboneIPart = \new Staff \with {
  instrumentName = "Trombon I"
  midiInstrument = "trombone"
} { \clef bass \scoreATromboneI }

scoreATromboneIIPart = \new Staff \with {
  instrumentName = "Trombon II"
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
    %\scoreAAltoSaxIPart
    %\scoreAAltoSaxIIPart
    %\scoreATenorSaxPart
    %\scoreATrumpetBbIPart
    %\scoreATrumpetBbIIPart
    %\scoreATromboneIPart
    %\scoreATromboneIIPart
    \scoreATubaPart
  %  \scoreADrumsIPart
  %  \scoreADrumsIIPart
  %  \scoreADrumsIIIPart
  %  \scoreADrumsIVPart
  >>
  \layout { }
  
  }
\score {
  \unfoldRepeats
  <<
    \scoreAAltoSaxIPart
    \scoreAAltoSaxIIPart
    \scoreATenorSaxPart
    \scoreATrumpetBbIPart
    \scoreATrumpetBbIIPart
    \scoreATromboneIPart
    \scoreATromboneIIPart
    \scoreATubaPart
  %  \scoreADrumsIPart
  %  \scoreADrumsIIPart
  %  \scoreADrumsIIIPart
  %  \scoreADrumsIVPart
  >>
  \midi {\tempo 4= \MidiTempo}
}
