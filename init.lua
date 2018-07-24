minetest.register_node("home_blocks:covered_stone",{
		description = "Stone Table",
		tiles = {
			"testmod_stone_table_top.png",
			"default_stone.png",
			"default_stone.png^home_blocks_stone_table_side.png",
			"default_stone.png^home_blocks_stone_table_side.png",
			"default_stone.png^home_blocks_stone_table_side.png",
			"default_stone.png^home_blocks_stone_table_side.png",
},
		is_ground_content = false,
		groups = {cracky = 2, stone = 1, flamable = 1},
		drops = "home_blocks:covered_stone"
})

minetest.register_craft({
    output = "home_blocks:covered_stone",
    recipe = {
        {"group:wool"},
        {"default:stone"},
			}
})

minetest.register_node("home_blocks:rope_ladder",{
		description = "Rope Ladder",
		drawtype = "signlike",
		wield_image = "home_blocks_rope_ladder.png",
		inventory_image = "home_blocks_rope_ladder.png",
		tiles = {"home_blocks_rope_ladder.png"},
		light_propagates = true,
		paramtype = "light",
		paramtype2 = "wallmounted",
    selection_box = {
        type = "wallmounted",
    },
		climbable = true,
		walkable = false,
		sunlight_propagates = true,
		groups = {oddly_breakable_by_hand = 1}
		})

minetest.register_craft({
		output = "home_blocks:rope_ladder 6",
		recipe = {
			{'farming:string','','farming:string'},
			{'farming:string','farming:string','farming:string'},
			{'farming:string','','farming:string'}
			}
		})
minetest.register_node("home_blocks:lightbulb",{
		description = "Light Bulb",
		drawtype = "plantlike",
		paramtype = "light",
		inventory_image = "testmod_lightbulb.png",
		walkable = false,
		sunlight_propagates = true,
		tiles = {"testmod_lightbulb.png"},
		is_ground_content = false,
		groups = {oddly_breakable_by_hand = 1},
		drop = "home_blocks:lightbulb",
		on_rightclick = function(pos, node, player, itemstack, pointed_thing)
			minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "home_blocks:lightbulb_lit"})
				end
})

minetest.register_node("home_blocks:lightbulb_lit",{
		description = "Light Bulb (Lit)",
		drawtype = "plantlike",
		paramtype = "light",
		inventory_image = "testmod_lightbulb_lit.png",
		walkable = false,
		sunlight_propagates = true,
		light_source = 14,
		tiles = {"testmod_lightbulb_lit.png"},
		is_ground_content = false,
		groups = {oddly_breakable_by_hand = 1, not_in_creative_inventory = 1},
		drop = "home_blocks:lightbulb",
		on_rightclick = function(pos, node, player, itemstack, pointed_thing)
			minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "home_blocks:lightbulb"})
				end
})

minetest.register_craft({
    output = "home_blocks:lightbulb 4",
    recipe = {
        {"default:glass"},
        {"default:mese_crystal_fragment"},
	{"group:stone"},
			}
})

minetest.register_node("home_blocks:crate", {
	description = 'Wooden Crate',
	tiles = {"home_blocks_crate.png"},
	groups = {choppy = 1},
	drop = "home_blocks:crate",
})

minetest.register_craft({
	output = "home_blocks:crate 2",
	recipe = {
		{"group:wood", "", "group:wood"},
		{"", "group:wood" ,""},
		{"group:wood", "", "group:wood"} 
	}
})

minetest.register_node("home_blocks:clay_pot", {
	description = "Clay Pot",
	paramtype = "light",
	inventory_image = "home_blocks_clay_pot.png",
	drawtype = "plantlike",
	walkable = false,
	tiles = {"home_blocks_clay_pot.png"},
	sunlight_propagates = true,
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	drop = "home_blocks:clay_pot"
})

minetest.register_craft({
	output = "home_blocks:clay_pot",
	recipe = {
		{"default:clay_lump"}
	}
})

