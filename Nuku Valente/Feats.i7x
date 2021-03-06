Version 1 of Feats by Nuku Valente begins here.

"Controls feats for Flexible Survival"

Section 1 - Basic Feats

basic feats is a featset.
A featset can be functional. A featset is usually not functional.
basic feats is functional.
fun feats is a featset.
featunlock is a number that varies.	[linked to Dr Matt/Dr Mouse hospital quest]
autofeatloading is a truth state that varies. autofeatloading is usually false.

The player has a number called featgained.

Featgetting is an action applying to nothing.
understand "volunteer" as featgetting.

Check featgetting:
	if hp of doctor matt is 0, say "Volunteer for what now? You are a strange person. Considering what game this is, that says a lot!" instead;
	if featgained of player is greater than ( ( level of player divided by 3 ) + foodwaterbonus + nerminefeat ), say "You do not yet qualify for more feats." instead; 
	if hp of doctor matt <= 100:
		if doctor matt is not visible, say "Only Doctor Matt knows how to do this." instead;
	otherwise:
		if doctor mouse is not visible, say "You should see Dr Mouse about that." instead;

carry out featgetting:
	featget;

[
	blank out the whole of table of gainable feats;
	repeat with x running through functional featsets:
		try addfeating x;
	if there is no title in row 1 of table of gainable feats:
		say "There are no feats to gain!";
		wait for any key;
	otherwise:
		change the current menu to table of Gainable Feats;
		carry out the displaying activity;
]

Featqualified is a number that varies.
Featqualified is usually 0.
 
To Featget:
	blank out the whole of table of gainable feats;
	repeat with x running through functional featsets:
		try addfeating x;
	if there is no title in row 1 of table of gainable feats:
		say "There are no feats to gain!";
		wait for any key;
	otherwise:
		[change the current menu to table of Gainable Feats;
		carry out the displaying activity;]
		now featqualified is 1;
		while 1 is 1:
			repeat with y running from 1 to number of filled rows in table of gainable feats:
				choose row y from the table of gainable feats;
				say "[link][y] - [title entry][as][y][end link][line break]";
			say "[link]0 - ABORT[as]0[end link][line break]";
			say "Type the number corresponding to the feat you want> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of gainable feats:
				now current menu selection is calcnumber;
				follow the gainfeat rule;
				if featqualified is 0, break;
			otherwise if playerinput matches "0":	[do not use calcnumber, as non-numbers will return 0]
				say "Selection aborted.";
				continue the action;
			otherwise:
				say "Invalid Feat.";

featgrabbing is an action applying to one topic.

understand "featgrab [text]" as featgrabbing.
 
 Check featgrabbing:
	if featqualified is 0:
		say "You are not ready to learn a new feat." instead;

Carry out featgrabbing:
	say "I think you are trying to grab the feat of [topic understood in lower case].";


[
To FunFeatget:
	blank out the whole of table of gainable feats;
	repeat with x running through not functional featsets:
		try addfeating x;
	if there is no title in row 1 of table of gainable feats:
		say "There are no feats to gain!";
		wait for any key;
	otherwise:
		change the current menu to table of Gainable Feats;
		carry out the displaying activity;
	decrease featgained of player by 1;
]

 To FunFeatget:
	blank out the whole of table of gainable feats;
	repeat with x running through not functional featsets:
		try addfeating x;
	if there is no title in row 1 of table of gainable feats:
		say "There are no feats to gain!";
		wait for any key;
	otherwise:
		[change the current menu to table of Gainable Feats;
		carry out the displaying activity;]
		now featqualified is 1;
		while 1 is 1:
			repeat with y running from 1 to number of filled rows in table of gainable feats:
				choose row y from the table of gainable feats;
				say "[link][y] - [title entry][as][y][end link][line break]";
			say "[link]0 - ABORT[as]0[end link][line break]";
			say "Type the number corresponding to the feat you want> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of gainable feats:
				now current menu selection is calcnumber;
				follow the gainfeat rule;
				decrease featgained of player by 1;
				if featqualified is 0, break;
			otherwise if playerinput matches "0":	[do not use calcnumber, as non-numbers will return 0]
				say "Selection aborted.";
				continue the action;
			otherwise:
				say "Invalid Feat.";

