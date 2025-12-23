---@meta

---A 3-dimensional vector, with `x`, `y`, and `z` values.
---@operator add(vector.Vector) : vector.Vector
---@operator sub(vector.Vector) : vector.Vector
---@operator div(number) : vector.Vector
---@operator mul(number) : vector.Vector
---@operator unm : vector.Vector
---@class vector.Vector
local Vector = {
	---The `x` component of the vector.
	---@type integer
	x = nil,

	---The `y` component of the vector.
	---@type integer
	y = nil,

	---The `z` component of the vector.
	---@type integer
	z = nil,

	---Adds two vectors together.
	---@param self vector.Vector This vector.
	---@param o vector.Vector The second vector to add.
	---@return vector.Vector result The resulting vector.
	add = function(self, o) end,

	---Subtracts one vector from another.
	---@param self vector.Vector This vector.
	---@param o vector.Vector The vector to subtract.
	---@return vector.Vector result The resulting vector.
	sub = function(self, o) end,

	---Multiplies a vector by a scalar value.
	---@param self vector.Vector This vector.
	---@param factor number The scalar value to multiply with.
	---@return vector.Vector result A vector with value `(x * factor, y * factor, z * factor)`.
	mul = function(self, factor) end,

	---Divides a vector by a scalar value.
	---@param self vector.Vector This vector.
	---@param factor number The scalar value to divide by.
	---@return vector.Vector result A vector with value `(x / factor, y / factor, z / factor)`.
	div = function(self, factor) end,

	---Negate a vector.
	---@param self vector.Vector This vector.
	---@return vector.Vector result The negated vector.
	unm = function(self) end,

	---Compute the dot product of two vectors.
	---@param self vector.Vector This vector.
	---@param o number The second vector to compute the dot product of.
	---@return number dot The dot product of `self` and `o`.
	dot = function(self, o) end,

	---Compute the cross product of two vectors.
	---@param self vector.Vector This vector.
	---@param o number The second vector to compute the cross product of.
	---@return vector.Vector cross The cross product of `self` and `o`.
	cross = function(self, o) end,

	---Get the length (also referred to as magnitude) of this vector.
	---@param self vector.Vector This vector.
	---@return number length The length of this vector.
	length = function(self) end,

	---Divide this vector by its length, producing with the same direction, but of length 1.
	---@param self vector.Vector This vector.
	---@return vector.Vector normalized The normalised vector
	normalize = function(self) end,

	---Construct a vector with each dimension rounded to the nearest value.
	---@param self vector.Vector This vector.
	---@param tolerance? number The tolerance that we should round to, defaulting to `1`. For instance, a tolerance of `0.5` will round to the nearest `0.5`.
	---@return vector.Vector rounded The rounded vector.
	round = function(self, tolerance) end,

	---Convert this vector into a string, for pretty printing.
	---@param self vector.Vector This vector.
	---@return string str This vector's string representation.
	tostring = function(self) end,

	---Check for equality between two vectors. (the same as `self.X == o.X and self.Y == o.Y and self.Z == o.Z`)
	---@param self vector.Vector This vector.
	---@param o vector.Vector The second vector to compare to.
	---@return boolean equal Whether the vectors are equal.
	equals = function(self, o) end,
}
