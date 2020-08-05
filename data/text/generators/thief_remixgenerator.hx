// should contain the more standard equipment
usestandardenemies();

var items = [];
var gooditems = [];
var otherstuff = [];
var goodotherstuff = [];

//Floor 1:
var chiselorcandle = ["Chisel", "Candle", "Splitdle"];
chiselorcandle = shuffle(chiselorcandle);

var commonlist1 = shuffle(["Crow's Egg", "Bump pick", "Rat", "Trapped Rat", "New Moon Charm", "Snoot", "Cloak", chiselorcandle.pop(), "Plaster", "Dramatic Exit", "Blast Chiller", "Square Pair", "Bump", "Tetrashootia", "Snek Sphere Charm"]);
		
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
goodotherstuff = [shop(shuffle([rand(["Rexing Fall", "Befuddle", "Can O' Beans", "Counterfeit",chiselorcandle.pop()]), commonlist1.pop(), commonlist1.pop()]))];

addfloor("normal")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();
  
//Floor 3:
var commonlist2 = [rand(["Paper Lantern", "Lantern"]), "Miner Forty Niner", "Last Stand", "Kite Shield", "Tetrashootia", "ImpHail", "Chisel", "Lucky 7", "First Aid Kit", rand(["Staff", "Gemstone Staff"]), "Lockpick", "Poison Slingshot"];
var rarelist1 = ["Crow's Egg", "Explosive Antidote", "Crow's Wall", "Dramatic Entrance", "Dragon's Dagger","Banter", "Raw Ambition", "Hookshot", "Determination","Stormy Day", "Dodge", "Midnight Charm"];

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
var commonlist3 = [chiselorcandle.pop(), "Secret Weapon", rand(["Splitula", "Spatula"]), "Red Glare", "Legger", "Iron Armor", "Blight", "Detonator", "Daffokill"];
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
  thieftrade = trade(["master key", "nunchucks", "lockpick", "dagger", "any"], ["Jankery", "Hot Pepper Cookie", "Mirror Slash", "Mirror's Edge", "Mechanical Leg", "Determination", "Broken Mirror", "Catastrophe", "Wacker Dacker"]);
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
		