Throne of Bhaal: the Ascension
------------------------------

1.0 ...... Introduction
2.0 ...... But First, Some Thanks
3.0 ...... What Does 'the Ascension' Do, Exactly?
4.0 ...... Installing & Un-Installing the Mod
5.0 ...... Using Non-English Versions of ToB
6.0 ...... Technical Support

** SPOILER ALERT!  This ReadMe assumes that you have already completed the Throne of Bhaal expansion for BG2.  If you haven't, avoid section 2.0 & 3.0 completely and read them afterwards.  I'd recommend playing ToB through to its original conclusion, however...to compare the two at the very least. **

*** ADDITIONAL WARNING!  The mod involves changes to the battles in the last chapter of Throne of Bhaal that often have many more enemies and spell effects going off on-screen than are found normally in the official release of the expansion.  Even if your computer conforms to the min specs for ToB, it MAY NOT be enough to run the Ascension.  Min spec machines may chug severely or even crash when too much is occurring on-screen.  There is nothing I can do about this.  Use your own judgement. ***


1.0 Introduction
----------------
Well, here it is.  It's taken about four months to put this together...two months longer than I had expected, but I think the results are worth it.  Unlike the previous mods that I've worked on for Throne of Bhaal (the "improved" battle series), the Ascension isn't all about making the combat more challenging.  It's about making the ending to Throne of Bhaal longer, funner and a little more fulfilling.

Some people like the ending to Throne of Bhaal well enough, I guess.  I liked it well enough (I did a lot of the work on it, after all), but I remember wishing that we had had the time to tinker with it more.  At Bioware we never seemed to have enough time to tinker with the Infinity Engine scripting language as much as I might have liked.  With better AI and some leisurely time spent considering various options, the ending might have been more fully realized.  That's a game designer's fantasy, obviously, especially when you're working within the time-frame of an expansion (which must come out while the game's still on peoples' hard-drives)...but seeing as a mod like this can be done in one's spare time, it doesn't have to be.  Consider this my offering of what might have been.  You might not necessarily like it better...heck, you might not even like it at all...but I think it shows off what the Infinity Engine can do when stretched to its limit and offers a bit more bite to Throne of Bhaal's climax for those who think that's not a bad idea.

The whole thing started on Black Isle's BG2 message boards.  A friend of mine, Kevin Dorner (who runs an excellent site called Baldurdash at http://members.home.net/mrkevvy/ ...definitely check it out), had expressed a bit of disappointment at the fact that he had had no choice but to fight the strongest member of the Five, Balthazar.  Balthazar was a Lawful Good monk, after all, and wouldn't a charismatic and heroic Lawful Good character be able to maybe talk some sense into him?  He suggested that it would have been better to offer a non-fighting alternative or, hey, how about getting Balthazar to fight with you in the final battle?

Another poster (alas, I forget who exactly) offered another idea that it would have been a great idea if the Five had been resurrected in the final battle...that it would be cool to face them all at once.  And I agreed...that was a very interesting idea.

So the Ascension was born.  At first it was just a bit of extra dialogue for Balthazar and some work on the final battle, itself...but it's turned into a lot more than was expected.  Try it out.  If you like it, super!  If you don't, that's OK too.  Just remember two things:

1) this is NOT an official Bioware product and Bioware does not support it.  I work for Bioware, but I've done this on my own time.  If you encounter a bug or some other problem with the mod, please refer to the Technical Problems portion of the ReadMe...don't go to the Bioware message boards and post your problem there.  If you do, people I work with will come down to my office and frown at me and that would be bad.

2) Even if you really, really like what this mod has done, please don't say things like 'this is how it should have been' or somesuch.  I didn't have any deadlines or economic realities to face, here...nor do I think it would be realistic to expect to be allowed to spend four extra months (the entire expansion took six) to tinker and play with a section of the game that lasts maybe a few hours.  I'm proud of how Throne of Bhaal turned out and the work the team did on it and I think almost any game, with a little love and a doubled development time, could be a bit better (or over-designed...take your pick).

Enough about that.  Onto the game, itself.


