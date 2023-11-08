return {
  "utilyre/barbecue.nvim",
  name = "barbecue",
  version = "*",
  dependencies = {
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons", -- optional dependency
},
config = function()
    local barber = require("barbecue.ui")
    barber.toggle(false)

    barber.toggle(true)

    barber.toggle()

    barber.update()

    barber.update(winnr)

    barber.navigate(2)

    barber.navigate(-1)

    barber.navigate(index, winnr)
end
}
