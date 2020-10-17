# cl4ss
Small class module for lua

```lua
Class = require("clas")

Animal = Class:extend("Animal")
function Animal:new(name, noise)
  self.name = name or 'Anonymal'
	self.noise = noise or '...'
end
function Animal:make_noise()
  print(self.name .. ' says : ' .. self.noise)
end

WalkingAnimal = Animal:extend("WalkingAnimal")
function WalkingAnimal:new(name, noise, nb_of_legs)
	WalkingAnimal.super.new(self, name, noise)
	self.nb_of_legs = nb_of_legs or 4
end
function WalkingAnimal:tell_number_of_legs()
  print(self.nb_of_legs)
end

Sheep = WalkingAnimal:extend("Sheep")
function Sheep:new(name)
  Sheep.super.new(self, name, "Beeeeeh !!")
  self.fluffiness = 'very'
end

function Sheep:make_noise()
  print(self.name .. ' says : ' .. self.noise .. ' and is ' .. self.fluffiness .. ' fluffy.')
end

Cow = WalkingAnimal:extend("Cow")
function Cow:new()
  Cow.super.new(self, "Cowcow", "Meeeeeuuuhhh !!", 8)
end


local my_animal = Animal('Albert', 'Croaaaa ...')
local my_walking_animal = WalkingAnimal('Onee', 'Ara ara ~', 2)
local my_sheep = Sheep('Stan')
local my_second_sheep = Sheep('Stuart')
local my_cow = Cow()

my_walking_animal:make_noise()
my_sheep:make_noise()
my_second_sheep:make_noise()
my_cow:tell_number_of_legs()
```
