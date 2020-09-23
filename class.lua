local Class = {}

function Class:extend(name)
	local obj = {}
		obj.super   = self
		obj.class   = function() return name or "Default" end
		obj.new     = function() end
		obj.__call  = self.__call
		obj.__index = obj
	return setmetatable(obj, self)
end
function Class:__index(v) return Class[v] end
function Class:__call(...) local obj = setmetatable({}, self) obj:new(...) return obj end

return Class
