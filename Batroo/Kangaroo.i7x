Kangaroo by Batroo begins here. 
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a gator to Flexible Survivals Wandering Monsters table."
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
kangaroodefeat is a number that varies.
to say kangaroo attack:
	say "Swiping her tail, the kangaroo knocks you down onto your back. ‘You[apostrophe]re going to be my joey for today’ A grin crosses across her muzzle. Trying to get away a heavy foot is slammed into your back pressing you into the ground. Rolling you over, the kangaroo strips your clothes off to see what she has to work with.”;
	wait for any key;
	if cocks of player is greater than 0:
		say "’Oh, what do we have here?’ Her hands start to caress your [skin of player] tracing fingers down till she reaches your flagging [cock of player]. ‘Perfect.’ She whispers climbing up your body, her drooling pussy hovering over your maleness. Slamming down onto you, a grunt rising from your chest from the force, as a moan escapes her chest. Quick bounces using those powerful legs, riding you with more force than you[apostrophe]re use to.";
		wait for any key;
		say "Riding you harder with each passing second, before you give her what she wants. Ropes of your seed pump up into her gripping depths, powerful hips grinding down on you to draw every last spurt from you. ‘Oh you[apostrophe]ve been fun, I will have to find you again, very soon.’ Then with a shove, she bounces away dripping your seed across the ground as she goes.";
	otherwise:
		say "’Drat, you need better equipment dear!’ Though taking this opportunity she pushes you back, pressing her own cunt against your face. ‘Be a dear.’ She says with an authoritative voice grinding her pussy to your face, making you eat her out with her juices drooling down your chin. Huffs of pleasure rise quickly from her, hips mashing against your face as her pleasure rises quickly.";
		wait for any key;
		say "Quick thumps of her tail hitting the ground clues you in to the oncoming flood of pussy juice, splashing across your face. Screaming in pure bliss, she grinds against your face as her juices keep coming, flooding your mouth making you think you[apostrophe]re about to drown. Keeping up with the juices as best you can, she finally stops letting you flop onto your back with a gasp of air. ‘Not what I needed, but it will do.’ She hufffs bounding off in search of what she needs.";


To say kangaroo loss:
	say "Whimpering she rears back onto her tail, using it as a seat while her thick legs open, showing off her moist cunt to you";
	wait for any key;
	if cocks of player is greater than 0:
		say "You move between those spread legs, taking her thighs in each hand. [cock of player] presses into that moist tunnel, a moan rising from both of you, punctuated with a hard thrust by you making her gasp. Her breasts jiggle about with each thrust, body rocking on the tail, your hands pressing her legs further apart allowing you to get deeper into her squeezing tunnel. You balls slap against her rump and tail with muffled slaps after every thrust into the wet, squeezing tunnel. ";
		wait for any key;
		say "Grunting deeply, you lean over her upper body rocking her body harder with your thrusts. With a particularly hard thrust, you knock her off her tail both falling to the ground a grunt coming from both of you. The jolt of the fall sends her into climax, the tight spasming cunt around [cock of player] send you over the edge, firing off your thick seed into her. Once you have finished, you climb off her panting limp body getting your clothes back on you leave her there and head off.";
	otherwise:
		say "Quickly scrabbling to her feet, she bounds off quickly not wanting to be hurt any more.";
	
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "red kangaroo"; [Name of your new Monster]
	now attack entry is "[one of] [or] [or] [or] [at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[kangaroo loss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[kangaroo attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "Bounding up to you, the tall red kangaroo grins her rusty red fur looking soft to the touch, heavy chest jiggling with each bounce and breath from her. Large feet and tail thump on the ground catching your attention.'[one of]What do we have here? [or]Eeeee! A new plaything for me! [or]You[apostrophe]re going to give me just what I want [at random].’Her stance changes as she prepares for battle, lightly brushing her nose in a boxing jesture. ";[ Description of the creature when you encounter it.]
	now face entry is "a medium sized rounded muzzle, black nose pad at the end of your muzzle";[ Face description, format as the text "You have a (your text) face."] 
	now body entry is "a square shoulder build with tight stomach, leading down into wide hips, large spring like thighs and feet.";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "[one of]rusty red fur[or]short furred[or]soft fur[at random]";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a thick muscled tail, being able to be used as a  third leg covered [skin of player] lightly thumbing on the ground with each movement. ";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "[one of]marsupial[or]kangaroo[at random]";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "your face draws forward into a kangaroo muzzle"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "your muscles switch moving lower as your bottom half now becomes a powerful spring board, leaving your upper half reasonably muscled."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "your flesh sprouts rusty red fur over the top and creamy beige along the bottom, being velvety soft to the touch"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "a thick powerful tail erupts from your backside, acting as a counter balance to your front acting as a third leg."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "your cock swells adding a more curved, looking like a S."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 14;
	now dex entry is 19;
	now sta entry is 17;					
	now per entry is 15;
	now int entry is 14;
	now cha entry is 11;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 35;			[ How many HP has the monster got? ]
	now lev entry is 5;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 9;			[Amount of Damage monster Does when attacking.]
	now area entry is "Red";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 10;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 8;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 7;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 10;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 3;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 45;			[ Amount player Libido will go up if defeated ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]

when play ends:
	if bodyname of player is "red kangaroo":
		if humanity of player is less than 10:
			say "Your mind slips away going into a more peaceful mode, wandering the city for fresh vegetation to eat quickly bounding away from startling events. You quickly find a place among other kangaroos becoming a flyer to the dominant male around.";
		otherwise:
			say "You quickly adapt to life outside, using the new found legs to become a track star, getting into the high jumps and long jumps to a very successful career. Your lovers find those legs to have some of the best cowgirl riding moments, with your tail being a great impromptu seat.";

to kangaroofy:
	repeat with y running from 1 to number of rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "red kangaroo":
			now monster is y;
			break;
	infect;
	infect;

[ Edit this to have the correct Name as wall]
Kangaroo ends here.