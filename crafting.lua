local compatible_game = false
local items = {
	ingot_1 = nil,
	ingot_2 = nil,
	ingot_3 = nil,
	redstone= nil,
	chest   = nil,
	paper   = nil,
	clay    = nil,
	glass   = nil,
	stick   = nil,
	coal    = nil,
	stone   = nil,
	book    = nil,
}


if core.get_modpath ("default") then
	compatible_game = true
	items["ingot_1"]  =  "default:steel_ingot"
	items["ingot_2"]  =  "default:copper_ingot"
	items["ingot_3"]  =  "default:tin_ingot"
	items["redstone"] =  "default:redstone_dust"
	items["chest"]    =  "default:chest"
	items["paper"]    =  "default:paper"
	items["clay"]     =  "default:clay_lump"
	items["glass"]    =  "default:glass"
	items["stick"]    =  "default:stick"
	items["coal"]     =  "default:coal_lump"
	items["stone"]    =  "default:stone"
	items["book"]     =  "default:book"
elseif core.get_modpath("mcl_core") then
	compatible_game = true
	items["ingot_1"]  =  "mcl_core:iron_ingot"
	items["ingot_2"]  =  "mcl_copper:copper_ingot"
	items["ingot_3"]  =  "mcl_core:gold_ingot"
	items["redstone"] =  "mcl_core:redstone_dust"
	items["chest"]    =  "mcl_core:chest"
	items["paper"]    =  "mcl_core:paper"
	items["clay"]     =  "mcl_core:clay_lump"
	items["glass"]    =  "mcl_core:glass"
	items["stick"]    =  "mcl_core:stick"
	items["coal"]     =  "mcl_core:coal_lump"
	items["stone"]    =  "mcl_core:stone"
	items["book"]     =  "mcl_books:book"
end


if compatible_game then
	-- Easier to remember recipes (ComputerCraft-inspired) 
	minetest.register_craft({
		output = "lwscratch:cassette 1", 
		recipe = { items["book"], items["ingot_2"], items["redstone"] },
	 	type   = "shapeless"
	})
	minetest.register_craft({
		output = "lwscratch:robot 1", 
		recipe = {
			{ items["ingot_2"], items["ingot_2"],     items["ingot_2"] },
			{ items["ingot_2"], items["redstone"],    items["ingot_2"] },
			{ items["ingot_2"], items["chest"],       items["ingot_2"] }
		}
	})
	
	-- Legacy recipes
	minetest.register_craft({
		output = "lwscratch:cassette 1", 
		recipe = { items["clay"], items["coal"], items["stick"], items["book"] },
		type   = "shapeless"
	})
	minetest.register_craft({
		output = "lwscratch:robot 1", 
		recipe = {
			{ items["stone"],   items["ingot_3"], items["glass"] },
			{ items["ingot_1"], items["coal"],    items["ingot_1"] },
			{ items["stick"],   items["ingot_2"], items["clay"] }
		}
	})
	minetest.register_craft({
		output = "lwscratch:robot 1", 
		recipe = {
			{ items["stone"],   items["ingot_1"], items["glass"] },
			{ items["ingot_1"], items["coal"],    items["ingot_1"] },
			{ items["stick"],   items["ingot_1"], items["clay"] }
		}
	})
else
	core.log("error", "LwScratch: Couldn't add recipes. Items can be fetched with " ..
	"creative mode or \"/give\" with the values \"lwscratch:robot\" and " ..
	"\"lwscratch:cassette\".")
end
