//To do: document this properly, complete this guide.
//
//When this script starts, an empty Dungeon is created with zero floors.
//
//  addfloor(template) 
//    Creates a new floor - this becomes the new "top floor" of the dungeon. returns a "floor" object.
//    Layout is based on the template, loaded from the data/text/levels/ folder.
//    Matches any level file that contains the string "template", so "tiny" will match "graph_tiny1", "graph_tiny2", etc
//
//  floor.additems(normallist, goodlist)
//    Items that can be found on this floor, as an array of strings.
//    (In general, the normal list is close to where the player starts, and the good list is near the staircase.)
//
//  floor.addenemies(normallist, hardlist)
//    Enemies that can be found on this floor, as an array of strings. If you set usestandardenemies(true), then
//    you shouldn't need to do this - the game will automatically distribute enemies throughout a normal dungeon layout.
//    (In general, the normal list is close to where the player starts, and the good list is near the staircase.)

usestandardenemies();

var items = [];
var gooditems = [];
var otherstuff = [];
var goodotherstuff = [];

var jester_dice_pool = ["Vise Grip", "Spatulasword", "Vibe Grip", "Snake Eye Charm", "Midnight Charm", "Meats", "Can O' Beans", "Bump", "Cauldron", "Half Moon Charm", "Clockpicks"];
var jester_damage_pool = ["Slap", "Wrecking Ball", "Telephone", "Missing Score", "Elastic Heart", "Juggling Ball", "Slap", "Backfire", "Blood Suck"];

jester_dice_pool = shuffle(jester_dice_pool);
jester_damage_pool = shuffle(jester_damage_pool);

//Floor 1:
addfloor("small")
  .additems([rand(["Snoot", "Rolling Ball"])], [])
  .additems([rand(["Wrecking Ball", "Rolling Ball"])], [])
  .generate();
  
//Floor 2:
items = [];
gooditems = [jester_dice_pool.pop()];
otherstuff = [
  health(), 
  health()
];
goodotherstuff = [
  shop(["Emergency 4", "Backfire", "Delete"], [2, 2, 1]),
  upgrade()
];

addfloor("normal")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();

//Floor 3:
items = [jester_dice_pool.pop()];
gooditems = ["Shrek,Shrek,Shrek"];
otherstuff = [
  health(), 
  shop(["Emergency 4", "Glass Salad", "Emergency 4"], [2, 2, 1]),
];
goodotherstuff = [
  shop([jester_dice_pool.pop(), jester_damage_pool.pop(), "Delete"])
];

addfloor("big")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();

//Floor 4
items = [];
gooditems = ["Bop,Bop,Bop"];

jester_dice_pool.push("Shadow Dice");
jester_dice_pool.push("Mirror Shard");
jester_dice_pool.push("Blood Let");
jester_dice_pool.push("Illuminate");
jester_dice_pool.push("Hall of Mirrors");
jester_dice_pool = shuffle(jester_dice_pool);

otherstuff = [
  health(), 
  upgrade()
];
goodotherstuff = [
  shop([jester_dice_pool.pop(), jester_damage_pool.pop(), jester_dice_pool.pop()]),
  copyshop()
];

addfloor("big")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();
  
//Floor 5
items = [];
gooditems = [];
otherstuff = [health(), health(), health()];
goodotherstuff = [rand([upgrade(), copyshop()])];

addfloor("normal")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();

// Floor 6:			
items = [];
gooditems = [];
otherstuff = [];
goodotherstuff = [];

usestandardenemies(false);
var finalboss:String = level6enemies.pop();
if (finalboss == "Drake"){
  items.push("Wooden Stake,Wooden Stake");
}

addfloor("boss")
  .addenemies([], [finalboss])
  .setlocation('BOSS')
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();