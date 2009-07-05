Each directory is named after a file in the original Dink game. It
contains the new file that replaces the original non-free one, as well
as source or auxiliary files, if any.

Background music
================

MIDI files *.mid may have been renamed to *.ogg, if the replacement is
using the Ogg Vorbis format rather than the MIDI format.

- 1.mid (Terris)
  1.ogg

  "Ave Maria" composed by Charles Gounod 1859

  Initial/replaced version (TiMidity output):
  -Sequence: AVE MARIA    
  -Copyright: (C)1994 Roland Corporation
  (Bach/Gounod version)

  Replacement:
  http://en.wikipedia.org/wiki/Image:JOHN_MICHEL_CELLO-BACH_AVE_MARIA.ogg

  +Artist: John Michel (Cello)
  +License: CC-BY-SA 3.0 Unported

  Alternate replacement (unused):
  Copyright: Aryliin and TboWan <arsouyes.org>
  License: Art Libre
  http://arsouyes.org/partitions/finies/Bach/Prelude/Piano/prelude.mid (Bach's version)
  http://arsouyes.org/partitions/finies/gounod/Ave_Maria/Ave_Maria.mid (Gounod version)


- 104.mid (Stonebrook, Dink's village)

  "Serenade D957" by Franz Schubert

  Initial/replaced version (TiMidity output):
  -Text: Serenade
  -Text: Composer:  Franz Schubert
  -Text: Sequence:  Faren Raborn (June, 1995)
  -Text: Email:  raborn@mail.dtx-bbs.com
  -# domain name stolen ^^^^^^^^^^^^^^^^

  Replacement:
  Composed using Rosegarden (serenade-d957.rg) with the help of public
  domain scores

  +Copyright (C) 2008  Sylvain Beucler
  +License: GPLv3+ | Art Libre | CC-BY-SA

  Support score:
  Source: http://www.free-scores.com/download-sheet-music.php?pdf=5672
  Arrangement: Guy Bergeron
  License: public domain
  http://www.free-scores.com/PDF/schubert-franz-peter-serenade-5672.pdf

- 105.mid (outside Stonebrook + Kernsin)

  "Rêverie" by Claude Debussy 1890

  Initial/replaced version (TiMidity output):
  -Track name: Rêverie by
  -Track name: Claude Debussy
  -Track name: Sequence by
  -Track name: Faren Raborn
  -Track name: June, 1995


  Replacement:
  Composed using Rosegarden (reverie.rg) with the help of public
  domain scores

  +Copyright (C) 2008  Sylvain Beucler
  +License: GPLv3+ | Art Libre | CC-BY-SA

  Support score:
  Source: http://imslp.org/wiki/Rêverie_(Debussy%2C_Claude)
    IMSLP14012-Debussy_-_R__verie__piano_.pdf "Complete Score (original edition.)"
  License: public domain

- 106.mid (Windemere)
  106.ogg

  Violinkonzert [Violin Concerto] e-moll, op. 64 by Felix Mendelssohn
  Movement 1 - Allegro molto appassionato 

  Original/replaced version (TiMidity output):
  -Track name: Mendelssohn 
  -Track name: Concerto for Violin
  -Track name: Opus64- a - Allegro mol. apass.
  -Track name: Midi by:
  -Track name: B.Fisher

  Replacement:
  http://commons.wikimedia.org/wiki/Image:Felix_Mendelssohn_-_Violinkonzert_e-moll_-_1._Allegro_molto_appassionato.ogg

  Performance:
  Conductor: Simon Schindler
  Ensemble: Fulda Symphonic Orchestra
  Violinist: Franziska Früh
  Location: Grosser Saal der Orangerie Fulda
  Date: 2001-03-18
  Violinist: Franziska Früh

  +License: EFF: Open Audio License version 1
  +oal-1-0-1.txt
  http://web.archive.org/web/20040603070029/www.eff.org/IP/Open_licenses/eff_oal_version1.php
  

  Changes (Sylvain Beucler):
  Split to reduce download size (and people usually don't play 15mn
    without MIDI change in Windemere anyway).
  mp3splt Felix_Mendelssohn_-_Violinkonzert_e-moll_-_1._Allegro_molto_appassionato.ogg 0.6 3.18

- denube.mid (attack by Nelson the slayer shape-shifter)
  denube.ogg

  The Blue Danube / On the Beautiful Blue Danube
  An der schönen blauen Donau op. 314, Johann Strauss

  Original/replaced version:
  unknown source

  Replacement:
  http://commons.wikimedia.org/wiki/Image:An_der_schönem_blauen_Donau.ogg

  Description: Johann Strauss II: Blue Danube. Played by Finnish
    orchestra Rytmi-Pojat, directed by Eugen Malmsten. The recording
    Tonava kaunoinen Kultaa ja hopeaa by Columbia
  +Source: Doria database of Finnish National Library
  +Date: 1936
  +Author: Johann Strauss II
  +License: public domain

  Sylvain's comments: old recording, some noise, but it's kinda funny
    and hence fits the original intent.

  Alternate replacements (unused):

  http://www.archive.org/details/BlueDanubeWaltz (record, Ogg Vorbis, public domain)
  STRAUSS_Blue_Danube_Waltz_1934.ogg
  (abeilt too serious, the original midi was supposed to add a funny effect to a gory fighting)

  http://www.mutopiaproject.org/cgibin/piece-info.cgi?id=519
  http://www.mutopiaproject.org/ftp/StraussJJ/O314/blue_danube/blue_danube.mid
  CC-BY-SA, Copyright (C) 2004  Nikos Kouremenos, Mutopia-2005/01/17-519
  but very short :/

  http://www.free-scores.com/redirection-partition.php?partition=5401
  score, public domain


Sound effects
=============

- intro.wav

  Original/replaced version: Used to be the soundtrack of the game
  intro video (CD version); replaced by empty sound since 1.08. Used
  for "Back from the grave" title screen.

  Replacement:
  It's just a 1-frame silence, nothing copyrightable ;)

- fire.wav

  Fire burning in the background (chimney, torch)

  Replacement:
  http://wiki.laptop.org/go/Sound_samples#Selections_from_The_Berklee_College_of_Music_Sampling_Archive_.281999-2007.29
  http://www.archive.org/details/Berklee44v12 - file fire_long.wav
  License: CC-BY 3.0

  Edited to match the original length and frequency, and reworked
  (bass/equilizer) to better match the original sound.  It was done
  using Audacity, but given the manual processing, there was no real
  source form and I trashed the temporary .aup project.
  Copyright (C) 2008  Sylvain Beucler

- high2.wav

  Choir noise when you pickup a strength potion; sound when you're
  given control when starting the game

  Recreated with ZynAddSubFX, with instrument "Choir and Voice > Choir
  Pad1", notes are g+2+7 on ZynAddSubFX, i.e FA# (bass) + DO# (bass) +
  SIb (high), or F#+C#+Cb (US).

  Copyright (C) 2009  Sylvain Beucler
  License: GPLv3+ | Art Libre | CC-BY-SA


Files from Wesnoth
------------------

All wesnoth data is under the GPL, but authorship is sometimes
lacking.

Thus they are grouped in this section

Battle of Wesnoth
* http://www.wesnoth.org/
* http://www.wesnoth.org/wiki/Credits
* http://svn.gna.org/viewcvs/wesnoth/trunk/data/COPYING.txt
* http://svn.gna.org/viewcvs/wesnoth/trunk/data/core/sounds/

- gold.wav

  Single gold coin tossed with other gold coins.

  Origin: wesnoth/data/core/sounds/gold.ogg
  Author: ?
  License: GPLv2+

  Edited: the original sound was too long; using Audacity (gold.aup),
  I truncated the sound and applied a fade_out to diminish the
  truncation effect.
  Copyright (C) 2008  Sylvain Beucler
  License: GPLv2+

- bird1.wav

  Bird tweeting

  Origin: wesnoth/data/core/sounds/ambient/birds2.ogg
  Author: ?
  License: GPLv2+
