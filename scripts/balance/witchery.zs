import crafttweaker.item.IItemStack;

#Bewitchment ends up using Opals annd Garnets in only 3 recipies. A lot of world gen for not a lot of uses

#Distillery
recipes.remove(<bewitchment:distillery>);
recipes.addShaped(<bewitchment:distillery>,[
	[<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>],
	[<ore:blockGlass>,null,<ore:blockGlass>],
	[<ore:ingotSilver>,<bewitchment:amethyst>,<ore:ingotSilver>]
	]);

#Waystone
recipes.remove(<bewitchment:waystone>);
recipes.addShaped(<bewitchment:waystone>,[
	[<ore:stone>,<bewitchment:pentacle>,<ore:stone>],
	[<ore:stone>,<bewitchment:amethyst>,<ore:stone>],
	[null,<ore:stone>,null]
	]);
	
#Girdle of Dryads
recipes.remove(<bewitchment:girdle_of_the_dryads>);
recipes.addShaped(<bewitchment:girdle_of_the_dryads>,[
	[<bewitchment:pure_filament>,<bewitchment:oak_spirit>,<bewitchment:pure_filament>],
	[<bewitchment:oak_spirit>,<bewitchment:amethyst>,<bewitchment:oak_spirit>],
	[<ore:logWood>,<bewitchment:oak_spirit>,<ore:logWood>]
	]);

#Hide Garnet and Opal so things aren't confusing
val prefGem = <bewitchment:amethyst>;
val prefGemBlock = <bewitchment:block_of_amethyst>;
val prefGemOre = <bewitchment:amethyst_ore>; 

val prefRemove = [
	<bewitchment:opal>,
	<bewitchment:block_of_opal>,
	<bewitchment:garnet>,
	<bewitchment:block_of_garnet>,
	<bewitchment:garnet_ore>,
	<bewitchment:opal_ore>
] as IItemStack[];

for item in prefRemove{
	recipes.remove(item);
}

recipes.addShapeless(prefGem,[prefRemove[0]]);
recipes.addShapeless(prefGem,[prefRemove[2]]);
recipes.addShapeless(prefGemBlock,[prefRemove[1]]);
recipes.addShapeless(prefGemBlock,[prefRemove[3]]);
recipes.addShapeless(prefGemOre,[prefRemove[4]]);
recipes.addShapeless(prefGemOre,[prefRemove[5]]);

for item in prefRemove{
  mods.jei.JEI.hide(item);
  mods.jei.JEI.addDescription(item,"This item has been replaced within the modpack, place in a crafting table to craft the replacement");
}
