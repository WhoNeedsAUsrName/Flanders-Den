if (levelupselections.indexOf("Boosterpack:Charge!,Reflect,Reflect") > -1){ 
  Rules.substitute("Backfire", "Iron Shield"); 
  Rules.substitute("Emergency 4", "Reflect");
  Rules.substitute("Glass Salad", "Thick Skin");
  Rules.substitute("Bop,Bop,Bop", rand(["Meats,Reflect,Meats", "Meats,Charge!,Reflect", "Reflect,Reflect,Reflect"])); 
  Rules.substitute("Shrek,Shrek,Shrek", rand(["Reflect,Reflect,Reflect","Reflect,Reflect,Thick Skin"])); 
} 

if (levelupselections.indexOf("Boosterpack:Ice Shatter,Snowflake,Snowflake") > -1){ 
  Rules.substitute("Backfire", "Lament"); 
  Rules.substitute("Emergency 4", "Snowflake");
    Rules.substitute("Glass Salad", "Lament");
  Rules.substitute("Bop,Bop,Bop", rand(["Snowflake,Buzzer,Snowflake", "Boop,Snowball,Boop", "Boop,Lament,Boop"])); 
Rules.substitute("Shrek,Shrek,Shrek", rand(["Lament,Snowball,Lament","Snowball,Snowball,Snowball"])); 
}

if (levelupselections.indexOf("Boosterpack:Detonator,Liquorice,Liquorice") > -1){ 
  Rules.substitute("Backfire", "Claw");
  Rules.substitute("Emergency 4", "Liquorice");  
  Rules.substitute("Glass Salad", "Toxic Ooze");
  Rules.substitute("Bop,Bop,Bop", rand(["Liquorice,Liquorice,Liquorice", "Liquorice,Claw,Sweets", "Sweets,Liquorice,Sweets"])); 
Rules.substitute("Shrek,Shrek,Shrek", rand(["Claw,Claw,Claw","Liquorice,Liquorice,Claw"])); 
}

if (levelupselections.indexOf("Boosterpack:Low Voltage,Zap,Zap") > -1){ 
  Rules.substitute("Backfire", "Jackhammer"); 
  Rules.substitute("Emergency 4", "Zap");
  Rules.substitute("Glass Salad", "Low Voltage");
  Rules.substitute("Bop,Bop,Bop", rand(["Zap,Jackhammer,Zap", "Low Voltage,Lighter,Low Voltage"])); 
  Rules.substitute("Shrek,Shrek,Shrek", rand(["Zap,Zap,Vibe Grip","Jackhammer,Vibe Grip,Vibe Grip"])); 
}

if (levelupselections.indexOf("Boosterpack:Flame Blast,Lighter,Lighter") > -1){ 
  Rules.substitute("Backfire", "Staff"); 
  Rules.substitute("Emergency 4", "Lighter");
    Rules.substitute("Glass Salad", "Burning Light");
  Rules.substitute("Bop,Bop,Bop", rand(["Lighter,Lighter,Lighter", "Zap,Staff,Zap", "Ice Hard,Lighter,Ice Hard"])); 
  Rules.substitute("Shrek,Shrek,Shrek", rand(["Lighter,Lighter,Lighter","Burning Light,Burning Light,Flame Blast"])); 
}

if (levelupselections.indexOf("Boosterpack:Resonate,Beep,Beep") > -1){ 
  Rules.substitute("Backfire", "Resonate"); 
  Rules.substitute("Emergency 4", "Beep");
  Rules.substitute("Glass Salad", "Sonic Wave");
  Rules.substitute("Bop,Bop,Bop", rand(["Slap,Sharpened Bone,Slap", "Slap,Resonate,Slap"])); 
  Rules.substitute("Shrek,Shrek,Shrek", rand(["Resonate,Sharpened Bone,Sharpened Bone","Sharpened Bone,Resonate,Resonate"])); 
}

