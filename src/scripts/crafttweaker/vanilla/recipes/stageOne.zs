#priority -700
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.recipestages.Recipes.addShaped;

static stageName as string = "one"; //设立阶段名以供之后调用

//有序合成
static shapedRecipes as IIngredient[][][IItemStack] = {

    <minecraft:gravel> :[
        [<contenttweaker:handfulsand>,<contenttweaker:pebble>],
        [<contenttweaker:pebble>,<contenttweaker:handfulsand>]
    ],

    <contenttweaker:solidified_ash> : [
        [<embers:dust_ash>,<embers:dust_ash>,<embers:dust_ash>],
        [<embers:dust_ash>,<embers:dust_ash>,<embers:dust_ash>],
        [<embers:dust_ash>,<embers:dust_ash>,<embers:dust_ash>]
    ],

    <contenttweaker:ash_string>.withAmount(paramStringAmountFromAsh) : [[<contenttweaker:solidified_ash>,<contenttweaker:solidified_ash>,<contenttweaker:solidified_ash>]],

    <waterstrainer:net> : [
        [<ore:etmString>,null,<ore:etmString>],
        [null,<ore:etmString>,null],
        [<ore:etmString>,null,<ore:etmString>]
    ],

    <waterstrainer:strainer_base> : [
        [<ore:stickWood>,null,<ore:stickWood>],
        [<ore:plankWood>,<minecraft:chest>,<ore:plankWood>],
        [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]
    ],

    <contenttweaker:compact_ash> : recipeCompactAsh,

    <bdsandm:wood_crate> : [
        [<ore:logWood>,<ore:plankWood>,<ore:logWood>],
        [<ore:plankWood>,<ore:chestWood>,<ore:plankWood>],
        [<ore:logWood>,<ore:plankWood>,<ore:logWood>]
    ],

    <contenttweaker:fiber_string>.withAmount(paramStringAmountFromFiber) : [[<contenttweaker:plant_fiber>,<contenttweaker:plant_fiber>,<contenttweaker:plant_fiber>]],

    <minecraft:tnt>.withAmount(paramTNTAmountFromAsh) : [
        [<contenttweaker:solidified_ash>,<minecraft:gunpowder>,<contenttweaker:solidified_ash>],
        [<minecraft:gunpowder>,<contenttweaker:solidified_ash>,<minecraft:gunpowder>],
        [<contenttweaker:solidified_ash>,<minecraft:gunpowder>,<contenttweaker:solidified_ash>],
    ],
    <morecauldrons:brick_cauldron> : [
        [<minecraft:brick>,null,<minecraft:brick>],
        [<minecraft:brick>,null,<minecraft:brick>],
        [<minecraft:brick>,<minecraft:brick>,<minecraft:brick>],
    ],

    <waterstrainer:strainer_survivalist> : recipeBasicNet,

    <waterstrainer:net:1> : [
        [<waterstrainer:net>,null,<waterstrainer:net>],
        [null,<waterstrainer:net>,null],
        [<waterstrainer:net>,null,<waterstrainer:net>],
    ],

    <waterstrainer:strainer_survivalist_dense> : [
        [<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],
        [<ore:stickWood>,<waterstrainer:net:1>,<ore:stickWood>],
        [<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],
    ],
    
    <minecraft:chest> : [
        [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
        [<ore:plankWood>,null,<ore:plankWood>],
        [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
    ],
    <minecraft:furnace> : [
        [<ore:stone>,<ore:stone>,<ore:stone>],
        [<ore:stone>,<item:contenttweaker:compact_ash>,<ore:stone>],
        [<ore:stone>,<ore:stone>,<ore:stone>],
    ],
    <minecraft:stick>*4 : [
        [<ore:plankWood>],
        [<ore:plankWood>],
    ],
    <minecraft:piston> : [
        [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
        [<ore:stone>,<ore:plateIron>,<ore:stone>],
        [<ore:stone>,<minecraft:redstone>,<ore:stone>],
    ],
    <minecraft:bucket> : [
       [<item:contenttweaker:ash_ingot>,null,<item:contenttweaker:ash_ingot>],
       [null,<item:contenttweaker:ash_ingot>,null],
    ],
    <minecraft:ladder>*5 : [
        [<ore:stickWood>,<ore:etmString>,<ore:stickWood>],
        [<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],
        [<ore:stickWood>,<ore:etmString>,<ore:stickWood>],
    ],
    <minecraft:dispenser> : [
        [<ore:stone>,<ore:stone>,<ore:stone>],
        [<ore:stone>,<minecraft:bow>,<ore:stone>],
        [<ore:stone>,<minecraft:redstone>,<ore:stone>],
    ],
    <minecraft:dropper> : [
        [<ore:stone>,<ore:stone>,<ore:stone>],
        [<ore:stone>,null,<ore:stone>],
        [<ore:stone>,<minecraft:redstone>,<ore:stone>],
    ],
    <embers:caminite_lever> : [
        [<ore:rodStone>],
        [<embers:plate_caminite>],
    ],
    <minecraft:stone_pressure_plate> : [
        [<ore:stone>,<ore:stone>],
    ],
    <minecraft:wooden_pressure_plate> : [
        [<ore:plankWood>,<ore:plankWood>],
    ],
    <minecraft:redstone_torch> : [
        [<minecraft:redstone>],
        [<minecraft:stick>],
    ],
    <minecraft:trapdoor> : [
        [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
        [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
    ],
    <minecraft:tripwire_hook> : [
        [<ore:ingotIron>],
        [<ore:stickWood>],
        [<ore:plankWood>],
    ],
    <minecraft:light_weighted_pressure_plate> : [
        [<ore:plateGold>,<ore:plateGold>],
    ],
    <minecraft:heavy_weighted_pressure_plate> : [
        [<ore:plateIron>,<ore:plateIron>],
    ],
    <minecraft:daylight_detector> : [
        [<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>],
        [<ore:gemQuartz>,<contenttweaker:basic_sensor>,<ore:gemQuartz>],
        [<ore:slabWood>,<ore:slabWood>,<ore:slabWood>],
    ],
    <minecraft:redstone_block> : [
        [<minecraft:redstone>,<minecraft:redstone>,<minecraft:redstone>],
        [<minecraft:redstone>,<minecraft:redstone>,<minecraft:redstone>],
        [<minecraft:redstone>,<minecraft:redstone>,<minecraft:redstone>],
    ],
    <minecraft:hopper> : [
        [<ore:plateIron>,null,<ore:plateIron>],
        [<ore:plateIron>,<ore:chest>,<ore:plateIron>],
        [null,<ore:plateIron>,null],
    ],
    <minecraft:iron_trapdoor> : [
        [<ore:ingotIron>,<ore:ingotIron>],
        [<ore:ingotIron>,<ore:ingotIron>],
    ],
    <item:minecraft:stone> : [
        [<item:minecraft:brick>.reuse(),<item:minecraft:brick>.reuse(),<item:minecraft:brick>.reuse()],
        [<item:minecraft:brick>.reuse(),<ore:cobblestone>,<item:minecraft:brick>.reuse()],
        [<item:minecraft:brick>.reuse(),<item:contenttweaker:rekindled_ash>,<item:minecraft:brick>.reuse()]
    ],
    <embers:plate_caminite_raw>*2 : [
        [<embers:blend_caminite>, <embers:blend_caminite>],
        [<embers:blend_caminite>, <embers:blend_caminite>]
    ],
    <embers:block_caminite_brick_slab>*6 : [
        [<embers:block_caminite_brick>,<embers:block_caminite_brick>,<embers:block_caminite_brick>]
    ],
    <embers:wall_caminite_brick>*6 : [
        [<embers:block_caminite_brick>,<embers:block_caminite_brick>,<embers:block_caminite_brick>],
        [<embers:block_caminite_brick>,<embers:block_caminite_brick>,<embers:block_caminite_brick>]  
    ],
    <embers:ember_activator> : [
        [<ore:ingotCopper>,<ore:ingotCopper>,<ore:ingotCopper>],
        [<ore:ingotIron>,<minecraft:furnace>,<ore:ingotIron>],
        [<embers:block_caminite_brick_slab>,<embers:block_caminite_brick_slab>,<embers:block_caminite_brick_slab>]
    ],
    <embers:tinker_hammer>.withTag({}) : [
        [<ore:ingotIron>,<contenttweaker:ash_ingot>,<ore:ingotIron>],
        [<ore:ingotIron>,<ore:stickWood>,<ore:ingotIron>],
        [null,<ore:stickWood>,null]
    ],
    <embers:ember_emitter>*2 : [
        [null,<ore:ingotCopper>,null],
        [<ore:ingotIron>,<embers:shard_ember>,<ore:ingotIron>],
        [<embers:plate_caminite>,<embers:plate_caminite>,<embers:plate_caminite>]
    ],
    <embers:ember_receiver>*2 :[
        [<ore:ingotIron>,null,<ore:ingotIron>],
        [<ore:ingotCopper>,<embers:plate_caminite>,<ore:ingotCopper>]
    ],
    <embers:stamper> : [
        [<embers:brick_caminite>,<ore:ingotCopper>,<embers:brick_caminite>],
        [<embers:brick_caminite>,<ore:blockIron>,<embers:brick_caminite>],
        [<embers:brick_caminite>,null,<embers:brick_caminite>]
    ],
    <embers:block_furnace> : [
        [<embers:plate_caminite>,null,<embers:plate_caminite>],
        [<embers:plate_caminite>,<contenttweaker:rekindled_ash>,<embers:plate_caminite>],
        [<ore:ingotIron>,<minecraft:furnace>,<ore:ingotIron>]
    ],
    <embers:stamper_base> : [
        [<ore:ingotIron>,null,<ore:ingotIron>],
        [<embers:block_caminite_brick>,<minecraft:bucket>,<embers:block_caminite_brick>]
    ],
    <embers:item_pipe>*4 : [
        [<ore:ingotLead>,<contenttweaker:compact_ash>,<ore:ingotLead>]
    ],
    <embers:pipe>*4 : [
        [<ore:ingotIron>,<contenttweaker:compact_ash>,<ore:ingotIron>]
    ],
    <embers:mech_core> : [
        [<ore:ingotIron>,<ore:plateIron>,<ore:ingotIron>],
        [<embers:pipe>,<contenttweaker:basic_transmission>,<embers:pipe>],
        [<ore:ingotIron>,<ore:plateIron>,<ore:ingotIron>]
    ],
    <embers:mixer> : [
        [<ore:plateIron>,<ore:plateIron>,<ore:plateIron>],
        [<embers:pipe>,<embers:mech_core>,<embers:pipe>],
        [<embers:block_caminite_brick_slab>,<ore:blockCopper>,<embers:block_caminite_brick_slab>]
    ],
    <embers:stamp_bar_raw> : [
        [<embers:tinker_hammer>.reuse()],
        [<contenttweaker:ash_ingot>],
        [<embers:stamp_flat_raw>]
    ],
    <embers:stamp_plate_raw> : [
        [<embers:tinker_hammer>.reuse()],
        [<contenttweaker:compact_ash>],
        [<embers:stamp_flat_raw>]
    ],
    <embers:stamp_flat_raw> : [
        [null,<embers:blend_caminite>,null],
        [<embers:blend_caminite>,null,<embers:blend_caminite>],
        [null,<embers:blend_caminite>,null]
    ],
    <embers:beam_cannon> : [
        [null,<embers:ember_emitter>,null],
        [<embers:plate_dawnstone>,<embers:ember_cartridge>,<embers:plate_dawnstone>],
        [<ore:ingotBronze>,<embers:block_caminite_brick>,<ore:ingotBronze>]
    ],
    <embers:alchemy_tablet> : [
        [null,<ore:plateDawnstone>,null],
        [<embers:stairs_caminite_brick>,<ore:plateCopper>,<embers:stairs_caminite_brick>],
        [<embers:block_caminite_brick>,<ore:blockDawnstone>,<embers:block_caminite_brick>]
    ],
    <embers:alchemy_pedestal>.withAmount(paramAlchemyPestalAmount) : [
        [<ore:plateDawnstone>,null,<ore:plateDawnstone>],
        [<ore:ingotDawnstone>,<embers:crystal_ember>,<ore:ingotDawnstone>],
        [<embers:block_caminite_brick>,<ore:blockBronze>,<embers:block_caminite_brick>]
    ],
    <embers:ember_cartridge>.withTag({emberCapacity: 6000.0, ember: 0.0}) : [
        [<ore:ingotCopper>,<ore:plateIron>,<ore:ingotCopper>],
        [<ore:blockGlass>,<embers:crystal_ember>,<ore:blockGlass>],
        [null,<ore:blockGlass>,null]
    ],
    <embers:ember_pulser> : [
        [null,<ore:ingotDawnstone>,null],
        [<ore:plateBronze>,<embers:ember_emitter>,<ore:plateBronze>],
        [<embers:plate_caminite>,<ore:blockIron>,<embers:plate_caminite>]
    ],
    <microblockcbe:stone_rod>*4 : [
        [<ore:stone>],
        [<ore:stone>]
    ],
    <item:minecraft:brick> : [
        [null, <item:contenttweaker:rekindled_ash>, null],
        [<item:contenttweaker:rekindled_ash>, <item:minecraft:clay_ball>, <item:contenttweaker:rekindled_ash>],
        [null, <item:contenttweaker:rekindled_ash>, null]
    ],
    <item:minecraft:wooden_sword> : [
        [<ore:plankWood>],
        [<ore:plankWood>],
        [<ore:stickWood>]
    ],
    <item:minecraft:stone_sword> : [
        [<ore:stone>],
        [<ore:stone>],
        [<ore:stickWood>]
    ],
    <item:minecraft:stone_pickaxe> : [
        [<ore:stone>,<ore:stone>,<ore:stone>],
        [null,<ore:stickWood>,null],
        [null,<ore:stickWood>,null]
    ],
    <item:minecraft:dye:15>*2 : [
        [<ore:bone>]
    ],
    <item:embers:bin> : [
        [<ore:plateIron>,<ore:ingotIron>,<ore:plateIron>],
        [<ore:plateIron>,null,<ore:plateIron>],
        [<ore:plateIron>,<ore:ingotIron>,<ore:plateIron>]
    ],
    <item:embers:vacuum> : [
        [<ore:plateLead>,null,<ore:plateLead>],
        [<ore:plateLead>,<item:embers:bin>,<ore:plateLead>],
        [null,<item:minecraft:hopper>,null]
    ],
    <item:wopper:wopper> : [
        [<ore:logWood>,null,<ore:logWood>],
        [<ore:logWood>,null,<ore:logWood>],
        [null,<ore:plankWood>,null]
    ],
    <embers:block_caminite_brick> : [
        [<embers:block_caminite_brick_slab>],
        [<embers:block_caminite_brick_slab>]
    ],
    <item:embers:item_pump> : [
        [<embers:plate_caminite>,<embers:item_pipe>,<embers:plate_caminite>]
    ],
    <item:embers:pump> : [
        [<item:embers:plate_caminite>,<embers:pipe>,<item:embers:plate_caminite>]
    ],
    <embers:copper_cell>.withTag({emberCapacity: 24000.0, ember: 0.0}) : [
        [<embers:block_caminite_brick>,<ore:plateCopper>,<embers:block_caminite_brick>],
        [<ore:plateCopper>,<embers:ember_cartridge>,<ore:plateCopper>],
        [<embers:block_caminite_brick>,<ore:plateCopper>,<embers:block_caminite_brick>]
    ],
    <embers:beam_splitter> : [
        [null,<ore:ingotDawnstone>,null],
        [<ore:ingotCopper>,<ore:plateIron>,<ore:ingotCopper>],
        [null,<ore:ingotLead>,null]
    ],
    <minecraft:torch> : [
        [<contenttweaker:rekindled_ash>],
        [<minecraft:stick>]
    ],
    <minecraft:torch>*3 : [
        [<ore:charcoal>],
        [<ore:stickWood>]
    ],

    <embers:dawnstone_anvil> : recipeDawnstoneAnvil,

    <minecraft:glass_pane>*6 : [
        [<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>],
        [<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>]
    ],
    <minecraft:flint> : [
        [<ore:gravel>],
        [<waterstrainer:strainer_survivalist>.anyDamage().transformDamage(2)]
    ],
    <embers:breaker> : [
        [<ore:plateIron>,<ore:ingotIron>,<ore:plateIron>],
        [<ore:ingotLead>,<contenttweaker:basic_transmission>,<ore:ingotLead>],
        [<ore:ingotLead>,null,<ore:ingotLead>]
    ],
    <item:minecraft:wooden_slab>*6 : [
        [<item:minecraft:planks>,<item:minecraft:planks>,<item:minecraft:planks>]
    ],
    <item:minecraft:planks> : [
        [<item:minecraft:wooden_slab>],
        [<item:minecraft:wooden_slab>]
    ],
    <item:minecraft:magma> : [
        [<ore:dustAsh>,<item:contenttweaker:solidified_ash>,<ore:dustAsh>],
        [<item:contenttweaker:solidified_ash>,<item:minecraft:lava_bucket>.transformReplace(<item:minecraft:bucket>),<item:contenttweaker:solidified_ash>],
        [<ore:dustAsh>,<item:contenttweaker:solidified_ash>,<ore:dustAsh>]
    ],
    <item:minecraft:iron_bars>*6 : [
        [<ore:ingotIron>,<ore:ingotIron>,<ore:ingotIron>],
        [<ore:ingotIron>,<ore:ingotIron>,<ore:ingotIron>]
    ],
    <bdsandm:metal_crate> : [
        [<ore:ingotIron>,<ore:plateLead>,<ore:ingotIron>],
        [<ore:plateLead>,<bdsandm:wood_crate>,<ore:plateLead>],
        [<ore:ingotIron>,<ore:plateLead>,<ore:ingotIron>]
    ],
    <embers:block_tank> : [
        [<embers:brick_caminite>,null,<embers:brick_caminite>],
        [<ore:plateIron>,null,<ore:plateIron>],
        [<embers:brick_caminite>,<ore:ingotIron>,<embers:brick_caminite>]
    ],
    <embers:large_tank> : [
        [<embers:stairs_caminite_brick>,null,<embers:stairs_caminite_brick>],
        [<ore:plateIron>,<embers:block_tank>,<ore:plateIron>],
        [<embers:block_caminite_brick>,<embers:mech_core>,<embers:block_caminite_brick>]
    ],
    <embers:stone_edge> : [
        [<embers:wall_caminite_brick>,<embers:wall_caminite_brick>,<embers:wall_caminite_brick>],
        [<embers:wall_caminite_brick>,null,<embers:wall_caminite_brick>],
        [<embers:wall_caminite_brick>,<embers:wall_caminite_brick>,<embers:wall_caminite_brick>]
    ],
    <embers:charger> : [
        [<ore:plateLead>,<ore:plateLead>,<ore:plateLead>],
        [<ore:ingotCopper>,<item:embers:crystal_ember>,<ore:ingotCopper>],
        [<ore:plateCopper>,<ore:plateCopper>,<ore:plateCopper>]
    ],
    <embers:ember_funnel> : [
        [<ore:plateDawnstone>,<ore:blockBronze>,<ore:plateDawnstone>],
        [<ore:plateDawnstone>,<embers:copper_cell>,<ore:plateDawnstone>],
        [null,<item:minecraft:hopper>,null]
    ],
    <researchtable:table> : [
        [<embers:archaic_brick>,<embers:flame_barrier>,<embers:archaic_brick>],
        [null,<embers:archaic_brick>,null],
        [<embers:archaic_brick>,<ore:blockDawnstone>,<embers:archaic_brick>]
    ]
};

//镜像合成
static mirroredRecipes as IIngredient[][][IItemStack] = {
    <minecraft:redstone_lamp> : [
        [null,<minecraft:redstone>,null],
        [<item:contenttweaker:basic_sensor>,<ore:glowstone>,<minecraft:redstone>],
        [null,<minecraft:redstone>,null],
    ],
    <minecraft:observer> : [
        [<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>],
        [<minecraft:redstone>,<contenttweaker:basic_sensor>,<ore:gemQuartz>],
        [<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>],
    ],
    <minecraft:bow> : [
        [null,<ore:stickWood>,<ore:etmString>],
        [<ore:stickWood>,null,<ore:etmString>],
        [null,<ore:stickWood>,<ore:etmString>],
    ],
    <embers:stairs_caminite_brick>*3 : [
        [<embers:block_caminite_brick>,null,null],
        [<embers:block_caminite_brick>,<embers:block_caminite_brick>,null],
        [<embers:block_caminite_brick>,<embers:block_caminite_brick>,<embers:block_caminite_brick>],
    ],
    <aquaculture:fishing_rod> : [
        [null,null,<minecraft:stick>],
        [null,<minecraft:stick>,<ore:etmString>],
        [<minecraft:stick>,null,<ore:etmString>]
    ],
    <minecraft:crafting_table> : [
        [<ore:logWood>, <ore:dustAsh>],
        [<ore:dustAsh>, <ore:logWood>]
    ],
    <item:minecraft:stone_axe> : [
        [<ore:stone>,<ore:stone>],
        [<ore:stickWood>,<ore:stone>],
        [<ore:stickWood>,null]
    ],
    <minecraft:dirt> : [
        [<ore:etmSeaweed>,<item:contenttweaker:solidified_ash>,<ore:etmSeaweed>],
        [<ore:sand>,<ore:etmSeaweed>,<ore:gravel>],
        [<ore:etmSeaweed>,<item:contenttweaker:solidified_ash>,<ore:etmSeaweed>]
    ],
    <item:betterbuilderswands:wandiron> : [
        [null,null,<item:contenttweaker:ash_ingot>],
        [null,<ore:etmString>,null],
        [<ore:stickWood>,null,null]
    ],
    <aquaculture:iron_fishing_rod> : [
        [null,null,<ore:ingotIron>],
        [null,<ore:ingotIron>,<ore:etmString>],
        [<ore:ingotIron>,null,<ore:etmString>]
    ],
    <embers:auto_hammer> : [
        [null,<ore:plateDawnstone>,<embers:block_caminite_brick>],
        [<embers:tinker_hammer>.withTag({}),<contenttweaker:basic_transmission>,<embers:block_caminite_brick>],
        [null,<ore:plateDawnstone>,<embers:block_caminite_brick>]
    ],
    <embers:block_caminite_brick> : [
        [<embers:brick_caminite>, <embers:brick_caminite>],
        [<embers:brick_caminite>, <embers:brick_caminite>]
    ],
    <item:minecraft:wool> : [
        [<ore:string>,<ore:string>,<ore:string>],
        [<ore:string>,<ore:string>,<ore:string>],
        [<ore:string>,<ore:string>,<ore:string>]
    ],
    <item:minecraft:bed> : [
        [<ore:wool>,<ore:wool>,<ore:wool>],
        [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]
    ],
    <item:embers:codex> : [
        [null,<embers:archaic_brick>,null],
        [<embers:archaic_brick>,<item:contenttweaker:ash_ingot>,<embers:archaic_brick>],
        [null,<embers:archaic_brick>,null]
    ],
    <item:minecraft:book> : [
        [<ore:etmString>,<item:embers:ashen_cloth>],
        [<ore:etmString>,<item:embers:ashen_cloth>]
    ],
    <item:embers:cinder_plinth> : [
        [null,<ore:blockBronze>,null],
        [<ore:blockLead>,<item:embers:focal_lens>,<ore:blockLead>],
        [<item:embers:block_caminite_brick_slab>,<item:embers:block_caminite_brick_slab>,<item:embers:block_caminite_brick_slab>]
    ],
    <contenttweaker:basic_transmission>*4 : [
        [<ore:plateIron>,<embers:archaic_brick>,<ore:plateIron>],
        [<embers:archaic_brick>,<embers:ancient_motive_core>,<embers:archaic_brick>],
        [<ore:plateIron>,<embers:archaic_brick>,<ore:plateIron>]
    ],
    <item:minecraft:shears> : [
        [<embers:tinker_hammer>.reuse(),<ore:ingotIron>],
        [<ore:ingotIron>,null]
    ],
    <aquaculture:food:6> : [
        [<minecraft:bread>],
        [<aquaculture:food:5>],
        [<minecraft:bread>]
    ],
    <minecraft:flint_and_steel> : [
        [null,<ore:plateIron>],
        [<minecraft:flint>,null]
    ]


};

//无序合成
static shapelessRecipes as IIngredient[][IItemStack] = {
    <minecraft:cobblestone> : [<contenttweaker:pebble>,<contenttweaker:pebble>,<contenttweaker:pebble>,<contenttweaker:pebble>],

    <minecraft:sand> : [<contenttweaker:handfulsand>,<contenttweaker:handfulsand>,<contenttweaker:handfulsand>,<contenttweaker:handfulsand>],

    <minecraft:planks>.withAmount(paramPlankAmountFromLog - 1) : [<aquaculture:loot>],

    <contenttweaker:rekindled_ash> : [<minecraft:gunpowder>,<contenttweaker:solidified_ash>],

    <minecraft:sticky_piston> : [<ore:slimeball>,<minecraft:piston>],

    <minecraft:stone_button> : [<ore:stone>],

    <minecraft:trapped_chest> : [<minecraft:tripwire_hook>,<minecraft:chest>],

    <embers:shard_ember>*6 : [<embers:tinker_hammer>.reuse(),<embers:crystal_ember>],

    <item:contenttweaker:plant_fiber>*2 : [<ore:treeLeaves>,<ore:treeLeaves>,<ore:treeLeaves>,<ore:treeLeaves>,<ore:treeLeaves>,<ore:treeLeaves>,<ore:treeLeaves>,<ore:treeLeaves>,<ore:treeLeaves>],

    <item:aquaculture:fishing_rod>.withTag({ench: [{lvl: 5 as short, id: 24 as short}]}) : [<item:aquaculture:fishing_rod>,<item:embers:tinker_hammer>.reuse()],
    
    <item:aquaculture:iron_fishing_rod>.withTag({ench: [{lvl: 5 as short, id: 24 as short}]}) : [<item:aquaculture:iron_fishing_rod>,<item:embers:tinker_hammer>.reuse()],

    <contenttweaker:apple_seed> : [<minecraft:apple>],

    <minecraft:dye:15>*2 : [<aquaculture:fish:38>]
};

//添加配方
function initRegularRecipes(){
    logUtil.logInfo("Initializing regular shaped recipes for stage "+stageName);
    recipeUtil.addShapedRecipes(stageName, shapedRecipes);
    logUtil.logInfo("Initializing regular mirrored recipes for stage "+stageName);
    recipeUtil.addMirroredRecipes(stageName, mirroredRecipes);
    logUtil.logInfo("Initializing regular shapeless recipes for stage "+stageName);
    recipeUtil.addShapelessRecipes(stageName, shapelessRecipes);
}

//阶段特别配方
function initStageRecipes(){
    logUtil.logInfo("Initializing stage recipes for stage "+stageName);

    val metals as string[] = [
        "Iron",
        "Copper",
        "Tin",
        "Lead",
        "Dawnstone", 
        "Gold",
        "Aluminum",
        "Nickel",
        "Silver",
        "Electrum",
        "Bronze"
    ];

    for metal in metals{
        val nugget = oreDict.get("nugget"+metal) as IIngredient;
        val ingot = oreDict.get("ingot"+metal) as IIngredient;
        val plate = oreDict.get("plate"+metal) as IIngredient;
        val block = oreDict.get("block"+metal) as IIngredient;

        addShaped(stageName, oreDict.get("ingot"+metal).firstItem, [
            [nugget,nugget,nugget],
            [nugget,nugget,nugget],
            [nugget,nugget,nugget]
        ]);
        if(metal=="Iron"){
            addShaped(stageName, oreDict.get("pickaxePart"+metal).firstItem.withAmount(paramToolPartAmount), [
                [ingot,ingot,plate],
                [null,null,ingot],
                [null,null,ingot]
            ]);
            addShaped(stageName, oreDict.get("axePart"+metal).firstItem.withAmount(paramToolPartAmount), [
                [null,ingot,plate],
                [null,ingot,plate],
                [null,ingot,null]
            ]);
            addShaped(stageName, oreDict.get("hoePart"+metal).firstItem.withAmount(paramToolPartAmount), [
                [ingot,plate,ingot],
                [null,null,ingot]
            ]);
            addShaped(stageName, oreDict.get("swordPart"+metal).firstItem.withAmount(paramToolPartAmount), [
                [null,ingot,null],
                [ingot,plate,ingot],
                [ingot,plate,ingot]
            ]);
            addShaped(stageName, oreDict.get("shovelPart"+metal).firstItem.withAmount(paramToolPartAmount), [
                [plate,plate],
                [ingot,ingot]
            ]);
        }
        addShaped(stageName, oreDict.get("block"+metal).firstItem, [
            [ingot,ingot,ingot],
            [ingot,ingot,ingot],
            [ingot,ingot,ingot]
        ]);
        addShaped(stageName, oreDict.get("ingot"+metal).firstItem.withAmount(9), [[block]]);
    }



    for i in 0 to 4{
        val item as IIngredient = <minecraft:log>.definition.makeStack(i);
        mods.recipestages.Recipes.addShapeless(stageName, <item:minecraft:planks>.definition.makeStack(i).withAmount(paramPlankAmountFromLog), [item]);
    }

    for i in 0 to 2{
        val item as IIngredient = <minecraft:log2>.definition.makeStack(i);
        mods.recipestages.Recipes.addShapeless(stageName, <item:minecraft:planks>.definition.makeStack(i+4).withAmount(paramPlankAmountFromLog), [item]);
    }

    //植物纤维
    for sword in <ore:etmListSwords>.items{
        var outputAmount as int;
        //木剑或石剑？ 产出2个：产出3个
        outputAmount = (sword has <minecraft:stone_sword> | sword has <minecraft:wooden_sword>)? paramFiberAmountFromSeaweedBadSword : paramFiberAmountFromSeaweedGoodSword;
        mods.recipestages.Recipes.addShapeless(stageName, <contenttweaker:plant_fiber>.withAmount(outputAmount),[<ore:etmSeaweed>, sword.anyDamage().transformDamage(4)]);
    }

     for i in 0 to 14{
        for sword in <ore:etmListSwords>.items{
            val fish as IIngredient = <aquaculture:fish>.definition.makeStack(i);
            mods.recipestages.Recipes.addShapeless(stageName, <aquaculture:food:3>*2, [fish.transformReplace(<aquaculture:fish:38>),sword.anyDamage().transformDamage(4)]);
        }
    }

    for i in 20 .. 38{
        for sword in <ore:etmListSwords>.items{
            val fish as IIngredient = <aquaculture:fish>.definition.makeStack(i);
            mods.recipestages.Recipes.addShapeless(stageName, <aquaculture:food:3>*2, [fish.transformReplace(<aquaculture:fish:38>),sword.anyDamage().transformDamage(4)]);
        }
    }

    for sword in <ore:etmListSwords>.items{
        mods.recipestages.Recipes.addShapeless(stageName, <aquaculture:food:2>*2, [<aquaculture:fish:14>.transformReplace(<aquaculture:fish:38>),sword.anyDamage().transformDamage(10)]);
    }



    for i in 0 to 5{
        val planks as IItemStack = <item:minecraft:planks>.definition.makeStack(i);
        val slab as IItemStack = <minecraft:wooden_slab>.definition.makeStack(i);
        mods.recipestages.Recipes.addShaped(stageName, slab.withAmount(6), [[planks,planks,planks]]);
        mods.recipestages.Recipes.addShaped(stageName, planks.withAmount(1), [[slab],[slab]]);
    }
    
}

function init(){
    logUtil.logInfo("Initializing recipes for stage "+stageName);
    initRegularRecipes();
    initStageRecipes();
}