usestandardenemies();

var items = [];
var gooditems = [];
var otherstuff = [];
var goodotherstuff = [];

var commonlist_basic = [rand(["Enchanted Shield", "Blue Ocean", "Magic Shield"]), rand(["Vise Grip", "Nudge"])];
shuffle(commonlist_basic);

var commonlist_offensive = [
  rand(["Gumball Machine", "Thick Skin"]), 
  //"Dice Detonator",
  "Snapdragon", //Remove this later 
  "Moonlight Spear",
  "Sunburn",
  "Winds of Winter",
  "Magic Thistle",
  "Enchanted Bolt",
  "Magic Missile",
  rand(["Life Drain", "Bandage", "Healing Crystal"]), 
  "Slime Ball", 
  "Magic Dagger", 
  "Fury Spell", 
  "Magic Spear",
  "Hex",
  "Catastrophe",
  "Stormy Day"
];
shuffle(commonlist_offensive);
var commonlist_dicemanipulation = [
  "Northern Lights",
  "Bronze Cauldron", 
  "Blood Cauldron", 
  "Stew Pot", 
  "Saw Wave",
  "Subdivide",
  "Candle",
  "Illuminate", 
  "Glass Cauldron", 
  "Gold Cauldron", 
  "Silver Cauldron", 
  "Skeleton Key",
  "Counter Spell"
];
shuffle(commonlist_dicemanipulation);
var commonlist_spring = [
  "Flower Pot"
  "Honeysuckle"
];
shuffle(commonlist_spring);


if(chance(20)){
  commonlist_dicemanipulation.push("Lunasa");
}else if(chance(20)){
  commonlist_dicemanipulation.push("Crucible");
}else{
  commonlist_dicemanipulation.push("Spring Equinox");
}

//Floor 1:
items = [];
gooditems = [commonlist_basic.pop()];
otherstuff = [];
goodotherstuff = [];

addfloor("tiny")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();
  
//Floor 2:
commonlist_dicemanipulation = shuffle(commonlist_dicemanipulation);
commonlist_offensive = shuffle(commonlist_offensive);
		
items = [];
		
gooditems = [rand(["Mirror Cauldron", "Hall of Mirrors"])];
otherstuff = [
  health(), 
  health()
];

goodotherstuff = [
  shop(shuffle([commonlist_offensive.pop(), commonlist_dicemanipulation.pop(), commonlist_basic.pop()]))
];

addfloor("normal")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();
  	
//Floor 3:
items = [];
gooditems = [commonlist_dicemanipulation.pop()];
		
otherstuff = [
  health(), 
  health()
];

goodotherstuff = [
  shop(shuffle([commonlist_offensive.pop(), "Health", commonlist_spring.pop()]), [2, 3, 4])
];

addfloor("normal")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();
  
//Floor 4:
items = [];
gooditems = [rand(["Moon Beam", "Gladioli", "Enchanted Bolt", commonlist_dicemanipulation.pop(), commonlist_offensive.pop()])];
		
shuffle(commonlist_dicemanipulation);
shuffle(commonlist_offensive);
		
otherstuff = [
  health(),
  health()
];
goodotherstuff = [health(), health()];
		
addfloor("normal")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();
  
//Floor 5:
items = [];
gooditems = [];
otherstuff = [health(), health(), health()];
goodotherstuff = [
  shop(shuffle([rand(["Summer Solstice", "Winter Solstice", "Harvest Scythe"]), "Health", rand([commonlist_offensive.pop(), "Lightning Bolt", "Inferno", "Blizzard", "Shockwave"])]), [3, 4, 5])
];
		
addfloor("big")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();

//Floor 6:
items = [];
gooditems = [];
otherstuff = [];
goodotherstuff = [];

var lastfloor = addfloor("boss");

if (getfinalboss() == "Drake"){
  items.push("Wooden Stake");
}

lastfloor
  .additems(items, gooditems)
  .setlocation('BOSS')
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();