minetest.register_node("home_blocks:covered_stone_desert",{
		description = "Desert Stone Table",
		tiles = {
			"testmod_stone_table_top.png",
			"default_desert_stone.png",
			"default_desert_stone.png^home_blocks_stone_table_side.png",
			"default_desert_stone.png^home_blocks_stone_table_side.png",
			"default_desert_stone.png^home_blocks_stone_table_side.png",
			"default_desert_stone.png^home_blocks_stone_table_side.png",
},
		is_ground_content = false,
		groups = {cracky = 2, stone = 1, flamable = 1},
		drop = "home_blocks:covered_stone_desert"
})

minetest.register_craft({
    output = "home_blocks:covered_stone_desert",
    recipe = {
        {"group:wool"},
        {"default:desert_stone"},
			}
})

minetest.register_node("home_blocks:ice_brick",{
		description = "Ice Brick",
		tiles = {"home_blocks_ice_brick.png"},
		groups = {cracky = 1}
	})
		
minetest.register_craft({
		output = "home_blocks:ice_brick 6",
		recipe = {
			{"default:ice","default:ice","default:ice"},
			{"default:ice","default:ice","default:ice"},
			{"default:ice","default:ice","default:ice"},
		}
})

minetest.register_node("home_blocks:half_ice_brick",{
		description = "Ice Brick Slab",
		paramtype = "light",
		drawtype = "nodebox",
		tiles = {"home_blocks_ice_brick.png"},
		node_box = {
			type = "fixed",
			fixed = {
            {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
        }},
		groups = {cracky = 1}
	})

minetest.register_node("home_blocks:wood_table",{
      description = "Wooden Table",
      drawtype = "nodebox",
      tiles = {
      "home_blocks_wood_table_top.png",
      "home_blocks_wood_table_top.png",
      "home_blocks_wood_table_lags.png",
      "home_blocks_wood_table_lags.png",
      "home_blocks_wood_table_lags.png",
      "home_blocks_wood_table_lags.png"
   },
      groups = {wood = 1, choppy = 1},
      node_box = {
      type = "fixed",
      fixed = {
         {-0.5, 0.3125, -0.5, 0.5, 0.5, 0.5}, -- NodeBox1
         {0.25, 0.25, -0.5, 0.5, 0.3125, -0.25}, -- NodeBox2
         {0.25, 0.25, 0.25, 0.5, 0.3125, 0.5}, -- NodeBox3
         {-0.5, 0.25, 0.25, -0.25, 0.3125, 0.5}, -- NodeBox4
         {-0.5, 0.25, -0.5, -0.25, 0.3125, -0.25}, -- NodeBox5
         {0.3125, -0.5, 0.3125, 0.5, 0.25, 0.5}, -- NodeBox6
         {0.3125, -0.5, -0.5, 0.5, 0.25, -0.3125}, -- NodeBox7
         {-0.5, -0.5, 0.3125, -0.3125, 0.25, 0.5}, -- NodeBox8
         {-0.5, -0.5, -0.5, -0.3125, 0.25, -0.3125}, -- NodeBox9
      }
   }
})

minetest.register_craft({
		output = "home_blocks:wood_table",
		recipe = {
			{"group:wood","group:wood","group:wood"},
			{"default:stick","","default:stick"},
			{"default:stick","","default:stick"}
			}
		})

minetest.register_node("home_blocks:shingles_stair",{
		description = "Roof Shingles",
		paramtype = "light",
		paramtype2 = "facedir",
		tiles = {"home_blocks_shingles.png"},
		drawtype = "nodebox",
		paramtype = "light",
		node_box = {
        type = "fixed",
        fixed = {
            {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
            {-0.5, 0, 0, 0.5, 0.5, 0.5}
       }},
		groups = {choppy = 1}
	})

minetest.register_craft({
		output = "home_blocks:shingles_stair 8",
		recipe = {
			{"","","default:clay_lump"},
			{"","default:clay_lump","default:clay_lump"},
			{"default:clay_lump","default:clay_lump","default:clay_lump"}
		}
	})

minetest.register_node("home_blocks:shingles_stair_inner",{
		description = "Inner Roof Shingles",
		paramtype = "light",
		paramtype2 = "facedir",
		tiles = {"home_blocks_shingles.png"},
		drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.0, 0.5},
				{-0.5, 0.0, 0.0, 0.5, 0.5, 0.5},
				{-0.5, 0.0, -0.5, 0.0, 0.5, 0.0},
			}
		},
		groups = {choppy = 1}
	})

