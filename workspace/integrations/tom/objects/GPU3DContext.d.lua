---@meta

---@class tom.GPU3DContext : tom.BaseGPU
local GPU3DContext = {
	---Clears the scene.
	clear = function() end,

	---Renders the screen to the context's buffer.
	render = function() end,

	---Sets the light direction to the vector (`x`, `y`, `z`) in the scene.
	---
	---A direction of `(0, 0, -1)` will cast light from the camera's point of view.
	---
	---***It is recommended you call this function upon creating a [3D GPU Context](lua://tom.GPU2DContext.createWindow3D).***
	---@param x number
	---@param y number
	---@param z number
	glDirLight = function(x, y, z) end,

	---Sets the [frustum](https://en.wikipedia.org/wiki/Frustum) of the camera.
	---
	---***It is recommended you call this function upon creating a [3D GPU Context](lua://tom.GPU2DContext.createWindow3D).***
	---@param fov number
	---@param z_near number
	---@param z_far number
	glFrustum = function(fov, z_near, z_far) end,

	---Adds a vertex to the current mesh.
	---@param x number
	---@param y number
	---@param z number
	glVertex = function(x, y, z) end,

	---Sets the texture coordinates for the vertex that was *last* added.
	---Any subsequent vertices will also have their UV set to the specified value.
	---@param u number
	---@param v number
	glTexCoord = function(u, v) end,

	---Sets the vertex color for the vertex that was *last* added.
	---Any subsequent vertices will also have their color set to the specified value.
	---@overload fun(red: number, green: number, blue: number)
	---@param color number
	glColor = function(color) end,

	---Scales the current matrix by the specified amount.
	---@param x number
	---@param y number
	---@param z number
	glScale = function(x, y, z) end,

	---Rotates the current matrix by the specified angle, in degrees, around the set vector.
	---@param angle number
	---@param x number
	---@param y number
	---@param z number
	glRotate = function(angle, x, y, z) end,

	---Translates the current matrix by the specified amount.
	---@param x number
	---@param y number
	---@param z number
	glTranslate = function(x, y, z) end,

	---Sets the current matrix to be an identity matrix.
	glLoadIdentity = function() end,

	---Pushes the current matrix onto the Matrix Stack.
	glPushMatrix = function() end,

	---Pops a matrix off the Matrix Stack.
	glPopMatrix = function() end,

	---Begins a new mesh.
	---
	---### Supported Modes
	--- - 4 = `GL_TRIANGLES`
	---@param mode number? Can only ever be 4 (GL_TRIANGLES).
	glBegin = function(mode) end,

	---Ends a mesh that was started with [glBegin()](lua://tom.peripheral.GPU.GPU3DContext.glBegin).
	glEnd = function() end,

	---Enables a feature in rendering.
	---
	---### Supported Feature Ids
	--- - 0xDE1 = `GL_TEXTURE_2D`
	---@param id number
	glEnable = function(id) end,

	---Disables a feature in rendering.
	---
	---### Supported Feature Ids
	--- - 0xDE1 = `GL_TEXTURE_2D`
	---@param id number
	glDisable = function(id) end,

	---Allocates a new texture, stores it in the context's texture map and returns it's id.
	---
	---You can optionally allocate more than one texture at once using the `count` parameter, but doing so doesn't seem to have any practical use.
	---Allocating more than one texture at once will only return the id of the first one.
	---
	---You should call this after loading an image's binary data into a [LuaImage](lua://tom.LuaImage) with [decodeImage](lua://tom.peripheral.GPU.decodeImage).
	---@param count number?
	---@return number texture_id
	glGenTextures = function(count) end,

	---Deallocates the textures corresponding to the specified ids, removing them from the context's texture map and GPU's VRAM.
	---@param ... number
	glDeleteTextures = function(...) end,

	---Sets the context's **"bound texture"** to the texture associated with the specified id.
	---
	---You should call this after allocating a new texture with [glGenTextures](lua://tom.GPU3DContext.glGenTextures).
	---@param id number
	glBindTexture = function(id) end,

	---Sets the pixel data of the context's current **"bound texture"** to the [LuaImage](lua://tom.LuaImage) that `image_ref` points to.
	---
	---You should call this after setting the context's bound texture with [glBindTexture](lua://tom.GPU3DContext.glBindTexture).
	---@param image_ref string
	glTexImage = function(image_ref) end,
}
