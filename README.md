# class
Small class module for lua

```lua 
Class = require("class")

Animal = Class:extend("Animal")
function Animal:new(name, age)
  self.alive = true
  self.name = name
  self.age = age
end

Sheep = Animal:extend("Sheep")
function Sheep:new(name, age, fluffiness)
  Animal:super().new(self, name, age)
  self.noise = "Beeeeeh !!"
  self.fluffiness = fluffiness
end

Cow = Animal:extend("Cow")
function Cow:new()
  Animal:super().new(self, "Cowcow", 12)
  self.noise = "Meeeeeuuuhhh !!"
end

local myAnimal = Animal("Anime girl", 999)
local mySheep = Sheep("Kawaii sheep", 1, 12)
local mySecondSheep = Sheep("Kawaii sheep two", 2, 24)
local myCow = Cow()

```
