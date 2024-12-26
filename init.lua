local S = minetest.get_translator("mcl_mosaic_planks")

for wood, defs in pairs(mcl_trees.woods) do
    if wood ~= "bamboo" then
        local base_defs = minetest.registered_nodes["mcl_trees:wood_" .. wood]

        minetest.register_node(":mcl_trees:mosaic_" .. wood, table.merge(base_defs, {
            description = S("@1 Mosaic", defs.readable_name),
            tiles = {"mcl_mosaic_planks_" .. wood .. ".png"}
        }))

        minetest.register_craft({
            output = "mcl_trees:mosaic_" .. wood,
            recipe = {
                {"mcl_stairs:slab_" .. wood},
                {"mcl_stairs:slab_" .. wood}
            }
        })
    end
end