Addfeating is an action applying to one thing.

carry out addfeating:
	say "Tuna";

To addfeat (x - text) with (y - text):
	if x is not listed in feats of player:
		choose a blank row in table of Gainable Feats;
		now title entry is X;
		now toggle entry is gainfeat rule;
		now description entry is Y;


instead of addfeating the fun feats:
	if "Female Preferred" is not listed in feats of player and "Herm Preferred" is not listed in feats of player and ( isHellhound is false or ( isHellhound is true and maleHound is true ) ):
		addfeat "Male Preferred" with "You will reject female mutation.";
	if "Male Preferred" is not listed in feats of player and "Herm Preferred" is not listed in feats of player and ( isHellhound is false or ( isHellhound is true and maleHound is false ) ):
		addfeat "Female Preferred" with "You will reject male mutation.";
	if "Male Preferred" is listed in feats of player:
		if "Flat Chested" is not listed in feats of player, addfeat "Breasts" with "Despite being all male, you still grow breasts, curious.";
	otherwise:
		if "Breasts" is not listed in feats of player, addfeat "Flat Chested" with "Your chest tends to remain flat.";
	if "Female Preferred" is not listed in feats of player and "Herm Preferred" is not listed in feats of player and "Male Preferred" is not listed in feats of player:
		addfeat "Single Sexed" with "You can be male, or female, but not both.";
	if "Female Preferred" is not listed in feats of player and "Male Preferred" is not listed in feats of player and isHellhound is false:
		addfeat "Herm Preferred" with "You more easily stay in the wonderful world of dual gendership";
	if "Modest Organs" is not listed in feats of player or "Passing Grade Chest" is not listed in feats of player:
		addfeat "One Way" with "You can only grow larger, not smaller, sexually - barring specific effects.";
	if "One Way" is not listed in feats of player or "Passing Grade Chest" is not listed in feats of player:
		addfeat "Modest Organs" with "Your growth is restricted, preventing wildly overgrown bits, barring specific effects.";
	if ("Modest Organs" is not listed in feats of player or "One Way" is not listed in feats of player ) and "Flat Chested" is not listed in feats of player:
		addfeat "Passing Grade Chest" with "Your breasts will never fail a test, and will remain D cupped or smaller, barring specific effects. If they do become too large, they will shrink rapidly back into line.";
	if "All The Things" is not listed in feats of player:
		addfeat "Just One" with "You will only grow one cock, and only one cunt, never more. Possibly less.";
	if "Bouncy Bouncy" is not listed in feats of player:
		addfeat "One Pair" with "You will not grow more than two breasts.";
	if "Just One" is not listed in feats of player or "One Way" is listed in feats of player:
		addfeat "All The Things" with "Your groin seems to believe [']the more the merrier['].  Outside of a gender change, you will keep any [']extras['] you pick up.";
	if "One Pair" is not listed in feats of player:
		addfeat "Bouncy Bouncy" with "It seems that your body likes breasts a lot.  You won't be loosing any that you might gain.";
	addfeat "Singular" with "You are not one to go in half way. Whatever form your torso takes, the rest tends to follow.";
	addfeat "Like Attracts Like" with "You will attract more monsters similar to yourself.";
	addfeat "Bad Luck" with "You may end up in back-to-back fights occasionally.";
	if "Cold Fish" is not listed in feats of player:
		addfeat "Horny Bastard" with "You just can't get enough. Every few hours your libido raises all on its own.";
	if "Horny Bastard" is not listed in feats of player:
		addfeat "Cold Fish" with "Your libido will decrease over time.";
	addfeat "Control Freak" with "When you win a battle, you may choose if you wish to engage in the post battle activities or not.";
	if "Breeding True" is not listed in feats of player and "Sterile" is not listed in feats of player:
		addfeat "They Have Your Eyes" with "Any child you have will appear exactly as you at time of birth.";
	if "They Have Your Eyes" is not listed in feats of player and "Sterile" is not listed in feats of player:
		addfeat "Breeding True" with "All new children you have will resemble their father.";
	if "Sterile" is not listed in feats of player:
		addfeat "Litter Bearer" with "Greatly increases the chance of multiple children in one birth - twins or more at over 50% chance.";
	if "Fertile" is listed in feats of player:
		addfeat "Selective Mother" with "You can decide if you want to become pregnant.";
	addfeat "Curious" with "You enjoy poking around everywhere, increasing your chance of finding stuff while exploring or hunting... including trouble.";
	addfeat "Kinky" with "Submitting to crazy beasts is right up your alley, and you gain morale when you do so. Being beat up still lowers it.";
	addfeat "Submissive" with "Gain extra XP for submitting to monsters.  You may find submitting so much fun you do it spontaneously from time to time.";
	addfeat "Instinctive Combat" with "With all the changes, you've gained new instincts on how to fight.  You may choose [bold type]auto attack normal/berserk/pass/coward/submit[roman type].";[put next to submissive because that seemed logical.  move elsewhere if so desired.]
	if featunlock is 1:	[available after hospital quest]
		addfeat "Perky" with "You are of positive spirits, regaining morale gradually and +20% max morale.";
	if "Pure" is not listed in feats of player, addfeat "Corrupt" with "You have a weaker grip on your humanity.";
	if "Corrupt" is not listed in feats of player, addfeat "Pure" with "You have a stronger grip on your humanity.";
	addfeat "Junk Food Junky" with "Junk food is better for you than regular food and water.";
	addfeat "City Map" with "You have better recall of the city layout and remember where most major landmarks are.";

