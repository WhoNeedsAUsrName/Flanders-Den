if (levelupselections.indexOf("Boosterpack:Shield Bash,Deflect,Deflect") > -1){ 
  Rules.substitute("Backfire", "Iron Shield"); 
  Rules.substitute("Emergency 4", "Deflect");
  Rules.substitute("Glass Salad", "Thick Skin");
  Rules.substitute("Bop,Bop,Bop", rand(["Sweets,Deflect,Sweets", "Sweets,Shield Bash,Deflect", "Deflect,Deflect,Deflect"])); 
} 

if (levelupselections.indexOf("Boosterpack:Ice Shatter,Snowflake,Snowflake") > -1){ 
  Rules.substitute("Backfire", "Lament"); 
  Rules.substitute("Emergency 4", "Snowflake");
    Rules.substitute("Glass Salad", "Lament");
  Rules.substitute("Bop,Bop,Bop", rand(["Snowflake,Buzzer,Snowflake", "Boop,Snowball,Boop", "Boop,Lament,Boop"])); 
}

if (levelupselections.indexOf("Boosterpack:Detonator,Liquorice,Liquorice") > -1){ 
  Rules.substitute("Backfire", "Claw");
  Rules.substitute("Emergency 4", "Liquorice");  
  Rules.substitute("Glass Salad", "Toxic Ooze");
  Rules.substitute("Bop,Bop,Bop", rand(["Liquorice,Liquorice,Liquorice", "Liquorice,Claw,Sweets", "Sweets,Liquorice,Sweets"])); 
}

if (levelupselections.indexOf("Boosterpack:High Voltage,Buzzer,Buzzer") > -1){ 
  Rules.substitute("Backfire", "Hammer"); 
  Rules.substitute("Emergency 4", "Buzzer");
    Rules.substitute("Glass Salad", "High Voltage");
  Rules.substitute("Bop,Bop,Bop", rand(["Buzzer,Hammer,Buzzer", "High Voltage,Spark,High Voltage"])); 
}

if (levelupselections.indexOf("Boosterpack:Flame Blast,Spark,Spark") > -1){ 
  Rules.substitute("Backfire", "Whip"); 
  Rules.substitute("Emergency 4", "Spark");
    Rules.substitute("Glass Salad", "Burning Light");
  Rules.substitute("Bop,Bop,Bop", rand(["Spark,Spark,Spark", "Buzzer,Whip,Buzzer", "Snowflake,Spark,Snowflake"])); 
}

if (levelupselections.indexOf("Boosterpack:Resonance,Whisper,Whisper") > -1){ 
  Rules.substitute("Backfire", "Resonance"); 
  Rules.substitute("Emergency 4", "Whisper");
  Rules.substitute("Glass Salad", "Sonic Wave");
  Rules.substitute("Bop,Bop,Bop", rand(["Boop,Sonic Wave,Boop", "Boop,Resonance,Boop"])); 
}

if (levelupselections.indexOf("Boosterpack:Hijinx,Slapsies,Slapsies") > -1){ 
  Rules.substitute("Backfire", "Concentration"); 
  Rules.substitute("Emergency 4", "Slapsies");
    Rules.substitute("Glass Salad", "Hijinx");
  Rules.substitute("Bop,Bop,Bop", rand(["Hijinx,Mercy,Concentration", "Slapsies,Lojinx,Slapsies"])); 
}

if (levelupselections.indexOf("Boosterpack:Flying Skull,Evil Laugh,Evil Laugh") > -1){ 
  Rules.substitute("Backfire", "Evil Laugh"); 
  Rules.substitute("Emergency 4", "Evil Laugh");
    Rules.substitute("Glass Salad", "Infestation");
  Rules.substitute("Bop,Bop,Bop", rand(["Evil Laugh,Evil Laugh,Evil Laugh", "Manic Laugh,Infestation,Manic Laugh"])); 
}

if (levelupselections.indexOf("Boosterpack:Woof Woof Woof,Ruff Ruff Ruff,Ruff Ruff Ruff") > -1){ 
	Rules.substitute("Backfire", "Yip Yip Yip"); 
	Rules.substitute("Emergency 4", "Ruff Ruff Ruff");
	  Rules.substitute("Glass Salad", "Arf Arf Arf");
	Rules.substitute("Bop,Bop,Bop", rand(["Ruff Ruff Ruff,Arf Arf Arf,Ruff Ruff Ruff", "Ruff Ruff Ruff,Bow Wow Wow,Ruff Ruff Ruff"]));
}

if (levelupselections.indexOf("Boosterpack:Harmony,Melody,Melody") > -1){ 
  Rules.substitute("Backfire", "Chorus"); 
  Rules.substitute("Emergency 4", "Melody");
    Rules.substitute("Glass Salad", "Harmony");
  Rules.substitute("Bop,Bop,Bop", rand(["Melody,Harmony,Melody", "Melody,Harmony,Melody"])); 
}

if (levelupselections.indexOf("Boosterpack:Battering Ram,Front Line,Front Line") > -1){ 
  Rules.substitute("Backfire", "Upkeep"); 
  Rules.substitute("Emergency 4", "Thick Skin");
  Rules.substitute("Glass Salad", "Front Line");
  Rules.substitute("Bop,Bop,Bop", rand(["Front Line,Fortify,Front Line","Thick Skin,Fortify,Thick Skin"])); 
}

if (levelupselections.indexOf("Boosterpack:[gray]Chomp,[gray]Grumble,[gray]Grumble") > -1){ 
  Rules.substitute("Backfire", "[gray]Digest"); 
  Rules.substitute("Emergency 4", "[gray]Grumble");
  Rules.substitute("Glass Salad", "Digest");
  Rules.substitute("Bop,Bop,Bop", rand(["Wolf's Bane,[gray]Grumble,[gray]Grumble","[gray]Grumble,[gray]Gurgle,[gray]Gurgle","Rotten Meats,[gray]Grumble,[gray]Grumble","[gray]Digest,[gray]Regurgitate,[gray]Digest"])); 
}