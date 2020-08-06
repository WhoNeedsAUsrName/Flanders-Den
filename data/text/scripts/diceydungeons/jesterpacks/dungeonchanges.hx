if (levelupselections.indexOf("Boosterpack:Shield Bash,Deflect,Deflect") > -1){ 
  Rules.substitute("Backfire", "Iron Shield"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Sweets,Deflect,Sweets", "Sweets,Shield Bash,Deflect", "Deflect,Deflect,Deflect"])); 
} 

if (levelupselections.indexOf("Boosterpack:Ice Shatter,Snowflake,Snowflake") > -1){ 
  Rules.substitute("Backfire", "Lament"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Snowflake,Buzzer,Snowflake", "Boop,Snowball,Boop", "Boop,Lament,Boop"])); 
}

if (levelupselections.indexOf("Boosterpack:Detonator,Liquorice,Liquorice") > -1){ 
  Rules.substitute("Backfire", "Claw"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Liquorice,Liquorice,Liquorice", "Liquorice,Claw,Sweets", "Sweets,Liquorice,Sweets"])); 
}

if (levelupselections.indexOf("Boosterpack:High Voltage,Buzzer,Buzzer") > -1){ 
  Rules.substitute("Backfire", "Hammer"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Buzzer,Hammer,Buzzer", "High Voltage,Spark,High Voltage"])); 
}

if (levelupselections.indexOf("Boosterpack:Flame Blast,Spark,Spark") > -1){ 
  Rules.substitute("Backfire", "Whip"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Spark,Spark,Spark", "Buzzer,Whip,Buzzer", "Snowflake,Spark,Snowflake"])); 
}

if (levelupselections.indexOf("Boosterpack:Resonance,Whisper,Whisper") > -1){ 
  Rules.substitute("Backfire", "Resonance"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Boop,Sonic Wave,Boop", "Boop,Resonance,Boop"])); 
}

if (levelupselections.indexOf("Boosterpack:Hijinx,Slapsies,Slapsies") > -1){ 
  Rules.substitute("Backfire", "Concentration"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Hijinx,Mercy,Concentration", "Slapsies,Lojinx,Slapsies"])); 
}

if (levelupselections.indexOf("Boosterpack:Flying Skull,Evil Laugh,Evil Laugh") > -1){ 
  Rules.substitute("Backfire", "Evil Laugh"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Evil Laugh,Evil Laugh,Evil Laugh", "Manic Laugh,Infestation,Manic Laugh"])); 
}

if (levelupselections.indexOf("Boosterpack:Woof Woof Woof,Ruff Ruff Ruff,Ruff Ruff Ruff") > -1){ 
  Rules.substitute("Backfire", "Yip Yip Yip"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Ruff Ruff Ruff,Arf Arf Arf,Ruff Ruff Ruff", "Ruff Ruff Ruff,Bow Wow Wow,Ruff Ruff Ruff"]));
}

if (levelupselections.indexOf("Boosterpack:Harmony,Melody,Melody") > -1){ 
  Rules.substitute("Backfire", "Chorus"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Melody,Harmony,Melody", "Melody,Harmony,Melody"])); 
}

if (levelupselections.indexOf("Boosterpack:Battering Ram,Front Line,Front Line") > -1){ 
  Rules.substitute("Backfire", "Upkeep"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Front Line,Fortify,Front Line","Thick Skin,Fortify,Thick Skin"])); 
}

if (levelupselections.indexOf("Boosterpack:[gray]Chomp,[gray]Grumble,[gray]Grumble") > -1){ 
  Rules.substitute("Backfire", "[gray]Chomp"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Wolf's Bane,[gray]Grumble,[gray]Grumble","[gray]Grumble,[gray]Gurgle,[gray]Gurgle","Rotten Meats,[gray]Grumble,[gray]Grumble","[gray]Digest,[gray]Regurgitate,[gray]Digest"])); 
}