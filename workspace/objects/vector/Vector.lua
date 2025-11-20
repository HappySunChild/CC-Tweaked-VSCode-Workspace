---@meta

---A 3-dimensional vector, with `x`, `y`, and `z` values.
---@operator add(vector.Vector) : vector.Vector
---@operator sub(vector.Vector) : vector.Vector
---@operator div(number) : vector.Vector
---@operator mul(number) : vector.Vector
---@operator unm : vector.Vector
---@class vector.Vector
local Vector = {}

---The `x` component of the vector.
---@type integer
Vector.x = nil

---The `y` component of the vector.
---@type integer
Vector.y = nil

---The `z` component of the vector.
---@type integer
Vector.z = nil

---Adds two vectors together.
---@param o vector.Vector The second vector to add.
---@return vector.Vector result The resulting vector.
function Vector:add(o) end

---Subtracts one vector from another.
---@param o vector.Vector The vector to subtract.
---@return vector.Vector result The resulting vector.
function Vector:sub(o) end

---Multiplies a vector by a scalar value.
---@param factor number The scalar value to multiply with.
---@return vector.Vector result A vector with value `(x * factor, y * factor, z * factor)`.
function Vector:mul(factor) end

---Divides a vector by a scalar value.
---@param factor number The scalar value to divide by.
---@return vector.Vector result A vector with value `(x / factor, y / factor, z / factor)`.
function Vector:div(factor) end

---Negate a vector.
---@return vector.Vector result The negated vector.
function Vector:unm() end

---Compute the dot product of two vectors.
---@param o number The second vector to compute the dot product of.
---@return number dot The dot product of `self` and `o`.
function Vector:dot(o) end

---Compute the cross product of two vectors.
---@param o number The second vector to compute the cross product of.
---@return vector.Vector cross The cross product of `self` and `o`.
function Vector:cross(o) end

---Get the length (also referred to as magnitude) of this vector.
---@return number length The length of this vector.
function Vector:length() end

---Divide this vector by its length, producing with the same direction, but of length 1.
---@return vector.Vector normalized The normalised vector
function Vector:normalize() end

---Construct a vector with each dimension rounded to the nearest value.
---@param tolerance? number The tolerance that we should round to, defaulting to `1`. For instance, a tolerance of `0.5` will round to the nearest `0.5`.
---@return vector.Vector rounded The rounded vector.
function Vector:round(tolerance) end

---Convert this vector into a string, for pretty printing.
---@return string str This vector's string representation.
function Vector:tostring() end

---Check for equality between two vectors. (the same as `self.X == o.X and self.Y == o.Y and self.Z == o.Z`)
---@param o vector.Vector The second vector to compare to.
---@return boolean equal Whether the vectors are equal.
function Vector:equals(o) end
