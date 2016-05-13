var _Beacon = <minecraft:beacon>;
var _Book = <minecraft:book>;
var _Brick = <minecraft:brick_block>;
var _CarpetRed = <minecraft:carpet:14>;
var _Clay = <minecraft:clay_ball>;
var _Charcoal = <minecraft:coal:1>;
var _CharcoalBlock = <minecraft:coal_block>.withTag({display: {Name: "Block of Charcoal", italic:false}});
var _Coal = <minecraft:coal:1>;
var _CoalBlock = <minecraft:coal_block>;
var _Cobblestone = <minecraft:cobblestone>;
var _Diamond = <minecraft:diamond>;
var _DiamondBlock = <minecraft:diamond_block>;
var _EnchantmentTable = <minecraft:enchanting_table>;
var _FlintAndSteel = <minecraft:flint_and_steel>;
var _Furnace = <minecraft:furnace>;
var _FurnaceLit = <minecraft:lit_furnace>;
var _Glass = <minecraft:glass>;
var _NetherStar = <minecraft:nether_star>;
var _Obsidian = <minecraft:obsidian>;
var _Sandstone= <minecraft:sandstone:0>;
var _SlabBrick = <minecraft:stone_slab:4>;
var _SlabCobblestone = <minecraft:stone_slab:3>;
var _SlabSandstone = <minecraft:stone_slab:1>;
var _SlabStone = <minecraft:stone_slab>;
var _SlabStoneBricks = <minecraft:stone_slab:5>;
var _SlabStoneDouble = <minecraft:double_stone_slab:0>;
var _SlabStoneDoubleSmooth = <minecraft:double_stone_slab:8>;
var _SlabWoodAcacia = <minecraft:wooden_slab:4>;
var _SlabWoodBirch = <minecraft:wooden_slab:2>;
var _SlabWoodDarkOak = <minecraft:wooden_slab:5>;
var _SlabWoodJungle = <minecraft:wooden_slab:3>;
var _SlabWoodOak = <minecraft:wooden_slab:0>;
var _StoneBricks = <minecraft:stonebrick:0>;
var _WoodAcacia = <minecraft:planks:4>;
var _WoodBirch = <minecraft:planks:2>;
var _WoodDarkOak = <minecraft:planks:5>;
var _WoodJungle = <minecraft:planks:3>;
var _WoodOak = <minecraft:planks:0>;

#Tweak Enchanting table recipe
recipes.remove(_EnchantmentTable);
recipes.addShaped(_EnchantmentTable, [
	[_CarpetRed, _Book, _CarpetRed],
	[_Diamond, _Obsidian, _Diamond], 
	[_Obsidian, _Obsidian, _Obsidian]
]);

#Tweak Beacon recipe
recipes.remove(_Beacon);
recipes.addShaped(_Beacon, [
	[_Glass, _NetherStar, _Glass],
	[_Glass, _DiamondBlock, _Glass], 
	[_Obsidian, _Obsidian, _Obsidian]
]);

#Add smooth double stoneslab recipe
recipes.addShapeless(_SlabStoneDoubleSmooth, [
	_Clay, _SlabStoneDouble
]);

#Add charcoal block recipe
recipes.remove(<CharcoalBlock:charcoalblock>);	#This removes the recipe from the charcoal block mod if it is installed
recipes.addShaped(_CharcoalBlock, [
	[_Charcoal, _Charcoal, _Charcoal],
	[_Charcoal, _Charcoal, _Charcoal],
	[_Charcoal, _Charcoal, _Charcoal]
]);

#Add lit furnace recipe
recipes.addShaped(_FurnaceLit, [
	[null, _Furnace, null],
	[_CoalBlock, _FlintAndSteel, _CoalBlock],
	[_CoalBlock, _CoalBlock, _CoalBlock]
]);

#Merge slabs to blocks
	#Brick
	recipes.addShapeless(_Brick, [_SlabBrick, _SlabBrick]);
	#Cobble
	recipes.addShapeless(_Cobblestone, [_SlabCobblestone, _SlabCobblestone]);
	#Sandstone
	recipes.addShapeless(_Sandstone, [_SlabSandstone, _SlabSandstone]);
	#Stone
	recipes.addShapeless(_SlabStoneDouble, [_SlabStone, _SlabStone]);
	#Stone Bricks
	recipes.addShapeless(_StoneBricks, [_SlabStoneBricks, _SlabStoneBricks]);
	#Wood Acacia
	recipes.addShapeless(_WoodAcacia, [_SlabWoodAcacia, _SlabWoodAcacia]);
	#Wood Birch
	recipes.addShapeless(_WoodBirch, [_SlabWoodBirch, _SlabWoodBirch]);
	#Wood Dark Oak
	recipes.addShapeless(_WoodDarkOak, [_SlabWoodDarkOak, _SlabWoodDarkOak]);
	#Wood Jungle
	recipes.addShapeless(_WoodJungle, [_SlabWoodJungle, _SlabWoodJungle]);
	#Wood Oak
	recipes.addShapeless(_WoodOak, [_SlabWoodOak, _SlabWoodOak]);