minetest.register_craft({
		output = "home_blocks:shingles_stair_inner 8",
		recipe = {
			{"","default:clay_lump",""},
			{"default:clay_lump","","default:clay_lump"},
			{"default:clay_lump","default:clay_lump","default:clay_lump"}
		}
	})

minetest.register_node("home_blocks:shingles_stair_outer",{
		description = "Outer Roof Shingles",
		paramtype = "light",
		paramtype2 = "facedir",
		tiles = {"home_blocks_shingles.png"},
		drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.0, 0.5},
				{-0.5, 0.0, 0.0, 0.0, 0.5, 0.5},
			}
		},
		groups = {choppy = 1}
	})

minetest.register_craft({
		output = "home_blocks:shingles_stair_outer 8",
		recipe = {
			{"","default:clay_lump",""},
			{"default:clay_lump","default:clay_lump","default:clay_lump"}
			}
	})

minetest.register_node("home_blocks:tin_roof",{
			description = "Tin Roof",
			paramtype = "light",
			paramtype2 = "facedir",
			tiles = {"home_blocks_tin_roof.png"},
			drawtype = "nodebox",
			node_box = {
       		 type = "fixed",
       		 fixed = {
        		    {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
       		     {-0.5, 0, 0, 0.5, 0.5, 0.5}
      		 }},
			groups = {cracky = 1}
		})

	minetest.register_craft({
			output = "home_blocks:tin_roof 8",
			recipe = {
				{'','',"default:tin_ingot"},
				{'',"default:tin_ingot","default:tin_ingot"},
				{"default:tin_ingot","default:tin_ingot","default:tin_ingot"}
				}
			})
	
	minetest.register_node("home_blocks:tin_roof_inner",{
		description = "Inner Tin Roof",
		paramtype = "light",
		paramtype2 = "facedir",
		tiles = {"home_blocks_tin_roof.png"},
		drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.0, 0.5},
				{-0.5, 0.0, 0.0, 0.5, 0.5, 0.5},
				{-0.5, 0.0, -0.5, 0.0, 0.5, 0.0},
			}
		},
		groups = {cracky = 1}
	})

minetest.register_craft({
		output = "home_blocks:tin_roof_inner 8",
		recipe = {
			{"","default:tin_ingot",""},
			{"default:tin_ingot","","default:tin_ingot"},
			{"default:tin_ingot","default:tin_ingot","default:tin_ingot"}
		}
	})
	
	minetest.register_node("home_blocks:tin_roof_outer",{
		description = "Outer Tin Roof",
		paramtype = "light",
		paramtype2 = "facedir",
		tiles = {"home_blocks_tin_roof.png"},
		drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.0, 0.5},
				{-0.5, 0.0, 0.0, 0.0, 0.5, 0.5},
			}
		},
		groups = {cracky = 1}
	})

minetest.register_craft({
		output = "home_blocks:tin_roof_outer 8",
		recipe = {
			{"","default:tin_ingot",""},
			{"default:tin_ingot","default:tin_ingot","default:tin_ingot"}
			}
	})
	
minetest.register_node("home_blocks:chandelier",{
		description = "Gold Chandelier",
		drawtype = "plantlike",
		light_source = 14,
		walkable = false,
		climbable = true,
		inventory_image = "home_blocks_chandelier_thumb.png",
		wield_image = "home_blocks_chandelier_thumb.png",
		tiles = {
        {
            name = "home_blocks_chandelier.png",
            animation = {
                type     = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length   = .5
            }
        }
    },
		groups = {oddly_breakable_by_hand = 1}			
	})
		
