// Should have the charge equips and normal equips
usestandardenemies();

var items = [];
var gooditems = [];
var otherstuff = [];
var goodotherstuff = [];

//Floor 1:
var chiselorcandle = ["Chisel", "Candle"];
chiselorcandle = shuffle(chiselorcandle);

var commonlist1 = shuffle(["Dragon's Saddle", "Bolt Pouch", "Arrow Tip", "Prepared Entrance", "Crow's Egg", "Rat", "Trapped Rat", "New Moon Charm", "Snoot", chiselorcandle.pop(), "Dramatic Exit", "Square Pair", "Bump"]);
		
items = [commonlist1.pop()];

var tempfloor = addfloor("tiny")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();

//Floor 2:
commonlist1.push("Thick Skin");
commonlist1.push("Healing Crystal");
commonlist1.push("Combat Hatchet");
commonlist1 = shuffle(commonlist1);

items = [commonlist1.pop()];
gooditems = [];

otherstuff = [health(), health()];
goodotherstuff = [shop(shuffle([rand(["Compound Bow", "Ice Bow", "Atomic Microscope", "Energy To Blood", "Energized Blade", "Power Suit", "Can O' Beans", "Counterfeit",chiselorcandle.pop()]), commonlist1.pop(), commonlist1.pop()]))];

addfloor("normal")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();
  
//Floor 3:
var commonlist2 = [rand(["Paper Lantern", "Lantern"]),"Gunburn", "Power Pot", "Missle Thistle", "Laserbeam@yeeboibecausethisisprobobalyinanothemod", "Miami Vacation", "Hotline Milwakee", "Kite Shield", "Tetrashootia", "Chisel", "Lucky 7", "First Aid Kit",  "Lockpick"];
var rarelist1 = ["Large Steel", "Prepared Entrance", "Dramatic Entrance", "Banter", "Hookshot", "Stormy Day", "Midnight Charm"];

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
var commonlist3 = [chiselorcandle.pop(), "Quiver", "Secret Weapon", rand(["Splitula", "Spatula"]), "Iron Armor", "Daffokill"];
commonlist3 = shuffle(commonlist3);
items = [commonlist3.pop()];
gooditems = [];

var floor5item = commonlist3.pop();

commonlist3.push("Table Slam");
commonlist3.push("Nudgeblade");
commonlist3 = shuffle(commonlist3);

otherstuff = [health(), rand([health(), upgrade()])];

var thieftrade;
if(chance(10)){
  thieftrade = trade(["master key", "lockpick", "berlin key", "nunchucks", "dagger", "any"], ["Blender"]);
}else if(chance(10)){
  thieftrade = trade(["master key", "lockpick", "berlin key", "nunchucks", "dagger", "any"], ["Doppeltwice"]);
}else if(chance(10)){
  thieftrade = trade(["master key", "lockpick", "berlin key", "nunchucks", "dagger", "any"], ["Ungeradedice"]);
}else{
  thieftrade = trade(["master key", "nunchucks", "lockpick", "dagger", "any"], ["Jankery", "Hot Pepper Cookie", "Mirror Slash", "Mirror's Edge", "Mechanical Leg", "Determination", "Broken Mirror", "Catastrophe", "Wacker Dacker", "Laserlight Spear"]);
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
		