usestandardenemies();

var items = [];
var gooditems = [];
var otherstuff = [];
var goodotherstuff = [];

var warriorshops = ["Broadsword", "Iron Shield", "Buckler", "Snake Eye Charm", "Midnight Charm", "Healing Crystal", "Claw", "Snowball", "Boomerang", "Tazer", "First Aid Kit"];
shuffle(warriorshops);

var strangeshop = ["Spatula", "Lightning Rod", "Shriek", "Hammer", "Juggling Ball", "Toxic Ooze"];
strangeshop = shuffle(strangeshop);

//Floor 1:
items = [];
var awesomelist = ["Whip", "Toxic Ooze", "Claw", "Staff", "Hammer", "Shovel", "Battle Axe"];
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
gooditems = [pick(["Bump", "Nudge"])];
otherstuff = [health()];
goodotherstuff = [shop([warriorshops.pop(), warriorshops.pop(), "Delete"])];

addfloor("small")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();

//Floor 3:
items = [];
items.push(pick(["Bump", "Crystal Sword", "Chocolate Cookie", "Detonator", "Spatula"]));
gooditems = [];

otherstuff = [health(), health()];

goodotherstuff = [
  shop([warriorshops.pop(), warriorshops.pop(), "Delete"]),
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
items.push(pick(["Counter Spell", "Pea Shooter", "Chocolate Cookie", "Toxic Ooze", "Blight", "Detonator"]));
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