minetest.register_craft({
		output = "home_blocks:chandelier",
		recipe = {
			{"","default:gold_ingot",""},
			{"default:torch","default:gold_ingot","default:torch"}
			}
		})

minetest.register_node("home_blocks:copper_chandelier",{
		description = "Copper Chandelier",
		drawtype = "plantlike",
		light_source = 14,
		walkable = false,
		climbable = true,
		inventory_image = "home_blocks_chandelier_copper_thumb.png",
		wield_image = "home_blocks_chandelier_copper_thumb.png",
		tiles = {
        {
            name = "home_blocks_chandelier_copper.png",
            animation = {
                type     = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length   = .5
            }
        }
    },
		groups = {oddly_breakable_by_hand = 1}			
	})
		
minetest.register_craft({
		output = "home_blocks:copper_chandelier",
		recipe = {
			{"","default:copper_ingot",""},
			{"default:torch","default:copper_ingot","default:torch"}
			}
		})

minetest.register_node("home_blocks:steel_chandelier",{
		description = "Steel Chandelier",
		drawtype = "plantlike",
		light_source = 14,
		walkable = false,
		climbable = true,
		inventory_image = "home_blocks_chandelier_steel_thumb.png",
		wield_image = "home_blocks_chandelier_steel_thumb.png",
		tiles = {
        {
            name = "home_blocks_chandelier_steel.png",
            animation = {
                type     = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length   = .5
            }
        }
    },
		groups = {oddly_breakable_by_hand = 1}			
	})
		
minetest.register_craft({
		output = "home_blocks:chandelier",
		recipe = {
			{"","default:steel_ingot",""},
			{"default:torch","default:steel_ingot","default:torch"}
			}
		})

minetest.register_node("home_blocks:chain", {
		description = "Steel Chain",
		drawtype = "plantlike",
		tiles = {"home_blocks_chain.png"},
		inventory_image = "home_blocks_chain.png",
		climbable = true,
		walkable = false,
		paramtype = "light",
		selection_box = {
	type = "fixed",
	fixed = {
		{-0.1875, -0.5000, -0.1875, 0.1875, 0.5000, 0.1875}
	}
},
		groups = {oddly_breakable_by_hand = 3}
		})


minetest.register_craft({
		output = "home_blocks:chain",
		recipe = {
			{"default:steel_ingot"},
			{"default:steel_ingot"},
			{"default:steel_ingot"}
			}
		})

minetest.register_node("home_blocks:copper_chain", {
		description = "Copper Chain",
		drawtype = "plantlike",
		tiles = {"home_blocks_copper_chain.png"},
		inventory_image = "home_blocks_copper_chain.png",
		climbable = true,
		walkable = false,
		paramtype = "light",
		selection_box = {
	type = "fixed",
	fixed = {
		{-0.1875, -0.5000, -0.1875, 0.1875, 0.5000, 0.1875}
	}
},
		groups = {oddly_breakable_by_hand = 3}
		})

minetest.register_craft({
		output = "home_blocks:copper_chain",
		recipe = {
			{"default:copper_ingot"},
			{"default:copper_ingot"},
			{"default:copper_ingot"}
			}
		})

minetest.register_node("home_blocks:gold_chain", {
		description = "Gold Chain",
		drawtype = "plantlike",
		tiles = {"home_blocks_gold_chain.png"},
		inventory_image = "home_blocks_gold_chain.png",
		climbable = true,
		walkable = false,
		paramtype = "light",
		selection_box = {
	type = "fixed",
	fixed = {
		{-0.1875, -0.5000, -0.1875, 0.1875, 0.5000, 0.1875}
	}
},
		groups = {oddly_breakable_by_hand = 3}
		})

minetest.register_craft({
		output = "home_blocks:gold_chain",
		recipe = {
			{"default:gold_ingot"},
			{"default:gold_ingot"},
			{"default:gold_ingot"}
			}
		})

				-- Animated Stones
minetest.register_node("home_blocks:path_stone",{
		description = "Path Stone",
		paramtype2 = "facedir",
		light_source = 6,
    tiles = {
        {
            name = "home_blocks_pathstone.png",
            animation = {
                type     = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length   = 4.0
            }
        }
    },
		groups = {cracky = 1}
	})