/*
if (levelupselections.indexOf("Boosterpack:Hijinx,Slapsies,Slapsies") > -1){ 
  Rules.substitute("Backfire", "Concentration"); 
  Rules.substitute("Emergency 4", "Slapsies");
    Rules.substitute("Glass Salad", "Hijinx");
  Rules.substitute("Bop,Bop,Bop", rand(["Hijinx,Mercy,Concentration", "Slapsies,Lojinx,Slapsies"])); 
  Rules.substitute("Shrek,Shrek,Shrek", rand(["Hijinx,Hijinx,Hijinx","Hijinx,Hijinx,Mercy"])); 
}

if (levelupselections.indexOf("Boosterpack:Flying Skull,Evil Laugh,Evil Laugh") > -1){ 
  Rules.substitute("Backfire", "Evil Laugh"); 
  Rules.substitute("Emergency 4", "Evil Laugh");
    Rules.substitute("Glass Salad", "Infestation");
  Rules.substitute("Bop,Bop,Bop", rand(["Evil Laugh,Evil Laugh,Evil Laugh", "Manic Laugh,Infestation,Manic Laugh"])); 
    Rules.substitute("Shrek,Shrek,Shrek", rand(["Evil Laugh,Infestation,Evil Laugh","Infestation,Infestation,Infestation"])); 
}
*/
//I'm not doing these

if (levelupselections.indexOf("Boosterpack:Woof Woof Woof,Ruff Ruff Ruff,Ruff Ruff Ruff") > -1){ 
	Rules.substitute("Backfire", "Yip Yip Yip"); 
	Rules.substitute("Emergency 4", "Ruff Ruff Ruff");
	Rules.substitute("Glass Salad", "Arf Arf Arf");
	Rules.substitute("Bop,Bop,Bop", rand(["Ruff Ruff Ruff,Arf Arf Arf,Ruff Ruff Ruff", "Ruff Ruff Ruff,Bow Wow Wow,Ruff Ruff Ruff"]));
	Rules.substitute("Shrek,Shrek,Shrek", rand(["Ruff Ruff Ruff,Arf Arf Arf,Ruff Ruff Ruff", "Ruff Ruff Ruff,Bow Wow Wow,Ruff Ruff Ruff"])); 
}

if (levelupselections.indexOf("Boosterpack:Harmony,Sharpened Bone,Sharpened Bone") > -1){ 
  Rules.substitute("Backfire", "Backing Track"); 
  Rules.substitute("Emergency 4", "Sharpened Bone");
  Rules.substitute("Glass Salad", "Sharpened Bone");
  Rules.substitute("Bop,Bop,Bop", rand(["Slap,Sharpened Bone,Slap", "Slap,Resonate,Slap"])); 
  Rules.substitute("Shrek,Shrek,Shrek", rand(["Resonate,Sharpened Bone,Sharpened Bone","Sharpened Bone,Resonate,Resonate"])); 
}

if (levelupselections.indexOf("Boosterpack:Charge!,Back Line,Back Line") > -1){ 
  Rules.substitute("Backfire", "Upkeep"); 
  Rules.substitute("Emergency 4", "Thick Skin");
  Rules.substitute("Glass Salad", "Back Line");
  Rules.substitute("Bop,Bop,Bop", rand(["Back Line,Fortify,Back Line","Thick Skin,Fortify,Thick Skin"])); 
  Rules.substitute("Shrek,Shrek,Shrek", rand(["Back Line,Thick Skin,Back Line","Thick Skin,Thick Skin,Thick Skin"])); 
}

if (levelupselections.indexOf("Boosterpack:[gray]Chomp,[gray]Grumble,[gray]Grumble") > -1){ 
  Rules.substitute("Backfire", "[gray]Digest"); 
  Rules.substitute("Emergency 4", "[gray]Grumble");
  Rules.substitute("Glass Salad", "[gray]Digest");
  Rules.substitute("Bop,Bop,Bop", rand(["Wolf's Bane,[gray]Grumble,[gray]Grumble","[gray]Grumble,[gray]Gurgle,[gray]Gurgle"])); 
  Rules.substitute("Shrek,Shrek,Shrek", rand(["Rotten Meats,[gray]Grumble,[gray]Grumble","[gray]Digest,[gray]Regurgitate,[gray]Digest"])); 
}