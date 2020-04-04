local Class = {}
function Class:new() end
function Class:extend(className) 
    local obj = {}
        obj.__super    = self
        obj.__class    = className or "Object"
        obj.__tostring = self.__tostring
        obj.__call     = self.__call
        obj.__index    = obj
    return setmetatable(obj, self)
end
function Class:class() return self.__class end
function Class:super() return self.__super end
function Class:__index(v) return Class[v] end
function Class:__call(...) local obj = setmetatable({}, self) obj:new(...) return obj end
function Class:__tostring() return self:class() end
return Class
