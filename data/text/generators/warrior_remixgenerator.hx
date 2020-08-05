usestandardenemies();

var items = [];
var gooditems = [];
var otherstuff = [];
var goodotherstuff = [];

var warriorshops = ["Broadsword", "Iron Shield", "Dagger", "Buckler", "Target Shield", "Nightstick", "Blight", "Snake Eye Charm", "Midnight Charm", rand(["Healing Crystal", "Thick Skin", "Elastic Heart"]), "Claw", "Snowball", "Boomerang", "Tazer", rand(["First Aid Kit", "Kite Shield"]), "Parrying Dagger", "Boxing Gloves", "Last Stand", "Singularity", "Half Moon Charm", "Dramatic Exit", "Hookshot", "Capacitor"];
shuffle(warriorshops);

var strangeshop = ["Spatula", "Lightning Rod", "Can O' Beans", "Shriek", "Hammer", "Juggling Ball", "Toxic Ooze", "Candle", "Particle Accelerator", "Flying Skull", "Sledgehammer", "Slingshot", "Fishing Net", "Scissors"];
strangeshop = shuffle(strangeshop);

//Floor 1:
items = [];
var awesomelist = ["Whip", "Toxic Ooze", "Banter", "Claw", "Staff", "Hammer", "Shovel", "Battle Axe", "Trident", "Fishing Net", "Gemstone Staff", "Sledgehammer", "Nail Bat", "Quarterstaff"];
awesomelist = shuffle(awesomelist);
gooditems = [awesomelist.pop()];
otherstuff = [];
goodotherstuff = [];

addfloor("tiny")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();

//Floor 2:
items = [];
var newdicemanipulator = shuffle(["Bump", "Lucky Roll", "Candle"]);
gooditems = [newdicemanipulator.pop()];
otherstuff = [health()];
goodotherstuff = [shop([warriorshops.pop(), warriorshops.pop(), warriorshops.pop()])];

addfloor("small")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();

//Floor 3:
items = [];
items.push(pick(["Bump", "Six Shooter", "Crystal Sword", "Hot Pepper Cookie", "Chocolate Cookie", "Blight", "Detonator", "Spatula", "Scissors", "Battle Cry", "Sine Wave", "Last Stand", "Fireworks", newdicemanipulator.pop()]));
gooditems = [];

otherstuff = [health(), health()];

goodotherstuff = [
  shop([warriorshops.pop(), warriorshops.pop(), warriorshops.pop()]),
  upgrade()
];

addfloor("normal")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();
  
//Floor 4:
items = [];
gooditems = [awesomelist.pop()];

otherstuff = [health()];
goodotherstuff = [
  trade(["weapon", "shield"], [awesomelist.pop()])
];

addfloor("normal")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();
  
//Floor 5:
items = [];
items.push(pick(["Counter Spell", "Pea Shooter", "Chocolate Cookie", "Toxic Ooze", "Blight", "Detonator", "Disco Ball", "Parrying Dagger", "Sine Wave", "Fishing Net", "Last Stand", "Fireworks"]));
gooditems = [];

otherstuff = [health(), health()];
goodotherstuff = [
  upgrade(),
  shop(["upgrade", strangeshop.pop(), "health"], [4, 4, 4])
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
		