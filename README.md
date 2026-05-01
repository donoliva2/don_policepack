# don_policepack
Add the following to your `ox_inventory/data/items.lua` file:

```lua
['police_armory_box'] = {
    label = 'Police Armory Box',
    weight = 1000,
    stack = true,
    close = true,
    description = 'police equipment items',
    client = {
        event = 'armorybox:client:useBox'
    }
},
```
