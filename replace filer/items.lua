-- define items, see the Inventory API on github

local cfg = {}
-- see the manual to understand how to create parametric items
-- idname = {name or genfunc, description or genfunc, genfunc choices or nil, weight or genfunc}
-- a good practice is to create your own item pack file instead of adding items here
cfg.items = {
  ["Coke Planter"] = {"Coke Planter", "Nogle Coke Planter.", nil, 0.01}, -- no choices
  ["Hash"] = {"Hash", "Noget Hash til weed.", nil, 0.01}, -- no choices
  ["syre"] = {"syre", "Syre til lsd.", nil, 0.01}, -- no choices
  ["lysergicacidamide"] = {"Lysergicacidamide", "Some acid.", nil, 0.05}, -- no choices
  ["pakkede coke"] = {"pakkede coke", "Klar til salg.", nil, 0.15}, -- no choices
  ["pakkede Weed"] = {"pakkede Weed", "Klar til salg.", nil, 0.10},
  ["pakkede lsd"] = {"pakkede lsd", "Klar til salg.", nil, 0.10},
  ["AK47"] = {"AK47", "A Russian masterpeice.", nil, 0.01}, -- no choices
  ["M4A1"] = {"M4A1", "Helps give non-Americans freedom.", nil, 0.01}, -- no choices
  ["credit"] = {"Stolen Credit Card", "Credit card.", nil, 0.01}, -- no choices
  ["driver"] = {"Driver license Card", "license card.", nil, 0.01}, -- no choices
  ["bank_money"] = {"Money of bank", "$.", nil, 0},
  ["trash"] = {"Trash", "It fucking stinks!", nil, 0},  -- no choices
  ["fake_id"] = {"Fake ID", "It just says Mcluvin.", nil, 0}, -- no choices
  ["police_report"] = {"Police Report", "Take it to the Bank Manager.", nil, 0},  -- no choices
  ["ems_report"] = {"EMS Report", "Take it to the Hospital.", nil, 0}, -- no choices
  ["cargo"] = {"Cargo", "Boxes full of porn.", nil, 0} -- no choices
}

-- load more items function
local function load_item_pack(name)
  local items = module("cfg/item/"..name)
  if items then
    for k,v in pairs(items) do
      cfg.items[k] = v
    end
  else
    print("[vRP] item pack ["..name.."] not found")
  end
end

-- PACKS
load_item_pack("required")
load_item_pack("food")
load_item_pack("drugs")

return cfg
