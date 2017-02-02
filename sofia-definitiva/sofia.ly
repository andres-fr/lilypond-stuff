\version "2.18.2"

%%%------GLOBAL SETTINGS------%%%
% timidity -iA -B2,8 -Os1l -s 44100
% timidity sofia.midi -Ow -o - | ffmpeg -i - -acodec libmp3lame -ab 64k sofia.mp3



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
			  \underline "         SOFIA        "}
	 subtitle = \markup {\fontsize #1
			     "COMPARSA OS SOLFAMIDAS"}
	 tagline = "" }


%%% TEST
% c4( d) e f g a b c( b) a g f e d c(d) e f g a b c( b) a g f e d


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% GLOBAL VARIABLES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(set-global-staff-size 18)


global = {
  \key bes \minor
  \time 4/4
}
tempoSofia = 130
 
scoreAAltoSaxI =
\transpose c a % uncomment this for print version
\relative c'' 
{
  \global 
  %\transposition es % this transposes midi a minor sixth down
  {\tempo \markup \italic{} 4 = \tempoSofia}
  \set Score.tempoHideNote = ##t
  bes8. bes aes8 bes4 des | bes8. bes aes8 bes4 des | c2 r4 des | c2 r2 | 
  bes8. bes aes8 bes4 des | bes8. bes aes8 bes4 des | c2 r4 des | c2 r2 | 
  \repeat volta 2 {
    f,4 aes f8 aes f es | f4 aes f8 aes bes es, | es4 r f8 aes bes es, | des2 r2 |
    f4 aes f8 aes f es | f4 aes f8 aes bes es, | es4 r f8 aes bes es, | des2 r2 |
  bes'8. bes aes8 bes4 des | bes8. bes aes8 bes4 des | c2 r4 des | c2 r2 | 
  bes8. bes aes8 bes4 des | bes8. bes aes8 bes4 des | c2 r4 des | c2 r2 | 
  f4 es des c \bar"||"
  % estribillo
  bes4. aes8 bes4. des8 | f2. r4 | es4 es8. f16 es8 des bes des | es4 es8. f16 es8 des bes aes |
  bes4. aes8 bes4. des8 | f8 aes f2 r4 | es4 es8. f16 es8 des bes des | es4 es8. f16 es8 des bes des
  bes8 bes des4 bes8 bes des4 | aes2 aes8 aes des4 | c2 c8 c bes c | des4 c bes aes |
  bes4. aes8 bes4. des8 | f2. r4 | es4 es8. f16 es8 des bes des | es4 es8. f16 es8 des bes aes |
  bes4. bes8 aes4 f | des r8 bes'8 aes4 f | es r8 f8 es4 des | bes2 r2 |
  }
  bes4. bes'8 aes4 f | des r8 bes'8 aes4 f | es r8 f8 es4 des | bes2 bes'4 c |
  des4 r2. | des4 r2. |c4 r2. |bes4 r bes c | 
  des4 r2.  | des4 r2. |c4 r2. |bes4 r2. |\bar"||"
  bes,4. aes8 bes4. des8 | f2. r4 | es4 es8. f16 es8 des bes des | es4 es8. f16 es8 des bes aes |
  bes4. aes8 bes4. des8 |f8 aes f2 r4 | es'4 es8. f16 es8 des bes des | es4 es8. f16 es8 des bes des
  bes8 bes des4 bes8 bes des4 | aes2 aes8 aes des4 | c2 c8 c bes c | des4 c bes aes |
  bes4. aes8 bes4. des8 | f2. r4 | es4 es8. f16 es8 des bes des | es4 es8. f16 es8 des bes aes |
  %
  bes4. bes8 aes4 f | des r8 bes'8 aes4 f | es r8 f8 es4 des | bes2 r |
  bes4. bes'8 aes4 f | des r8 bes'8 aes4 f | es r8 f8 es4 des | bes4 r  ges'' aes | bes1 \bar"|."
}