2.0 But First, Some Thanks
--------------------------
Unlike the Improved Battles, I didn't do this on my own.  I could have, maybe...but it wouldn't have contained nearly as much and I bet it wouldn't work half as well.  Allow me to take a moment to thank some people who really deserve it.

There's a little message board on Yahoo called IEEAIS (Infinity Engine Enemy AI Scripting) that is dedicated to improving the AI used by enemies in the IE games.  Make the enemies not only smarter and therefore more fun to play against, but also smart enough that they don't need all those cheats (uninterruptable spells, lots of immunities, etc.)...and also smart enough that cheesy tactics on the part of the player don't work against them.  If this interests you, you can find the group at http://groups.yahoo.com/group/IEEAIS.
At any rate, I have the warmest thanks to send out to the guys on this board for helping out in the biggest way.  Not only did they offer advice on how to take my AI scripting to the next level, but actively QA'd the mod and added content.  I'd like to name everyone, but allow me to give particular thanks (in no particular order) to:

* Lorne Ledger (aka Cuvieronius) - for being the biggest Balthazar booster (even writing Balthazar's epilogue), as well as being tireless and reliable in his support and QA testing right back to my Improved battle mods.

* Quitch - for writing not only Bodhi's epilogue but also her dialogue in the mod in its entirety, also a great tester and really a big nag who kept insisting that the mod be tested fully and not come out too early.

* Xyx - who I shall dub the 'grammar nazi' (although Tom Kenney runs a close second and almost drove me bug-eyed when he and Quitch began debating the merits of the Bodhi dialogue down to the ifs, ands and buts...but, then, grammar has always been my bane and without these guys you would find Balthazar saying things like 'surrendre' and 'alright' and such).  Xyx also scripted Bodhi in both her enemy and allied forms.  Bunches of my own scripts are also based on (if not copied outright) from his, especially the 'cast-n-attack'...ideally, I'd like to think I credited him in each instance, but I don't think I did.

* Spork - who provided the scripting for the Fallen Solar as well as Irenicus, which ended up being a spectacular piece of work.  His scripts also provided the base for lots of my own work.

* Crusade - another great tester at IEEAIS, who came late but offered some great insight into the final battles (especially the Hard and Insane versions) and was very reliable.

* Vulgar Zildrah and Kensai Ryu - First off, a big thanks to VZ and KR for their support and for giving permission that I use their Detectable Spells v1.2 in my mod.  This is a very handy tool for any IE scripter that gives you the ability to detect when many spells are being used, an ability that never before existed and limited the AI.  There's a seperate ReadMe in the mod for Detectable Spells...and for those of you who are interested, you can find updates at the IEEAIS site.  I have to throw out KR as yet another person whose scripting knowledge taught me a lot (the Bodhi script was originally his and re-done by Xyx)...he also happens to be the person who enlightened us on how to alter the epilogues.

Aside from the IEEAIS, I have a few other specific thanks to make:

* Since I didn't use Bioware's IE utilities to work on the mod, a big thanks to the editing community at TeamBG (check them out at www.TeamBG.com) for advice on using the various editors made by members of the community.  A big thanks to TL (Gustov Montessi) for working on the IETMC especially for this mod...while I ended up not putting out the mod in .tbg format, that may happen very soon.  The majority of this mod was made using IDU 1.0.4a (updated by Paul Victorey aka Cat specifically for my use...thanks, Cat!) and IEEP v1.0.9 build 39, made by TL...awesome work on the utilities, guys. 

* Kevin Dorner, naturally, not only for his support but for his own tireless work on BG2, fixing bugs long after we at Bio could continue to do so.  Since Bio hasn't done it yet, if there's any industry types out there, do yourselves a favor: HIRE THIS MAN.

* the posters at Black Isle's BG2 message boards, for their support and fanaticism and general surliness.


3.0 What Does 'the Ascension' Do, Exactly?
------------------------------------------
The mod mostly affects the end part of the game, starting at the very end of Chapter 9 when you meet with Balthazar and climaxing at the site of the ascension in the Throne of Bhaal.  In case you are planning on re-playing the whole expansion, you should be aware of a couple of things that affect the game beyond this section:

1) The Slayer form that the player picks up in Spellhold all the way back in BG2 now upgrades.  It does so when you exceed 2 million, 4 million and 6 million XP.  The upgrades get considerably stronger and deadlier, and one big change you will notice is that occasionally you will lose control over yourself.  The Slayer can sometimes go berserk and will attack the nearest target...this can last one round or go on for several...although there will always be a respite in the very last round before you take too much damage.  The last upgrade gives the player the option to become the Ravager...the ultimate incarnation of murder...which is incredibly powerful but also the most difficult form to control.  Once the mod is installed, these upgrades are available in both BG2 and ToB.

