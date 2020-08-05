usestandardenemies();

var items = [];
var gooditems = [];
var otherstuff = [];
var goodotherstuff = [];

//Floor 1:
var commonlist1 = shuffle(["Leather Armor", "Bump", "Bandage", "Pickpocket", "Pea Shooter", "Snake Eye Charm", "Counterfeit", "Shotgun"]);
		
items = [commonlist1.pop()];

addfloor("tiny")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();
  
//Floor 2:
commonlist1.push("Healing Crystal");
commonlist1 = shuffle(commonlist1);

items = [commonlist1.pop()];
gooditems = [];

otherstuff = [health(), health()];
goodotherstuff = [shop(shuffle([commonlist1.pop(), commonlist1.pop(), commonlist1.pop()]))];

addfloor("normal")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();
  
//Floor 3:
var commonlist2 = ["Poison Needle", "Crowbar", "Magic Spear", "Teleport Spell", "Poison Slingshot"];
var rarelist1 = ["Dodge", "Hookshot", "Snake Eye Charm", "Midnight Charm", "Last Stand", "Staff"];

commonlist2 = shuffle(commonlist2);
rarelist1 = shuffle(rarelist1);
items = [commonlist2.pop()];
gooditems = [];

otherstuff = [
  health(),
  health()
];
goodotherstuff = [
  shop([commonlist2.pop(), commonlist2.pop(), commonlist1.pop()]),
  upgrade()
];

addfloor("normal")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();
  
//Floor 4:
var commonlist3 = ["Lockpick", "Iron Armor", "Blight", "Detonator", "Spatula", "Lantern"];
commonlist3 = shuffle(commonlist3);
items = [commonlist3.pop()];
gooditems = [];

var floor5item = commonlist3.pop();

commonlist3.push("Nudgeblade");
commonlist3 = shuffle(commonlist3);

otherstuff = [health(), health()];

var thieftrade;
if(chance(10)){
  thieftrade = trade(["lockpick"], ["Blender"]);
}else if(chance(10)){
  thieftrade = trade(["lockpick"], ["Rat"]);
}else{
  thieftrade = trade(["kunai", "hall of mirrors", "poison needle", "crowbar", "lockpick", "dagger"], ["Blight", "Catastrophe", "Glass Cauldron", "Six Shooter"]);
}

goodotherstuff = [
  shop([rarelist1.pop(), rarelist1.pop(), commonlist2.pop()]),
  thieftrade
];

addfloor("big")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();
  
 //Floor 5:
items = [floor5item];
gooditems = [];
otherstuff = [health(), health(), health()];
goodotherstuff = [
  shop(shuffle(["health", commonlist3.pop(), pick([rarelist1.pop(), commonlist2.pop()])])), 
  upgrade()
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
		