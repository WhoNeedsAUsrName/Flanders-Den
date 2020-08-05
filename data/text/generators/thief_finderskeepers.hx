usestandardenemies();

var items = [];
var gooditems = [];
var otherstuff = [];
var goodotherstuff = [];

//Floor 1:
var commonlist1 = shuffle(["Chisel", "Bump", "Nudge", "Pickpocket", "Smush Together", "Paper Lantern"]);
		
items = [commonlist1.pop()];

addfloor("tiny")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();
  
//Floor 2:
commonlist1.push("Healing Crystal");
commonlist1 = shuffle(commonlist1);

items = [];
gooditems = [];

otherstuff = [health(), health()];
goodotherstuff = [shop(shuffle(["Counterfeit", commonlist1.pop(), commonlist1.pop()]))];

addfloor("small")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();
  
//Floor 3:
var commonlist2 = ["Lantern", "Bump pick", "First Aid Kit", "Staff", "Lockpick", "Poison Slingshot"];
var rarelist1 = ["Candle", "Hookshot", "Lantwern", "Midnight Charm"];

commonlist2 = shuffle(commonlist2);
rarelist1 = shuffle(rarelist1);
items = [];
gooditems = [];

otherstuff = [
  health(),
  health()
];
goodotherstuff = [
  upgrade(),
  upgrade()
];

addfloor("normal")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();
  
//Floor 4:
var commonlist3 = ["Lockpick", "Iron Armor", "Blight", "Detonator"];
commonlist3 = shuffle(commonlist3);
items = [];
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
  thieftrade = trade(["poison needle", "crowbar", "lockpick", "dagger"], ["Backstab", "Blight", "Catastrophe", "Glass Cauldron"]);
}

goodotherstuff = [
  thieftrade
];

addfloor("normal")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();
  
 //Floor 5:
items = [];
gooditems = [];
otherstuff = [health(), health(), health()];
goodotherstuff = [
  shop(shuffle(["health", commonlist3.pop(), pick([rarelist1.pop(), commonlist2.pop()])])), 
  upgrade()
];

addfloor("normal")
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
		