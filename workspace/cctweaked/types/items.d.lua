---@meta

---@class cc.types.items.CreativeTabItemGroup
---@field id string
---@field displayName string

---@class cc.types.items.Enchantment
---@field name string The namespaced ID for this enchantment, e.g. minecraft:efficiency. See [the Minecraft wiki](https://minecraft.wiki/w/Java_Edition_data_values#Enchantments) for a list of vanilla enchantment IDs.
---@field displayName string The translated display name for this enchantment.
---@field level number The level for this enchantment.

---@class cc.types.items.PotionEffect
---@field name string The namespaced ID for this effect, e.g. minecraft:regeneration. See [the Minecraft wiki](https://minecraft.wiki/w/Java_Edition_data_values#Effects) for a list of vanilla effect IDs.
---@field displayName string The translated display name for this potion effect.
---@field duration number? The duration this effect will last for (if not instant), in seconds.
---@field potency number? The potency of this potion.

---Several functions in `CC: Tweaked`, such as `turtle.getItemDetail` and `inventory.getItemDetail` provide a way to get information about an item stack.
---These functions all return a table containing information about the item that will loosely fit the scheme defined in this type.
---
---Some methods (such as `inventory.list` and `turtle.getItemDetail` without the `detailed` flag), will only return the "Basic information" about the item.
---
---<h2 align="center"><a href="https://tweaked.cc/reference/item_details.html">Official Documentation</a></h2>
---@class cc.types.items.BasicItemStackDetails
---@field name string The namespaced ID for this block, e.g. `minecraft:dirt`. See [the Minecraft wiki](https://minecraft.wiki/w/Java_Edition_data_values#Blocks) for a list of vanilla item IDs.
---@field count number The number of items in the stack.
---@field nbt string? A hash of the NBT in the stack. While this does not expose any information about the item's NBT, it can be used as a way to compare items. If two items have the same name and nbt, then all other properties (e.g. durability, enchantment) will be the same.

---<h2 align="center"><a href="https://tweaked.cc/reference/item_details.html">Official Documentation</a></h2>
---@class cc.types.items.ItemStackDetails : cc.types.items.BasicItemStackDetails
---@field displayName string The translated display name of the item. This uses the server's language. This will typically be English on multi-player servers, and your current language on single player.
---@field lore string[]? Additional lore about this item, as a list of strings.
---@field maxCount number? The max possible size of the item stack.
---@field tags table<string, true> The set of tags for this item. This is a mapping of tag name to true.
---@field itemGroups cc.types.items.CreativeTabItemGroup[] The item groups this item appears on. Each item group is stored as a table, containing its id and display name.
---@field damage number? The amount of damage this item has taken.
---@field maxDamage number? The maximum amount of damage this item has taken.
---@field durability number? If this item is daamged (i.e. the durability bar is visible), the percentage left on the durability bar, between 0 and 1 (inclusive).
---@field unbreakable boolean? Whether item is unbreakable.
---@field enchantments cc.types.items.Enchantment[]? The enchantments this item has.
---@field potionEffects cc.types.items.PotionEffect[]? The effects this item has.
---@field mapColor number? The colour the item's block form will appear on the map, if specified.
---@field mapColour number? The colour the item's block form will appear on the map, if specified.
