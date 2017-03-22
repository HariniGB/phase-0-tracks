# Release 0
### FIND THE THING

**1. What are some common HTTP status codes?**
> Every HTTP transaction has a status code sent back by the server to define how the server handled the transaction. Here is a list of the most common ones.

- 200 OK
- 300 Multiple Choices
- 301 Moved Permanently
- 302 Found
- 304 Not Modified
- 307 Temporary Redirect
- 400 Bad Request
- 401 Unauthorized
- 403 Forbidden
- 404 Not Found
- 410 Gone
- 500 Internal Server Error
- 501 Not Implemented
- 503 Service Unavailable
- 550 Permission denied

> > *For more details: Click these links [About each status](https://www.smartlabsoftware.com/ref/http-status-codes.htm) and [About HTTP request process for each status](https://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10).*
----

**2. What is the difference between a GET request and a POST request? When might each be used?**
> There are four basic http request methods.  There are more but understanding these four is a great place to start.  Each has a specific intended behavior.

> - GET is for retrieving data.  It should have no side effects, you should be able to request the same URL over and over harmlessly.  

> - POST is for writing data.  It may have side effects.  Making multiple identical write requests will likely result in multiple writes.  Browsers typically give you warnings about this.  POST is *not* secure.  The data is in the body of the request instead of the URL but it is trivially simple to view/edit.

> - PUT is for editing/updating data.  It should alter an existing object rather than create a new object.  Like POST it typically puts data in the body of the request.

> - DELETE is for removing data.  It typically uses the URL rather than placing data in the body.

##### Difference between GET and POST.

|   | **GET** | **POST** |
|---|---|---|
| BACK button/Reload   | Harmless  | Data will be re-submitted  |
| Bookmarked  | Can be bookmarked  | Cannot be bookmarked  |
| Cached  | Can be cached  | Not cached  |
| Encoding type  | application/x-www-form-urlencoded  |  application/x-www-form-urlencoded or multipart/form-data. Use multipart encoding for binary data |
| History | Parameters remain in browser history  | Parameters are not saved in browser history  |
| Restrictions on data length  | Yes, when sending data, the GET method adds the data to the URL; and the length of a URL is limited   |  No restrictions |
| Restrictions on data type  | Only ASCII characters allowed  | No restrictions. Binary data is also allowed  |
| Security  | GET is less secure compared to POST because data sent is part of the URL. Never use GET when sending passwords or other sensitive information!  |  POST is a little safer than GET because the parameters are not stored in browser history or in web server logs |
| Visibility  | Data is visible to everyone in the URL  | Data is not displayed in the URL  |

----
**3. What is a cookie ? How does it relate to HTTP requests?**
> An HTTP cookie (web cookie, browser cookie) is a small piece of data that a server sends to the user's web browser, that may store it and send it back together with the next request to the same server. Typically, it's used to know if two requests came from the same browser allowing to keep a user logged-in.
>> Cookies are mainly used for these three purposes:
- Session management (user logins, shopping carts)
- Personalization (user preferences)
- Tracking (analyzing user behavior)