minetest.register_craft({
		output = "home_blocks:path_stone 4",
		recipe = {
			{"default:diamond","",""},
			{"","home_blocks:",""},
			{"","",""}
		}
})

minetest.register_node("home_blocks:rough_stone",{
		description = "Rough Stone",
		tiles = {"home_blocks_pathstone_other.png"},
		groups = {stone = 1, cracky = 1},
		diggable = true
	})

minetest.register_craft({
		output = "home_blocks:rough_stone",
		recipe = {
			{"default:gravel"},
			{"group:stone"}
		}
	})

minetest.register_node("home_blocks:spot_stone",{
		description = "Spot Stone",
		light_source = 6,
    tiles = {
        {
            name = "home_blocks_spot_stone.png",
            animation = {
                type     = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length   = 4.0
            }
        }
    },
		groups = {cracky = 1}
	})

minetest.register_craft({
		output = "home_blocks:spot_stone 4",
		recipe = {
			{"","default:diamond",""},
			{"","home_blocks:",""},
			{"","",""}
		}
})

minetest.register_node("home_blocks:arrow_stone",{
		description = "Arrow Stone",
		paramtype2 = "facedir",
		light_source = 6,
    tiles = {
        {
            name = "home_blocks_arrow_stone.png",
            animation = {
                type     = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length   = 4.0
            }
        }
    },
		groups = {cracky = 1}
	})

minetest.register_craft({
		output = "home_blocks:arrow_stone 4",
		recipe = {
			{"","","default:diamond"},
			{"","home_blocks:",""},
			{"","",""}
		}
})

--Carpets--

local carpets_table = { --name, color, colorize(hex or color name:intensity(1-255))
{'Black', 'black', 'black:225'},
{'Blue', 'blue', 'blue:225'},
{'Brown', 'brown', 'brown:225'},
{'Cyan', 'cyan', 'cyan:200'},
{'Dark Green', 'dark_green', 'green:225'},
{'Dark Grey', 'dark_grey', 'black:200'},
{'Green', 'green', '#32cd32:150'},
{'Grey', 'grey', 'black:100'},
{'Magenta', 'magenta', 'magenta:200'},
{'Orange', 'orange', 'orange:225'},
{'Pink', 'pink', 'pink:225'},
{'Red', 'red', 'red:225'},
{'Violet', 'violet', 'violet:225'},
{'White', 'white', 'white:1'},
{'Yellow', 'yellow', 'yellow:225'},
}

for i in ipairs (carpets_table) do
   local name = carpets_table[i][1]
   local color = carpets_table[i][2]
   local hex = carpets_table[i][3]
   
minetest.register_node('home_blocks:carpet_'..color, {
   description = name..' Carpet',
   drawtype = 'nodebox',
   tiles = {'home_blocks_'..color..'_carpet.png'},
   groups = {wool = 1, oddly_breakable_by_hand = 3},
   --inventory_image = 'mp_sofa.png^[colorize:'..hex,
   paramtype = "light",
   node_box = {
      type = "fixed",
      fixed = {
      {-0.5000, -0.5000, -0.5000, 0.5000, -0.4375, 0.5000},
   },
},
})
end
--Bonsais--
minetest.register_node("home_blocks:green_bonsai",{
		description = "Green Bonsai",
		drawtype = "plantlike",
		tiles = {"home_blocks_green_bonsai.png"},
		inventory_image = "home_blocks_green_bonsai.png",
		paramtype = "light",
		groups = {oddly_breakable_by_hand = 3}
		})

minetest.register_craft({
		output = "home_blocks:green_bonsai 2",
		recipe = {
			{"wool:green"},
			{"group:wood"},
			{"default:clay_lump"}
			}
		})

minetest.register_node("home_blocks:red_bonsai",{
		description = "Red Bonsai",
		drawtype = "plantlike",
		tiles = {"home_blocks_red_bonsai.png"},
		inventory_image = "home_blocks_red_bonsai.png",
		paramtype = "light",
		groups = {oddly_breakable_by_hand = 3}
		})

