# 



# Group NervesHubAPIWeb.Users
## NervesHubAPIWeb.Users [/users/auth]
### NervesHubAPIWeb.Users auth [POST /users/auth]


+ Request authenticate existing accounts
**POST**&nbsp;&nbsp;`/users/auth`

    + Headers
    
            content-type: multipart/mixed; boundary=plug_conn_test
    + Body
    
            {
              "email": "account_test@test.com",
              "password": "12345678"
            }

+ Response 200

    + Headers
    
            content-type: application/json; charset=utf-8
            cache-control: max-age=0, private, must-revalidate
    + Body
    
            {
              "data": {
                "email": "account_test@test.com",
                "username": "new_user"
              }
            }
### NervesHubAPIWeb.Users me [GET /users/me]


+ Request me
**GET**&nbsp;&nbsp;`/users/me`

    + Headers
    
            accept: application/json

+ Response 200

    + Headers
    
            content-type: application/json; charset=utf-8
            cache-control: max-age=0, private, must-revalidate
    + Body
    
            {
              "data": {
                "email": "email-262@mctesterson.com",
                "username": "user-294"
              }
            }
### NervesHubAPIWeb.Users register [POST /users/register]


+ Request register new account
**POST**&nbsp;&nbsp;`/users/register`

    + Headers
    
            content-type: multipart/mixed; boundary=plug_conn_test
    + Body
    
            {
              "email": "new_test@test.com",
              "password": "12345678",
              "username": "api_test"
            }

+ Response 200

    + Headers
    
            content-type: application/json; charset=utf-8
            cache-control: max-age=0, private, must-revalidate
    + Body
    
            {
              "data": {
                "email": "new_test@test.com",
                "username": "api_test"
              }
            }