scoreAAltoSaxII =
\transpose c a %%%% COMMENT FOR CONCERT PITCH
\relative c''
{
  \global
  %\transposition es % this transposes midi a minor sixth down  
  {\tempo \markup \italic{} 4 = \tempoSofia}
  \set Score.tempoHideNote = ##t
  ges8. ges f8 ges4 bes | f8. f es8 f4 bes | aes2 r4 bes | aes2 r2 | 
  ges8. ges f8 ges4 bes | f8. f es8 f4 bes | aes2 r4 bes | a2 r2 |
  \repeat volta 2 {
    f4 aes f8 aes f es | f4 aes f8 aes bes es, | es4 r f8 f f c | bes2 r2 |
    des4 f des8 f des c | des4 f des8 f f c | c4 r c8 c des c | bes2 r2 |
  ges'8. ges f8 ges4 bes | f8. f es8 f4 bes | aes2 r4 bes | aes2 r2 | 
  ges8. ges f8 ges4 bes | f8. f es8 f4 bes | aes2 r4 bes | a2 r2 |
  f'4 es des c \bar"||"
  % estribillo
  ges4. ges8 ges4. bes8 | aes2. r4 | c4 c8. des16 c8 bes ges bes | ges4 ges8. aes16 ges8 bes ges f |
  ges4. f8 ges4. bes8 | aes8 des aes2 r4 | c4 c8. des16 c8 bes ges bes | ges4 ges8. aes16 ges8 bes ges bes
  ges8 ges bes4 ges8 ges bes4 | f2 f8 f bes4 | aes2 aes8 aes ges aes | bes4 aes ges f |
   ges4. f8 ges4. bes8 | aes2. r4 | c4 c8. des16 c8 bes ges bes | ges4 ges8. aes16 ges8 bes ges f
  bes4. f8 f4 f | des r8 f8 f4 des | c r8 des8 c4 bes | ges2 r2 |
  }
  bes4. f'8 f4 f | des r8 f8 f4 des | c r8 des8 c4 bes | ges2 ges'4 aes |
  f4 r2. | f4 r2. |es4 r2. |des4 r ges aes | 
  f4 r2. | f4 r2. |es4 r2. |des4 r2. |  \bar"||"
  bes4. aes8 bes4. des8 | f2. r4 | es4 es8. f16 es8 des bes des | es4 es8. f16 es8 des bes aes |
  bes4. aes8 bes4. des8 |f8 aes f2 r4 | es'4 es8. f16 es8 des bes des | es4 es8. f16 es8 des bes des
  ges,8 ges bes4 ges8 ges bes4 | f2 f8 f bes4 | aes2 aes8 aes ges aes | bes4 aes ges f |
   ges4. f8 ges4. bes8 | aes2. r4 | c4 c8. des16 c8 bes ges bes | ges4 ges8. aes16 ges8 bes ges f
  %
  bes4. f8 f4 f | des r8 f8 f4 des | c r8 des8 c4 bes | ges2 r2 | 
  bes4. bes'8 aes4 f | des r8 bes'8 aes4 f | es r8 f8 es4 des | bes4  r bes' c | des1 \bar"|."
  
}