minetest.register_craft({
		output = "home_blocks:red_bonsai 2",
		recipe = {
			{"wool:red"},
			{"group:wood"},
			{"default:clay_lump"}
			}
		})

minetest.register_node("home_blocks:pink_bonsai",{
		description = "Pink Bonsai",
		drawtype = "plantlike",
		tiles = {"home_blocks_pink_bonsai.png"},
		inventory_image = "home_blocks_pink_bonsai.png",
		paramtype = "light",
		groups = {oddly_breakable_by_hand = 3}
		})

minetest.register_craft({
		output = "home_blocks:pink_bonsai 2",
		recipe = {
			{"wool:pink"},
			{"group:wood"},
			{"default:clay_lump"}
			}
		})

-- Music Boxes --

minetest.register_node("home_blocks:music_box",{
		description = "Music Box",
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		tiles = {
			"home_blocks_music_top.png",
			"home_blocks_music_bottom.png",
			"home_blocks_music_side2.png",
			"home_blocks_music_side.png",
			"home_blocks_music_side.png",
			"home_blocks_music_side.png",
},
		node_box = {
	type = "fixed",
	fixed = {
		{-0.3125, -0.5000, -0.3125, 0.3125, -0.1250, 0.3125}
	}
},
		is_ground_content = false,
		groups = {choppy = 3, oddly_breakable_by_hand = 3, flamable = 1},
		on_construct = function(pos)
			local meta = minetest.get_meta(pos)
			meta:set_string("music","off")
			end,
		on_rightclick = function(pos, node, player, itemstack, pointed_thing)
			local meta = minetest.get_meta(pos)
			if not meta:get_string("music") then
			meta:set_meta("music", "on")
			minetest.sound_play("FurElise", {
		pos = {x = pos.x, y = pos.y, z = pos.z},
		max_hear_distance = 30,
		gain = 10.0
	})
				else
			meta:set_string("music", "off")
			minetest.sound_stop(handle)
	end
			end
})

-- Tiki Torch --
minetest.register_node("home_blocks:tiki_torch_bottom",{
		description = "Tiki Torch",
		tiles = {"home_blocks_tiki_torch_bottom.png"},
		inventory_image = "home_blocks_tiki_torch_item.png",
		wield_image = "home_blocks_tiki_torch_item.png",
		drawtype = "nodebox",
		node_box = {
	type = "fixed",
	fixed = {
		{-0.1875, -0.5000, -0.1875, 0.1875, 0.5000, 0.1875}
	}
},
		paramtype = light,
		groups = {oddly_breakable_by_hand = 2},
		on_construct = function(pos)
			minetest.set_node({x = pos.x, y = pos.y + 1, z = pos.z}, {name = "home_blocks:tiki_torch_top"})
			end,
		after_destruct = function(pos, oldnode)
			minetest.remove_node({x = pos.x, y = pos.y + 1, z = pos.z})
			end
		})

minetest.register_node("home_blocks:tiki_torch_top", {
		description = "Tiki Torch Top (You should not have this!)",
		drawtype = "nodebox",
		light_source = 14,
		tiles = {
			"home_blocks_tiki_torch_coals.png",
			"home_blocks_tiki_torch_bottom.png",
			"home_blocks_tiki_torch_bowl.png",
			"home_blocks_tiki_torch_bowl.png",
			"home_blocks_tiki_torch_bowl.png",
			"home_blocks_tiki_torch_bowl.png",
},
		node_box = {
	type = "fixed",
	fixed = {
		{-0.1875, -0.5000, -0.1875, 0.1875, 0.000, 0.1875},
		{-0.2500, 0.000, -0.2500, 0.2500, 0.1875, 0.2500}
	}
},
		paramtype = light,
		groups = {oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
		drop = "home_blocks_tiki_torch_bottom",
		after_destruct = function(pos, oldnode)
			minetest.remove_node({x = pos.x, y = pos.y - 1, z = pos.z})
			end
		})