instead of addfeating the basic feats:
	addfeat "Survivalist" with "You are great at scavenging. When doing such, you get a +4 to finding things.";
	addfeat "Roughing It" with "You can take a quick nap w/o a cot anywhere... just sleep with one eye open.";
	if featunlock is 1:	[available after hospital quest]
		addfeat "Gas Cloud" with "Create a dissipating cloud to help you flee.";
	if "Sterile" is not listed in feats of player, addfeat "Fertile" with "You are especially good at producing children. Increase to chance of multiple.";
	if "Fertile" is not listed in feats of player, addfeat "Sterile" with "You are incapable of mothering a child.";
	if "Fertile" is listed in feats of player:
		addfeat "Maternal" with "You love children.  Faster gestation and improves morale from childbirth.";
	if number of entries in childrenfaces is greater than 0:
		addfeat "Spirited Youth" with "Your child will lend their aid in combat, occasionally dealing damage to the enemy.";
	if "Spirited Youth" is listed in feats of player and number of entries in childrenfaces is greater than 2:
		addfeat "Youthful Tides" with "Once in a while, all of your kids will swarm to your aid in battle.";
	if charisma of player is greater than 14:
		addfeat "Haggler" with "You are an especially skilled haggler. Sometimes, you end up with two of what you are trading for!";
		if player is not lonely:
			addfeat "Good Teacher" with "Your pets gain levels much more quickly than normal.";
	if featunlock is 1:	[available after hospital quest]
		if charisma of player is greater than 14 and intelligence of player > 12:
			if "Good Teacher" is listed in feats of player:
				addfeat "Ringmaster" with "You will gain full xp while training your pets.";
		if charisma of player is greater than 16 and number of entries in list of tamed pets > 2:
			addfeat "The Horde" with "Your pets will sometimes organize a full-on counterstrike.";
		if charisma of player > 11:
			addfeat "Flash" with "Your skin/fur/scales will occasionally flash bright light, reducing your foe's chance to hit.";
		if charisma of player > 13:
			if "Flash" is listed in feats of player:
				addfeat "Dazzle" with "Your flash can now sometimes bedazzle your enemy, making them lose their chance to retaliate.";
	if stamina of player > 11:
		addfeat "Hardy" with "Increase your max HP by 8.";
	if featunlock is 1:	[available after hospital quest]
		addfeat "Rapid Healing" with "Increased healing during recovery time and minor increase to healing items.";
		if stamina of player > 16 and "Rapid Healing" is listed in feats of player:
			addfeat "Regeneration" with "Further increased healing based on level and from healing items.";
	if stamina of player is greater than 14 and "Automatic Survival" is not listed in feats of player:
		addfeat "Spartan Diet" with "You don't need 2 liters of water and great feasts to keep you going! You become thirsty and hungry slower.";
	if stamina of player is greater than 14:
		addfeat "Iron Stomach" with "Your belly has nano resistance! Eating or drinking infectious items fails to change you.";
		addfeat "Toughened" with "You take less damage than others(-20% damage)";
	if scenario is "Researcher" and ( intelligence of player > 14 or level of player >= 9 ):
		addfeat "Expert Researcher" with "Your expert skills allow you a second opportunity to get an infection vial.";
	if intelligence of player is greater than 14:
		addfeat "Fast Learner" with "You assimilate new information rapidly. -20% xp needed to level.";
		addfeat "Expert Medic" with "You are especially good at using medkits, +25% hitpoints restored per use, and a 20% chance of saving a kit when it should be lost.";
	if intelligence of player is greater than 12 and ( bodyname of player is not "human" or facename of player is not "human" ):
		addfeat "Know Thyself" with "By thinking like an enemy that has infected you, you know better how to deal with them and gain a +0 to +2 bonus to hit matching enemies each round.  Thinking with your other head gradually gets your infected loins more excited as well.  You gain more xp from these fights as well.";
	if intelligence of player > 15 and level of player > 5:
		addfeat "Weaponsmaster" with "Your experience and knowledge allow you to assess a weapon's worth and wield it better.";
	addfeat "Wary Watcher" with "Always on guard, creatures won't gain first strike on you.";
	if perception of player is greater than 14:
		addfeat "Magpie Eyes" with "You love shining things. Especially shining things on the defeated bodies of your enemies. Increased odds of drops.";
		addfeat "Expert Hunter" with "Your chances of hunting a specific critter with the hunt command increases.";
		if "Expert Hunter" is listed in feats of player:
			addfeat "Master Baiter" with "You are virtually assured victory when hunting a specific creature.";
	if dexterity of player is greater than 14:
		if "Stealthy" is listed in feats of player or "Wary Watcher" is listed in feats of player or perception of player > 14:
			addfeat "Experienced Scout" with "You have a chance of avoiding a random fight altogether if you so wish it.";
	if dexterity of player is greater than 14:
		addfeat "Stealthy" with "Your chance of running into a monster is decreased while you are scavenging or exploring.";
		addfeat "Martial Artist" with "You have basic martial arts training, increasing the damage you cause when you have no weapon.";
		if "Martial Artist" is listed in feats of player:
			addfeat "Black Belt" with "Your martial artistry is amazing. Your damage increases further while unarmed, and you have a small (10%) chance of avoiding hits that would otherwise have landed.";
			addfeat "Natural Armaments" with "You gain additional power based on the mutation of your body, borrowing the natural weapons of your infection.";
	if dexterity of player > 11:
		if cock length of player >= 12:
			addfeat "Cock Slap" with "Smack around your foes with your oversized meat to show them who's boss.";
		if cock width of player >= 16:
			addfeat "Ball Crush" with "Slam your heavy ballsac down onto your enemy to show them who's a real man.";
		if breast size of player > 2 and ( breast size of player + ( breasts of player / 2 ) ) >= 7:
			addfeat "Boob Smother" with "Smother your foes in your pillowy rack.";
	if featunlock is 1:	[available after hospital quest]
		if dexterity of player > 14:
			addfeat "Tail Strike" with "If available, you may randomly score an additional hit with your monstrous tail.";
		if strength of player > 14:
			addfeat "Powerful" with "Boosts your potential damage by up to 25%.";
		if dexterity of player > 16 and "Powerful" is listed in feats of player:
			addfeat "Mayhem" with "Random increase in damage based on level.";
	if strength of player is greater than 14:
		addfeat "Strong Back" with "You can carry impressive amounts of stuff. +50 lb tolerance.";
	if level of player is greater than 1:
		addfeat "More Time" with "You have some more precious time. Though who'd want to stay around here longer? Weirdo!";
	addfeat "Automatic Survival" with "You forage a little here, a little there. This is a mildly cheating feat, taking it will impact your score negatively, but will remove food and water as a concern.";
	if hp of doctor matt is greater than 4:
		addfeat "Microwaved" with "Thanks to the good advice, you have a great idea! If you can clean water, why not yourself? Genius. Gives you a very potent resistance to species reassignment.";
	if featunlock is 1:	[available after hospital quest]
		if "Mutable" is not listed in feats of player:
			addfeat "Resistant" with "You are more resistant to random physical changes from infection.";
		if "Resistant" is not listed in feats of player:
			addfeat "Mutable" with "You are more prone to physical changes from mutation.";
		addfeat "Mighty Mutation" with "You can gain(and lose) stats from mutants.";
		if "Mighty Mutation" is listed in feats of player:
			addfeat "Bestial Power" with "Your body will no longer drop in stats from random mutation.";


