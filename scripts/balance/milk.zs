//Fixing it so Animania's Milk can be used as Milk

recipes.remove(<cookingforblockheads:milk_jar>);

recipes.addShaped(<cookingforblockheads:milk_jar>,[
  [<ore:blockGlass>,<ore:plankWood>,<ore:blockGlass>],
  [<ore:blockGlass>,<minecraft:milk_bucket>,<ore:blockGlass>],
  [<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>],
]);

recipes.addShaped(<cookingforblockheads:milk_jar>,[
  [<ore:blockGlass>,<ore:plankWood>,<ore:blockGlass>],
  [<ore:blockGlass>,<forge:bucketfilled>.withTag({FluidName: "milk_holstein", Amount: 1000}),<ore:blockGlass>],
  [<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>],
]);

recipes.addShaped(<cookingforblockheads:milk_jar>,[
  [<ore:blockGlass>,<ore:plankWood>,<ore:blockGlass>],
  [<ore:blockGlass>,<forge:bucketfilled>.withTag({FluidName: "milk_friesian", Amount: 1000}),<ore:blockGlass>],
  [<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>],
]);

recipes.addShaped(<cookingforblockheads:milk_jar>,[
  [<ore:blockGlass>,<ore:plankWood>,<ore:blockGlass>],
  [<ore:blockGlass>,<forge:bucketfilled>.withTag({FluidName: "milk_jersey", Amount: 1000}),<ore:blockGlass>],
  [<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>],
]);