scoreATenorSax =
\transpose c d' %%%% COMMENT FOR CONCERT PITCH
\relative c
{
  \global
  %\transposition bes, % this transposes midi a major second down
  {\tempo \markup \italic{} 4 = \tempoSofia}
  \set Score.tempoHideNote = ##t
  ges'8. ges ges8 ges4 ges | bes8. bes aes8 bes4 bes | aes2 r4 aes | aes2 r2 | 
  ges8. ges ges8 ges4 ges | bes8. bes aes8 bes4 bes | aes2 r4 ges | f2 r2 |
  \repeat volta 2 {
  bes,4 bes bes bes | des des des des| aes aes aes aes | ges' ges ges ges |
  bes,4 bes bes bes | des des des des| aes aes aes aes | ges' ges ges ges |
  ges8. ges ges8 ges4 ges | bes8. bes aes8 bes4 bes | aes2 r4 aes | aes2 r2 | 
  ges8. ges ges8 ges4 ges | bes8. bes aes8 bes4 bes | aes2 r4 ges | f2 r2 |
  f4 es des c \bar"||"
  % estribillo
  ges'4 ges ges ges | des des des des | aes' aes aes aes | es es es es |
  ges4 ges ges ges | des des des des | aes' aes aes aes | es es es es |
  ges8 ges ges4 ges8 ges ges4 | des des des8 des des'4 | aes aes aes aes | es es es es |
  ges4 ges ges ges | des des des des | aes' aes aes aes | es es es es |
  %
  bes4. bes8 bes4 bes | des4 r8 des des4 des | aes4 r8 aes'  aes4 aes | ges2 r2}

  bes,4. bes8 bes4 bes | des4 r8 des des4 des | aes4 r8 aes'  aes4 aes | ges2 ges4 aes | 
  bes4 r2. | des4 r2. |aes4 r2. |ges4 r ges aes | 
  bes4 r2.  | des4 r2. |aes4 r2. |ges4 r2. |
  ges1 | des | aes' | es | ges | des |
  aes'4 r2. | r1  |
  \bar"||"
  ges8 ges ges4 ges8 ges ges4 | des des des8 des des'4 | aes aes aes aes | es es es es |
  ges4 ges ges ges | des des des des | aes' aes aes aes | es es es es |
  %
  bes4. bes8 bes4 bes | des4 r8 des des4 des | aes4 r8 aes'  aes4 aes | ges2 r |
  bes,4. bes8 bes4 bes | des4 r8 des des4 des | aes4 r8 aes'  aes4 aes | ges4 r ges aes |bes1 \bar"|."
  
}

scoreATrumpetBbI =
 \transpose c d  %%%% COMMENT FOR CONCERT PITCH
\relative c''
{
  \global 
  %\transposition bes % this transposes midi a major second down
  {\tempo \markup \italic{} 4 = \tempoSofia}
  \set Score.tempoHideNote = ##t
  bes8. bes aes8 bes4 des | bes8. bes aes8 bes4 des | c2 r4 des | c2 r2 | 
  bes8. bes aes8 bes4 des | bes8. bes aes8 bes4 des | c2 r4 des | c2 r2 |
  \repeat volta 2 {
    f,4 aes f8 aes f es | f4 aes f8 aes bes es, | es4 r f8 aes bes es, | des2 r2 |
    f4 aes f8 aes f es | f4 aes f8 aes bes es, | es4 r f8 aes bes es, | des2 r2 |
  bes'8. bes aes8 bes4 des | bes8. bes aes8 bes4 des | c2 r4 des | c2 r2 | 
  bes8. bes aes8 bes4 des | bes8. bes aes8 bes4 des | c2 r4 des | c2 r2 | 
  f4 es des c \bar"||"
  % estribillo
  bes4. aes8 bes4. des8 | f2. r4 | es4 es8. f16 es8 des bes des | es4 es8. f16 es8 des bes aes |
  bes4. aes8 bes4. des8 | f8 aes f2 r4 | es4 es8. f16 es8 des bes des | es4 es8. f16 es8 des bes des
  bes8 bes des4 bes8 bes des4 | aes2 aes8 aes des4 | c2 c8 c bes c | des4 c bes aes |
  bes4. aes8 bes4. des8 | f2. r4 | es4 es8. f16 es8 des bes des | es4 es8. f16 es8 des bes aes |
  bes4. bes8 aes4 f | des r8 bes'8 aes4 f | es r8 f8 es4 des | bes2 r2 |
  }
  bes4. bes'8 aes4 f | des r8 bes'8 aes4 f | es r8 f8 es4 des | bes2 bes'4 c |
  des4 r2. | des4 r2. |c4 r2. |bes4 r bes c | 
  des4 r2.  | des4 r2. |c4 r2. |bes4 r2. |\bar"||"
  ges1 | f | es | es | ges | f | es'4 es8. f16 es8 des bes des | es4 es8. f16 es8 des bes des |
  bes8 bes des4 bes8 bes des4 | aes2 aes8 aes des4 | c2 c8 c bes c | des4 c bes aes |
  bes4. aes8 bes4. des8 | f2. r4 | es4 es8. f16 es8 des bes des | es4 es8. f16 es8 des bes aes |
  %
  bes4. bes8 aes4 f | des r8 bes'8 aes4 f | es r8 f8 es4 des | bes2 r |
  bes4. bes'8 aes4 f | des r8 bes'8 aes4 f | es r8 f8 es4 des | bes4 r  ges'' aes | bes1 \bar"|."

  
}

scoreATrumpetBbII =
\transpose c d  %%%% COMMENT FOR CONCERT PITCH
\relative c''
{
  \global 
   %\transposition bes % this transposes midi a major second down
   {\tempo \markup \italic{} 4 = \tempoSofia}
  \set Score.tempoHideNote = ##t
  ges8. ges f8 ges4 bes | f8. f es8 f4 bes | aes2 r4 bes | aes2 r2 | 
  ges8. ges f8 ges4 bes | f8. f es8 f4 bes | aes2 r4 bes | a2 r2 |
  \repeat volta 2 {
    f4 aes f8 aes f es | f4 aes f8 aes bes es, | es4 r f8 f f c | bes2 r2 |
    des4 f des8 f des c | des4 f des8 f f c | c4 r c8 c des c | bes2 r2 |
  ges'8. ges f8 ges4 bes | f8. f es8 f4 bes | aes2 r4 bes | aes2 r2 | 
  ges8. ges f8 ges4 bes | f8. f es8 f4 bes | aes2 r4 bes | a2 r2 |
  f'4 es des c \bar"||"
  % estribillo
  ges4. ges8 ges4. bes8 | aes2. r4 | c4 c8. des16 c8 bes ges bes | ges4 ges8. aes16 ges8 bes ges f |
  ges4. f8 ges4. bes8 | aes8 des aes2 r4 | c4 c8. des16 c8 bes ges bes | ges4 ges8. aes16 ges8 bes ges bes
  ges8 ges bes4 ges8 ges bes4 | f2 f8 f bes4 | aes2 aes8 aes ges aes | bes4 aes ges f |
   ges4. f8 ges4. bes8 | aes2. r4 | c4 c8. des16 c8 bes ges bes | ges4 ges8. aes16 ges8 bes ges f
  bes4. f8 f4 f | des r8 f8 f4 des | c r8 des8 c4 bes | ges2 r2 |
  }
  bes4. f'8 f4 f | des r8 f8 f4 des | c r8 des8 c4 bes | ges2 ges'4 aes |
  f4 r2. | f4 r2. |es4 r2. |des4 r ges aes | 
  f4 r2. | f4 r2. |es4 r2. |des4 r2. |  \bar"||"
  bes1 | aes1 | c | bes | bes | aes |  es''4 es8. f16 es8 des bes des | es4 es8. f16 es8 des bes des |
  ges,8 ges bes4 ges8 ges bes4 | f2 f8 f bes4 | aes2 aes8 aes ges aes | bes4 aes ges f |
   ges4. f8 ges4. bes8 | aes2. r4 | c4 c8. des16 c8 bes ges bes | ges4 ges8. aes16 ges8 bes ges f
  %
  bes4. f8 f4 f | des r8 f8 f4 des | c r8 des8 c4 bes | ges2 r2 | 
  bes4. bes'8 aes4 f | des r8 bes'8 aes4 f | es r8 f8 es4 des | bes4 r bes' c | des1 \bar"|."
   
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

scoreATromboneI =
\relative c'
{\global 
 {\tempo \markup \italic{} 4 = \tempoSofia}
  \set Score.tempoHideNote = ##t
  bes8. bes aes8 bes4 des | bes8. bes aes8 bes4 des | c2 r4 des | c2 r2 | 
  bes8. bes aes8 bes4 des | bes8. bes aes8 bes4 des | c2 r4 des | c2 r2 |
  \repeat volta 2 {
    f,4 aes f8 aes f es | f4 aes f8 aes bes es, | es4 r f8 aes bes es, | des2 r2 |
    f4 aes f8 aes f es | f4 aes f8 aes bes es, | es4 r f8 aes bes es, | des2 r2 |
  bes'8. bes aes8 bes4 des | bes8. bes aes8 bes4 des | c2 r4 des | c2 r2 | 
  bes8. bes aes8 bes4 des | bes8. bes aes8 bes4 des | c2 r4 des | c2 r2 | 
  f4 es des c \bar"||"
  % estribillo
  bes4. aes8 bes4. des8 | f2. r4 | es4 es8. f16 es8 des bes des | es4 es8. f16 es8 des bes aes |
  bes4. aes8 bes4. des8 |f2. r4 | es4 es8. f16 es8 des bes des | es4 es8. f16 es8 des bes des
  bes8 bes des4 bes8 bes des4 | aes2 aes8 aes des4 | c2 c8 c bes c | des4 c bes aes |
  bes4. aes8 bes4. des8 | f2. r4 | es4 es8. f16 es8 des bes des | es4 es8. f16 es8 des bes aes |
  bes4. bes8 aes4 f | des r8 bes'8 aes4 f | es r8 f8 es4 des | bes2 r2 |
  }
  bes4. bes'8 aes4 f | des r8 bes'8 aes4 f | es r8 f8 es4 des | bes2 ges'4 aes |
  bes4 r2. | des4 r2. |aes4 r2. |ges4 r ges aes | 
  bes4 r2.  | des4 r2. |aes4 r2. |ges4 r2. |\bar"||"
  bes4. aes8 bes4. des8 | f2. r4 | es4 es8. f16 es8 des bes des | es4 es8. f16 es8 des bes aes |
  bes4. aes8 bes4. des8 |f2. r4 | es4 es8. f16 es8 des bes des | es4 es8. f16 es8 des bes des
  bes8 bes des4 bes8 bes des4 | aes2 aes8 aes des4 | c2 c8 c bes c | des4 c bes aes |
  bes4. aes8 bes4. des8 | f2. r4 | es4 es8. f16 es8 des bes des | es4 es8. f16 es8 des bes aes |
  %
  bes4. bes8 aes4 f | des r8 bes'8 aes4 f | es r8 f8 es4 des | bes2 r |
  bes4. bes'8 aes4 f | des r8 bes'8 aes4 f | es r8 f8 es4 des | bes4 r  ges' aes | bes1 \bar"|."
 
}

scoreATromboneII =
\relative c
{\global 
 {\tempo \markup \italic{} 4 = \tempoSofia}
  \set Score.tempoHideNote = ##t
  ges'8. ges ges8 ges4 ges | bes8. bes aes8 bes4 bes | aes2 r4 aes | aes2 r2 | 
  ges8. ges ges8 ges4 ges | bes8. bes aes8 bes4 bes | aes2 r4 ges | f2 r2 |
  \repeat volta 2 {
    f4 aes f8 aes f es | f4 aes f8 aes bes es, | es4 r f8 aes bes es, | des2 r2 |
    f4 aes f8 aes f es | f4 aes f8 aes bes es, | es4 r f8 aes bes es, | des2 r2 |
    ges8. ges ges8 ges4 ges | bes8. bes aes8 bes4 bes | aes2 r4 aes | aes2 r2 | 
  ges8. ges ges8 ges4 ges | bes8. bes aes8 bes4 bes | aes2 r4 ges | f2 r2 |
  
  f4 es des c \bar"||"
  % estribillo
  ges'4. ges8 ges4. bes8 | aes2. r4 | c4 c8. des16 c8 bes ges bes | ges4 ges8. aes16 ges8 bes ges f |
  ges4. f8 ges4. bes8 | aes8 des aes2 r4 | c4 c8. des16 c8 bes ges bes | ges4 ges8. aes16 ges8 bes ges bes
  ges8 ges bes4 ges8 ges bes4 | f2 f8 f bes4 | aes2 aes8 aes ges aes | bes4 aes ges f |
   ges4. f8 ges4. bes8 | aes2. r4 | c4 c8. des16 c8 bes ges bes | ges4 ges8. aes16 ges8 bes ges f
  %
  bes4. bes8 bes4 bes | des4 r8 des des4 des | aes4 r8 aes  aes4 aes | ges2 r2}

  bes4. bes8 bes4 bes | des4 r8 des des4 des | aes4 r8 aes  aes4 aes | ges2 ges,4 aes | 
  bes4 r2. | des4 r2. |aes4 r2. |ges4 r ges aes | 
  bes4 r2.  | des4 r2. |aes4 r2. |ges4 r2. |
  bes'4. aes8 bes4. des8 | f2. r4 | es4 es8. f16 es8 des bes des | es4 es8. f16 es8 des bes aes |
  bes4. aes8 bes4. des8 |f2. r4 | es4 es8. f16 es8 des bes des | es4 es8. f16 es8 des bes des
  \bar"||"
  ges,8 ges ges4 ges8 ges ges4 | des des des8 des des'4 | aes aes aes aes | es es es es |
  ges4 ges ges ges | des des des des | aes' aes aes aes | es es es es |
  %
  bes4. bes'8 bes4 bes | des4 r8 des des4 des | aes4 r8 aes  aes4 aes | ges2 r |
  bes,4. bes'8 bes4 bes | des4 r8 des des4 des | aes4 r8 aes  aes4 aes | ges4 r ges aes |bes1 \bar"|."
  
 
}

scoreATuba =
\relative c
{\global 
 {\tempo \markup \italic{} 4 = \tempoSofia}
  \set Score.tempoHideNote = ##t
  ges8. ges ges8 ges4 ges | bes8. bes aes8 bes4 bes | aes2 r4 aes | aes2 r2 | 
  ges8. ges ges8 ges4 ges | bes8. bes aes8 bes4 bes | aes2 r4 ges | f2 r2 |
  \repeat volta 2 {
  bes4 bes bes bes | des des des des| aes aes aes aes | ges ges ges ges |
  bes4 bes bes bes | des des des des| aes aes aes aes | ges ges ges ges |
  ges8. ges ges8 ges4 ges | bes8. bes aes8 bes4 bes | aes2 r4 aes | aes2 r2 | 
  ges8. ges ges8 ges4 ges | bes8. bes aes8 bes4 bes | aes2 r4 ges | f2 r2 |
  f'4 es des c \bar"||"
  % estribillo
  ges4 ges ges ges | des des des des | aes' aes aes aes | es es es es |
  ges4 ges ges ges | des des des des | aes' aes aes aes | es es es es |
  ges8 ges ges4 ges8 ges ges4 | des des des8 des des'4 | aes aes aes aes | es es es es |
  ges4 ges ges ges | des des des des | aes' aes aes aes | es es es es |
  %
  bes4. bes'8 bes4 bes | des4 r8 des des4 des | aes4 r8 aes  aes4 aes | ges2 r2}

  bes4. bes8 bes4 bes | des4 r8 des des4 des | aes4 r8 aes  aes4 aes | ges2 ges4 aes | 
  bes4 r2. | des4 r2. |aes4 r2. |ges4 r ges aes | 
  bes4 r2.  | des4 r2. |aes4 r2. |ges4 r2. |
  ges1 | des | aes' | es | ges | des|
  aes'4 r2. | r1  |
  \bar"||"
  ges8 ges ges4 ges8 ges ges4 | des des des8 des des'4 | aes aes aes aes | es es es es |
  ges4 ges ges ges | des des des des | aes' aes aes aes | es es es es |
  %
  bes4. bes'8 bes4 bes | des4 r8 des des4 des | aes4 r8 aes  aes4 aes | ges2 r |
  bes,4. bes'8 bes4 bes | des4 r8 des des4 des | aes4 r8 aes  aes4 aes | ges4 r ges aes |bes1  \bar"|."
  

}

scoreADrumDrumsI = \drummode {
  \global
  % Drums follow here.
  
}

scoreADrumDrumsII = \drummode {
  \global
  % Drums follow here.
  
}<

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
  instrumentName = "Trompeta Sib I"
  midiInstrument = "trumpet"
} \scoreATrumpetBbI

scoreATrumpetBbIIPart = \new Staff \with {
  instrumentName = "Trompeta Sib II"
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
  \midi {\tempo 4= \MyTempo}
}
