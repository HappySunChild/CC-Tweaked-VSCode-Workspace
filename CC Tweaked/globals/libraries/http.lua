---@meta

---@class Libraries.http
http = {}

---Make a HTTP GET request to the given url.
---@param url string
---@param headers? http.Headers
---@param binary? boolean
---@return http.Response? response
---@return string? message
---@return http.Response? failedResponse
function http.get(url, headers, binary) end

---Make a HTTP GET request to the given url.
---@param request http.Request
---@return http.Response? response
---@return string? message
---@return http.Response? failedResponse
function http.get(request) end

---Make a HTTP POST request to the given url.
---@param url string
---@param body string
---@param headers? http.Headers
---@param binary? boolean
---@return http.Response? response
---@return string? message
---@return http.Response? failedResponse
function http.post(url, body, headers, binary) end

---Make a HTTP POST request to the given url.
---@param request http.Request
---@return http.Response? response
---@return string? message
---@return http.Response? failedResponse
function http.post(request) end

---Asynchronously make a HTTP request to the given url.
---@param url string
---@param body? string
---@param headers? http.Headers
---@param binary? boolean
function http.request(url, body, headers, binary) end

---Asynchronously make a HTTP request to the given url.
---@param request http.Request
function http.request(request) end

---Asynchronously determine whether a URL can be requested.
---@param url string
---@return boolean valid
---@return string? reason
function http.checkURLAsync(url) end

---Determine whether a URL can be requested.
---@param url string
---@return boolean valid
---@return string? reason
function http.checkURL(url) end

---Asynchronously open a websocket.
---@param url string
---@param headers? http.Headers
function http.websocketAsync(url, headers) end

---Open a websocket
---@param url string
---@param headers? http.Headers
---@return http.Websocket|false websocket
---@return string? message
function http.websocket(url, headers) end