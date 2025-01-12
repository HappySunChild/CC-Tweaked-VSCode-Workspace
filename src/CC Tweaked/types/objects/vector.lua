---@meta

---@class Vector
---@field x number
---@field y number
---@field z number
local Vector = {}

---Adds two vectors together.
---@param v Vector
---@return Vector sum
function Vector:add(v) end

---Subtracts one vector from another.
---@param v Vector
---@return Vector difference
function Vector:sub(v) end

---Multiplies a vector by a scalar value.
---@param factor number
---@return Vector result
function Vector:mul(factor) end

---Divides a vector by a scalar value.
---@param factor number
---@return Vector result
function Vector:div(factor) end

---Negates a vector
---@return Vector result
function Vector:unm() end

---Compute the dot product of two vectors.
---@param o Vector
---@return number dot
function Vector:dot(o) end

---Compute the cross product of two vectors
---@param o Vector
---@return Vector result
function Vector:cross(o) end

---Get the length (also referred to as magnitude) of this vector.
---@return number magnitude
function Vector:length() end

---Divide this vector by its length, producing with the same direction, but of length 1.
---@return Vector result
function Vector:normalize() end

---Construct a vector with each dimension rounded to the nearest value.
---@param tolerance? number
---@return Vector result
function Vector:round(tolerance) end

---Convert this vector into a string, for pretty printing.
---@return string str
function Vector:tostring() end

---Check for equality between two vectors.
---@param other Vector
---@return boolean equals
function Vector:equals(other) end