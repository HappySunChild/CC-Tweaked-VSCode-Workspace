---@meta

---Make HTTP requests, sending and receiving data to a remote web server.
---
---[Allowing access to local IPs](https://tweaked.cc/guide/local_ips.html) To allow accessing servers running on your local network.
---
---<h2 align="center"><a href="https://tweaked.cc/module/http.html">Official Documentation</a></h2>
---@class http
http = {}


---Asynchronously determine whether a URL can be requested.
---
---If this returns true, one should also listen for [http_check](https://tweaked.cc/event/http_check.html)
---which will container further information about whether the URL is allowed or not.
---@async
---@param url string The URL to check.
---@return boolean isValid Whether this url is valid.
---@return string reason A reason why this URL is not valid (for instance, if it is malformed, or blocked).
function http.checkURLAsync(url) end

---Asynchronously determine whether a URL can be requested.
---
---If this returns true, one should also listen for [http_check](https://tweaked.cc/event/http_check.html)
---which will container further information about whether the URL is allowed or not.
---@param url string The URL to check.
---@return boolean isValid Whether this url is valid.
---@return string reason A reason why this URL is not valid (for instance, if it is malformed, or blocked).
function http.checkURL(url) end


---Asynchronously open a websocket.
---
---This returns immediately, a [websocket_success](https://tweaked.cc/event/websocket_success.html) or [websocket_failure](https://tweaked.cc/event/websocket_failure.html)
---will be queued once the request has completed.
---@async
---@param url string
---@param headers? http.headers
function http.websocketAsync(url, headers) end

---Asynchronously open a websocket.
---
---This returns immediately, a [websocket_success](https://tweaked.cc/event/websocket_success.html) or [websocket_failure](https://tweaked.cc/event/websocket_failure.html)
---will be queued once the request has completed.
---@async
---@param request? http.websocketRequest
function http.websocketAsync(request) end


---Open a websocket.
---@param url string
---@param headers? http.headers
---@return http.Websocket
function http.websocket(url, headers) end

---Open a websocket.
---@param request http.websocketRequest
---@return http.Websocket
function http.websocket(request) end

-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------

---Make a HTTP GET request to the given url.
---@param url string The url to request.
---@param headers? http.headers Additional headers to send as part of this request.
---@param binary? boolean Whether the response handle should be opened in binary mode.
---@return http.Response? response The resulting http response, which can be read from or nil in the event of an error.
---@return string? reason A message detailing why the request failed.
---@return http.Response? failedResponse The failing http response, if available.
function http.get(url, headers, binary) end

---Make a HTTP GET request to the given url.
---@param request http.request Options for the request. See [http.request](https://tweaked.cc/module/http.html#v:request) for details on how these options behave.
---@return http.Response? response The resulting http response, which can be read from or nil in the event of an error.
---@return string? reason A message detailing why the request failed.
---@return http.Response? failedResponse The failing http response, if available.
function http.get(request) end

-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------

---Make a HTTP POST request to the given url.
---@param url string The url to request.
---@param body string The body of the POST request.
---@param headers? http.headers Additional headers to send as part of this request.
---@param binary? boolean Whether the response handle should be opened in binary mode.
---@return http.Response? response The resulting http response, which can be read from or nil in the event of an error.
---@return string? reason A message detailing why the request failed.
---@return http.Response? failedResponse The failing http response, if available.
function http.post(url, body, headers, binary) end

---Make a HTTP POST request to the given url.
---@param request http.request Options for the request. See [http.request](https://tweaked.cc/module/http.html#v:request) for details on how these options behave.
---@return http.Response? response The resulting http response, which can be read from or nil in the event of an error.
---@return string? reason A message detailing why the request failed.
---@return http.Response? failedResponse The failing http response, if available.
function http.post(request) end

-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------

---Asynchronously make a HTTP request to the given url.
---
---This returns immediately, a [http_success](https://tweaked.cc/event/http_success.html) or [http_failure](https://tweaked.cc/event/http_failure.html) event will be queued once the request has completed.
---@async
---@param url string
---@param body? string
---@param headers? http.headers
---@param binary? boolean
function http.request(url, body, headers, binary) end

---Asynchronously make a HTTP request to the given url.
---
---This returns immediately, a [http_success](https://tweaked.cc/event/http_success.html) or [http_failure](https://tweaked.cc/event/http_failure.html) event will be queued once the request has completed.
---@async
---@param request http.request
function http.request(request) end