This is the gainfeat rule:
	choose row Current Menu Selection in table of gainable feats;
	let nam be title entry;
	if autofeatloading is false, say "Are you sure you want '[title entry]': [description entry][line break]?";
	if autofeatloading is true or player consents:
		add nam to feats of player;
		say "You have gained '[nam]'!";
[		decrease menu depth by 1;			]
		increase featgained of player by 1;
		if nam is "Automatic Survival", decrease score by 600;
		if nam is "More Time", extend game by 24;
		now Featqualified is 0;
		if nam is "Hardy":
			increase maxhp of player by 8;
			increase hp of player by 8;
		if nam is "City Map":
			now Beach Plaza is known;			
			now Outside Trevor Labs is known;			
			Now Smith Haven Mall Lot South is known;
			now Park Entrance is known;			
			now City Hospital is known;			
			Now State fair is known;
			Now Approaching the Capitol Building is known;
			Now Government Assistance is resolved;	[removes the random event for discovering the Capitol Bldg]
			Now Plant Overview is known;
			now Ravaged Power Plant is resolved;	[removes the random event for discovering the power plant]
			now College Campus is known;
			now Reaching the College is resolved;	[removes the random event for discovering the College Campus]
			Now Entrance to the Red Light District is known;
			Now Entrance to the High Rise District is known;
			Now Zoo entrance is known;
			Now Dry Plains is known;
			Now Museum Foyer is known;
		if nam is "Instinctive Combat":
			say "     Having gained the [']Instinctive Combat['] feat, you now have access to the 'Auto Attack' command.  These are the same as picking the same option over and over again during combat.  No different results, just less typing for faster gameplay.[line break]Type [bold type][link]auto attack normal[end link][roman type] for the default method of combat (choose each action).[line break]Type [bold type][link]auto attack berserk[end link][roman type] to always attack in combat.[line break]Type [bold type][link]auto attack pass[end link][roman type] to always pass in combat.[line break]Type [bold type][link]auto attack coward[end link][roman type] to always flee in combat.[line break]Type [bold type][link]auto attack submit[end link][roman type] to always submit in combat.[line break]You may review these commands at any time by using the [link]help[end link] command.";
	if autofeatloading is false, wait for any key;
	if autofeatloading is false, clear the screen and hyperlink list;

Feats ends here.