2) Imoen and Sarevok have some dialogues with the PC in ToB that are fairly important.  For Imoen, it involves her growing taint and she gets some Bhaalspawn abilities.  For Sarevok, it involves the chance of him changing alignment.  In ToB these were completely random...but since their stories come up in the Ascension, I thought it was important that these be seen.  There are now event-based timers that will spur Imoen and Sarevok to speak their dialogues if they haven't already done so.  If you play through the game, you will get them all very  naturally.  If, however, you load up the mod and you have played through the game and NOT gotten them here's the warning...if you wait a minute they will start speaking all of their dialogues with about 15 seconds in-between.  It might seem a bit rapid-fire, but at least you'll have seen them.

3) For those who have picked up the mod where the Bhaalspawn powers that the player obtains after the challenges in ToB were put back in, this mod contains them as well.  After each challenge in the pocket plane you will receive extra abilities.  If you're loading up a saved game from before you installed, this will not occur.  If you don't want it, it's not really a big deal: delete the AR4500.bcs file from your Override directory.

4) This mod replaces in full the Improved Balthazar mod.  The new Balthazar is probably just as powerful...but a lot smarter and less cheesy...that is, if you fight him.


If you have an appropriate save game, the best place to start up the mod is right before you go into Balthazar's stronghold in Amkethran (after completing both Sendai's and Abazigal's enclave).  If you're using your Final Save right before you go into Chapter 10, that's OK too...but you won't see any of the new dialogue with Balthazar from earlier.

The highlights of the Ascension, itself, are:

* extended Balthazar sequence: Balthazar has a lot more to discuss with you when you meet him in his stronghold.  He's a Lawful Good monk determined to destroy Bhaal and his evil essence forever, even in himself...but, depending on your own nature, you may be able to talk him into forgoing a battle or even fighting Melissan at your side.  This is, however, not an easy thing to do.

* Irenicus & Bodhi: if you've read the 'thanks' column, you may have come across mention of Irenicus and Bodhi and thought 'what the?!'.  Don't worry, it will all make sense.  And for those of you who wouldn't think of pairing up with a goody two-shoes pansy like Balthazar, there's another opportunity for an ally in the final battle here, as well.

* a totally redone final battle: the battle at the Throne of Bhaal has been completely redone, from start to finish.  Gone are the Elemental Princes and the multiple battles with Melissan and her Slayer Shadows.  Melissan has been completely re-done, and the allies she brings to bear against you make this a whole new fight.

* scaleable AI: I wish I could remove the things where the Difficulty slider actually changes the rules of the game.  Easy still makes everyone do half damage, and Insane still makes everyone do double damage.  Nothing I can do about that.  What I have done, however, is scaled the AI more according to the difficulty level.  Core is about as difficult as one can get and still have the true D&D rules.  If tough battles aren't your thing, set it to Normal or Easy...you will face less opponents and they will have access to less of their powers and spells (or use them less often).  If you want a bigger challenge, try Hard or Insane...it will set you against more opponents who do greater damage and less resources to work with.

* better AI: a lot of work has gone into the AI of the opponents you'll face.  You can often disrupt their spells, but they'll work at preventing you from being able to.  They are still immune to stuff that's appropriate, but the stuff they aren't immune to they will try and deal with when you use it on them.  They'll target appropriate opponents with the appropriate attacks and generally use their abilities wisely.  Melissan is still a power-house...but she's practically a demigod...the fight against her this time is much more tactical and you've got to figure out how to weaken her before you can take her down.

