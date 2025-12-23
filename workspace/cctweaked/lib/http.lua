---@meta

---@alias http.Headers table<string, string>

---@class http.Request
---@field url string
---@field method? string
---@field headers? http.Headers
---@field binary? boolean
---@field redirect? boolean
---@field timeout? number

---@class http.WebsocketRequest
---@field url string
---@field headers? http.Headers
---@field timeout? number

---Make HTTP requests, sending and receiving data to a remote web server.
---
---[Allowing access to local IPs](https://tweaked.cc/guide/local_ips.html) To allow accessing servers running on your local network.
---
---<h2 align="center"><a href="https://tweaked.cc/module/http.html">Official Documentation</a></h2>
---@class httplib
local http = {
	---Asynchronously determine whether a URL can be requested.
	---
	---If this returns true, one should also listen for [http_check](https://tweaked.cc/event/http_check.html)
	---which will container further information about whether the URL is allowed or not.
	---@async
	---@param url string The URL to check.
	---@return boolean isValid Whether this url is valid.
	---@return string reason A reason why this URL is not valid (for instance, if it is malformed, or blocked).
	checkURLAsync = function(url) end,

	---Asynchronously determine whether a URL can be requested.
	---
	---If this returns true, one should also listen for [http_check](https://tweaked.cc/event/http_check.html)
	---which will container further information about whether the URL is allowed or not.
	---@param url string The URL to check.
	---@return boolean isValid Whether this url is valid.
	---@return string reason A reason why this URL is not valid (for instance, if it is malformed, or blocked).
	checkURL = function(url) end,

	---Asynchronously open a websocket.
	---
	---This returns immediately, a [websocket_success](https://tweaked.cc/event/websocket_success.html) or [websocket_failure](https://tweaked.cc/event/websocket_failure.html)
	---will be queued once the request has completed.
	---@async
	---@param url string
	---@param headers? http.Headers
	websocketAsync = function(url, headers) end,

	---Asynchronously open a websocket.
	---
	---This returns immediately, a [websocket_success](https://tweaked.cc/event/websocket_success.html) or [websocket_failure](https://tweaked.cc/event/websocket_failure.html)
	---will be queued once the request has completed.
	---@async
	---@param request? http.WebsocketRequest
	websocketAsync = function(request) end,

	---Open a websocket.
	---@param url string
	---@param headers? http.Headers
	---@return http.Websocket
	websocket = function(url, headers) end,

	---Open a websocket.
	---@param request http.WebsocketRequest
	---@return http.Websocket
	websocket = function(request) end,

	-------------------------------------------------------------------------------------------------------------------
	-------------------------------------------------------------------------------------------------------------------

	---Make a HTTP GET request to the given url.
	---@param url string The url to request.
	---@param headers? http.Headers Additional headers to send as part of this request.
	---@param binary? boolean Whether the response handle should be opened in binary mode.
	---@return http.Response? response The resulting http response, which can be read from or nil in the event of an error.
	---@return string? reason A message detailing why the request failed.
	---@return http.Response? failedResponse The failing http response, if available.
	get = function(url, headers, binary) end,

	---Make a HTTP GET request to the given url.
	---@param request http.Request Options for the request. See [http.Request](https://tweaked.cc/module/http.html#v:request) for details on how these options behave.
	---@return http.Response? response The resulting http response, which can be read from or nil in the event of an error.
	---@return string? reason A message detailing why the request failed.
	---@return http.Response? failedResponse The failing http response, if available.
	get = function(request) end,

	-------------------------------------------------------------------------------------------------------------------
	-------------------------------------------------------------------------------------------------------------------

	---Make a HTTP POST request to the given url.
	---@param url string The url to request.
	---@param body string The body of the POST request.
	---@param headers? http.Headers Additional headers to send as part of this request.
	---@param binary? boolean Whether the response handle should be opened in binary mode.
	---@return http.Response? response The resulting http response, which can be read from or nil in the event of an error.
	---@return string? reason A message detailing why the request failed.
	---@return http.Response? failedResponse The failing http response, if available.
	post = function(url, body, headers, binary) end,

	---Make a HTTP POST request to the given url.
	---@param request http.Request Options for the request. See [http.Request](https://tweaked.cc/module/http.html#v:request) for details on how these options behave.
	---@return http.Response? response The resulting http response, which can be read from or nil in the event of an error.
	---@return string? reason A message detailing why the request failed.
	---@return http.Response? failedResponse The failing http response, if available.
	post = function(request) end,

	-------------------------------------------------------------------------------------------------------------------
	-------------------------------------------------------------------------------------------------------------------

	---Asynchronously make a HTTP request to the given url.
	---
	---This returns immediately, a [http_success](https://tweaked.cc/event/http_success.html) or [http_failure](https://tweaked.cc/event/http_failure.html) event will be queued once the request has completed.
	---@async
	---@param url string
	---@param body? string
	---@param headers? http.Headers
	---@param binary? boolean
	request = function(url, body, headers, binary) end,

	---Asynchronously make a HTTP request to the given url.
	---
	---This returns immediately, a [http_success](https://tweaked.cc/event/http_success.html) or [http_failure](https://tweaked.cc/event/http_failure.html) event will be queued once the request has completed.
	---@async
	---@param request http.Request
	request = function(request) end,
}
