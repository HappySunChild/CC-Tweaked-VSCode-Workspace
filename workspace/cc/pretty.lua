---@meta

---A pretty printer for rendering data structures
---in an aesthetically pleasing manner.
---
---In order to display something using `cc.pretty`, you build
---up a series of `documents`. These behave a little bit like
---strings; you can concatenate them together and then print
---them to the screen.
---
---However, documents also allow you to control how they should
---be printed. There are several functions (such as `nest` and `group`)
---which allow you to control the "layout" of the document. When you
---come to display the document, the 'best' (most compact) layout is used.
---
---The structure of this module is based on [*A Prettier Printer*](https://homepages.inf.ed.ac.uk/wadler/papers/prettier/prettier.pdf).
---<h2 align="center"><a href="https://tweaked.cc/library/cc.pretty.html">Official Documentation</a></h2>
local pretty = {}



---A document containing formatted text, with multiple possible layouts.
---@class cc.pretty.Doc
---@operator concat(string|cc.pretty.Doc):cc.pretty.Doc


---Controls how various properties are displayed.
---@class cc.pretty.prettyOptions
---@field function_args? boolean 			Show the arguments to a function if known (`false` by default).
---@field function_source? boolean 			Show where the function was defined, instead of `function: xxxxxxxx` (`false` by default).



---An empty document.
---@type cc.pretty.Doc
pretty.empty = nil

---A document with a single space in it.
---@type cc.pretty.Doc
pretty.space = nil

---A line break. When collapsed with `group`, this will be replaced with `empty`.
---@type cc.pretty.Doc
pretty.line = nil

---A line break. When collapsed with `group`, this will be replaced with `space`.
---@type cc.pretty.Doc
pretty.space_line = nil



---Create a new document from a string.
---
---If your string contains multiple lines, group will flatten the string into a single line, with spaces between each line.
---@param text string 						The string to construct a new document with.
---@param color? colors.color 				The color this text should be printed with. If not given, we default to the current color.
---@return cc.pretty.Doc doc 				The document with the provided text.
function pretty.text(text, color) end


---Concatenate several documents together.
---This behaves very similar to string concatenation.
---@param ... cc.pretty.Doc|string 			The documents to concatenate.
---@return cc.pretty.Doc doc 				The concatenated documents.
function pretty.concat(...) end


---Indent later lines of the given document with the given number of spaces.
---
---For instance, nesting the document
---```
---foo
---bar
---```
---with a `depth` of 2 will produce
---```
---foo
---  bar
---```
---@param depth number 						The number of spaces with which the document should be indented.
---@param doc cc.pretty.Doc 				The document to indent.
---@return cc.pretty.Doc doc 				The nested document.
function pretty.nest(depth, doc) end


---Builds a document which is displayed on a single line if there is enough room, or as normal if not.
---@param doc cc.pretty.Doc 				The document to group.
---@return cc.pretty.Doc doc 				The grouped document.
function pretty.group(doc) end


---Display a document on the terminal.
---@param doc cc.pretty.Doc 				The document to render
---@param ribbon_frac? number 				The maximum fraction of the width that we should write in, is 0.6 by default.
function pretty.write(doc, ribbon_frac) end


---Display a document on the terminal with a trailing new line.
---@param doc cc.pretty.Doc 				The document to render.
---@param ribbon_frac? number 				The maximum fraction of the width that we should write in, is 0.6 by default.
function pretty.print(doc, ribbon_frac) end


---Render a document, converting it into a string.
---@param doc cc.pretty.Doc 				The document to render.
---@param width? number 					The maximum width of this document. Note that long strings will not be wrapped to fit this width - it is only used for finding the best layout.
---@param ribbon_frac? number 				The maximum fraction of the width that we should write in, is 0.6 by default.
---@return string rendered 					The rendered document as a string.
function pretty.render(doc, width, ribbon_frac) end


---Pretty-print an arbitrary object, converting it into a document.
---
---This can then be rendered with write or print.
---@param obj any 							The object to pretty-print.
---@param options? cc.pretty.prettyOptions 	Controls how various properties are displayed.
---@return cc.pretty.Doc doc 				The object formatted as a document.
function pretty.pretty(obj, options) end


---A shortcut for calling `pretty` and `print` together.
---@param obj any 							The object to pretty-print.
---@param options? cc.pretty.prettyOptions 	Controls how various properties are displayed.
---@param ribbon_frac? number 				The maximum fraction of the width that we should write in, is 0.6 by default.
function pretty.pretty_print(obj, options, ribbon_frac) end

return pretty