* some new epilogues: not all of the epilogues have changed, but some of them have been lengthened to what they had been originally written as.  A couple have changed completely, and a few new ones have been added.


4.0 Installing & Un-Installing the Mod
--------------------------------------
At some point, this mod will come out in .tbg format...which means that the word strings used in the dialog.tlk file will be added on top of any other third-party stuff you might have added instead of replacing them.  This version, however, doesn't do that.  The majority of the download is the dialog.tlk file, which will completely replace the one in your BG2 directory.  If you've installed any third-party additions, such as new items or other mods, this will completely over-write them.  Any names, descriptions or dialogues that they had will be gone.  If you still have those mods and they are in .tbg format, you can safely install them again after installing the Ascension.  This mod is compatible with the latest North American ToB patch as of November, 2001.

To install, use WinZip or any other unzipping program you have that recognizes sub-directories.  Unzip everything into your BG2 directory (not your Override).  The dialog.tlk file will go into your BG2 directory, everything else will go into your Override.

There's over 300 files in there, and many of the files involved were included in the last patch...so simply deleting the files that were put in the game won't un-install the mod.  My advice is to zip up your Override directory along with the dialog.tlk file into a backup...if you ever want to restore the original game, empty your Override folder and just unzip that backup to replace both the dialog.tlk and the Override and everything should be fine.  The only other option is to delete the Override and completely re-install BG2 and ToB.


5.0 Using Non-English Versions of ToB
-------------------------------------
This mod is primarily intended for use with the North American version of ToB and has only been tested with that...use it with international versions at your own risk.  One player of the German version (thanks to Dyara Prescot) said that the mod would crash at the dialogue with Balthazar if the dialogf.tlk file (which some international versions use for female characters) was not deleted, first.


6.0 Technical Support
---------------------
First off, like I said way back in the beginning, this is NOT an official product of Bioware or Interplay.  Do not contact them for support for this mod or post messages at the Interplay or Bioware message boards asking for such.  As well, should you have the Ascension installed and have a problem elsewhere in your game, chances are they will not help you.  They might...but be kind enough to tell them if you have third-party mods installed...and if they figure that's probably the reason, then they can tell you so.  If you report a problem and they find out afterwards that you have a third-party mod, they will not be pleased...at you or at me, so please spare me the grief.  :)

If you have a problem with the game, or would just like to comment on it, drop me a line at davidg@bioware.com.  It sometimes takes me awhile to get on top of my e-mail, so please be patient if there's some trouble.  Be aware, too, that since I don't have programmers who can de-bug the mod, there's always the chance that I might not be able to solve the problem you're having.

Fixed in patch v1.2:
* monks now have their +4 enchantment to their fists restored
* Balthazar now uses proper +4 fist weapon
* the erroneous problem with the PC's class display is fixed
* Bodhi's AI, both ally and enemy, has been tweaked and fixed
* Imoen no longer displays a string referencing the PC when she changes from Slayer form
* Protection from Elements and Protection from Energy no longer stack
* duration for Absolute Immunity has been fixed
* dead end path in Solar/Melissan dialogue is fixed

Fixed in patch v1.3:
* If Sarevok couldn't see Irenicus, he didn't initiate dialogue with him
* Sarevok's portrait still visible after he betrayed the party
* Sarevok's forced timers for his second and third banter with the PC weren't working
* Minsc's Enrage ability had its stun immunity removed (it should have it)

Fixed in patch v1.4:
* PC using upgraded Slayer/Ravager and still receiving damage upon returning to human form
* Mind Flayer collars working on Irenicus (they shouldn't)
* dialogue dead-end with Melissan when Sarevok was not in the group but not dead, Balthazar had not been convinced to join the group & Difficult was at Core+
* dialogue dead-end with Balthazar when using an Evil-aligned PC


That's it, however.  Hope you enjoy!


David Gaider
Design, Bioware corp.
