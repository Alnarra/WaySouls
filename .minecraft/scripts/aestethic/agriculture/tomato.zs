#tomato Issues
var tomato = <ore:cropTomato>; 
var seed = <ore:listAllseed>; 
seed.remove(<harvestcraft:tomatoseeditem>); 
seed.add(<rustic:tomato_seeds>); 
tomato.remove(<harvestcraft:tomatoitem>); 
recipes.remove(<harvestcraft:tomatoseeditem>);
mods.jei.JEI.hide(<harvestcraft:tomatoseeditem>); 
mods.jei.JEI.hide(<harvestcraft:tomatoitem>);
