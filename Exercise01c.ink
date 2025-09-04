/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 * Variable types: integer, float, boolean
 * Variable assignment
 * Printing variables
 - Variable checking
 
 In the assignment:
*Add four more knots
*Assign at least TWO new variables through player choices
* Print at least one of the variables to the player in a passage
 - Check the value of a variable and have it do something

VAR health = 5
VAR pet_name = ""
VAR torches = 0



-> memory

== memory ==
Before you stand the cave of Josh. You wish your childhood pet was with you now. The cave might be less intimidating then. What was your pet's name?

* [Charlie]
    ~pet_name = "Charlie"
    -> cave_mouth
* [Susan]
    ~pet_name = "Susan"
    -> cave_mouth
* [Spot]
    ~pet_name = "Spot"
    -> cave_mouth
    
== cave_mouth ==
You are at the enterance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.

You made it to the cave. If only {pet_name} could see you now!

You have {torches} torches

+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torches > 0} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west

{pet_name == "Spot" : Spot would love it here in the west| }
+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
~ torches = torches + 1
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room.
-> END
*/

VAR archer = 0
VAR inventory =  "Nothing!"
-> opening

== opening ==
"Oh knight of legend, you must hurry, a great evil is coming for the kingdom" Your princess calls to you for adventure! You look around your cabin for gear and to your shock all you can find is your old training sword and shield, which is riddled with rust. Do you ..?
* [Set off anyways, you will find something along the way] -> bad_adventure
* [Head to the blacksmith] -> good_adventure

== bad_adventure ==
~ inventory = "Rusty sword and Shield"
You currently have {inventory} in your inventory
You set out of the kingdom feeling the thrill of adventure. You walk for a while until you find a monster camp. 'So close..where are they coming from?' You wonder. What will you do?
* [Sneak past, your looking for the root of the problem anyways]-> good_adventure2
* [Fight!] -> bad_ending
-> END
== good_adventure ==
You head to the blacksmith. You currently have enough currency to buy one item. What do you pick?
*[Bow and Arrows]-> ending2
*[Knight's Sword] -> ending3
-> END
== good_adventure2 ==
You currently have {inventory} in your inventory
You sneak past monsters and find a cave where some monsters appear to be hidden. You peak inside and see what appears to be a map. You make a note of the location marked on the map and start heading there. When you finally make it there you find a large black gate ans a bright red light illuminating from inside. You see what appears to be a monster guarding the gate. There appears to be no way in. What will you do?
*[Make a plan to sneak in] -> ending
*[Fight!] -> bad_ending
-> END
== bad_ending ==
You fight desperatley, however the monsters quickly overwhelm you and with your lack of gear, you find yourself fighting for your life. Suddenly you feel a piercing pain in your chest and realize you have been struck down. In your last few seconds of consiousness you recall your choices in this quest and you are left wondering- what went wrong?
-> END
==ending==
You currently have {inventory} in your inventory
You sneak into the base and see the Great Evil of legend, a large centaur wielding a glowing greatsword. Due to the weakness of your sword you try to avoid a head-on-head battle, you recall the legend and remember that he is especially weak to light. You set a trap and lure him outside and once he is in the light, you deal the final blow.
->END
==ending2==
~archer = archer + 1
~inventory = " Rusty Sword and shield and bow and arrows"
You currently have {inventory} in your inventory
You rush into the cave, using your arrows to blind the Great Evil- a large centaur wielding a glowing greatsword. Using your sword you disarm him and unlease a barrage of attacks until he falls.
->END
==ending3==
~inventory = "Rusty Shield and Knight's Sword"
You currently have {inventory} in your inventory
You challenge the Great Evil to a battle, cluching your sword tight. After what feels like hours of fighting, you both feel like you are going to fall at any moment. You hold onto your remaining energy as you use all your strength to drive a sword into the centaur's chest.
->END