import crafttweaker.item.IItemStack;

#Netherex and Mystical World both introduce one 
val prefGem = <bewitchment:amethyst>;
val prefGemBlock = <bewitchment:block_of_amethyst>;
val prefGemOre = <bewitchment:amethyst_ore>; 

val prefRemove = [ 
	<netherex:amethyst_block>, 
	<netherex:amethyst_crystal>, 
	<mysticalworld:amethyst_block>,
	<netherex:amethyst_ore>,
	<mysticalworld:amethyst_ore>
] as IItemStack[];

for item in prefRemove{
	recipes.remove(item);
}

recipes.addShapeless(prefGem,[prefRemove[1]]);
recipes.addShapeless(prefGemBlock,[prefRemove[0]]);
recipes.addShapeless(prefGemBlock,[prefRemove[2]]);
recipes.addShapeless(prefGemOre,[prefRemove[3]]);
recipes.addShapeless(prefGemOre,[prefRemove[4]]);

for item in prefRemove{
  mods.jei.JEI.hide(item);
  mods.jei.JEI.addDescription(item,"This item has been replaced within the modpack, place in a crafting table to craft the replacement");
}