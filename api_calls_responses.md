Unit Notes: Height is in cm, weight is in pounds.


## API Endpoints

* [Login](#login)
* [List of Players](#players)
  * [Individual Player](#player)


Run your server locally to test calls in Postman (Default url should be http://localhost:3000/)
```ruby
rails s
```

## Login
`/login` endpoint - Retrieve auth_token by logging in with an authorized user:
```sh
POST api/v0/login
```


In the body of your request, include the following raw json:
```json
{
  "email": "sample.coach@mobile.edu",
  "password": "samplepassword"
}
```

Expected response:
```json
{
    "auth_token": "EyKRyQBFUj/RamVp/3cmuqTS7SBheqC4x+iRC+xx1bijHyQgYrxUA5MxYeYwKVALvfId0MqLNkcaie6jb/+auiU/47+vMHQC6PTHk3f/u/6LW0zlJTd8T2+uTFXu5TqQsA1MiacK3ecnmOXGFzo+UUgzLZMDIaisNTTHyDvJXcC3/1xA7OAGrC5Ok+KAypAlDIYh0khY+jX1C3jIhDI4aGSeJPeHmFHVNfptou383qTfy2RoOUT99LFcxMfSQUpkeoXBaqajAaFFgi6Swpyuzp0GGJhc5cFb7QBjfOcwhUN616PRK+NWOR+Kp3X7c2UzlIMmyb4eDY+SedaE+3xxO8KTgsVIRFQymyeOA0cJDDT9RXb0xNxMgXk7AeMuPzZ36U8ZOP1lfNvfEALTfAe9IvL4sAd7OTzDsNvLFe+cxj2Z+mZ32TDORGmOUX9GBcdaBY6CaGdRod9nO5oi31q5M1G21uk+UXMwpl3VSOwsnMExVQ59hvHRR63xL/owWjLHhakXobbXI053yJwrayIXGA==",
    "message": "user authenticated"
}
```

## Players
`/players` endpoint - Returns all players associated to the logged in user(coach)
```sh
GET api/v0/players
```

Note: If there is an active session the GET request will return the players as stated above. If there is not an active session, a valid `auth_token` may be sent through the headers to receive a successful response.

Expected response:
```json
{
    "data": [
        {
            "id": "6",
            "type": "players",
            "attributes": {
                "first_name": "Daina",
                "last_name": "Funk",
                "height": 199,
                "weight": 131,
                "birthday": "1998-08-11",
                "graduation_year": 2020,
                "position": "Point Guard",
                "recruit": true
            }
        },
        {
            "id": "7",
            "type": "players",
            "attributes": {
                "first_name": "Stacee",
                "last_name": "Balistreri",
                "height": 188,
                "weight": 138,
                "birthday": "2001-08-12",
                "graduation_year": 2020,
                "position": "Power Forward",
                "recruit": true
            }
        },
        {
            "id": "8",
            "type": "players",
            "attributes": {
                "first_name": "Harry",
                "last_name": "Cremin",
                "height": 183,
                "weight": 204,
                "birthday": "2001-11-01",
                "graduation_year": 2023,
                "position": "Shooting Guard",
                "recruit": true
            }
        },
        {
            "id": "9",
            "type": "players",
            "attributes": {
                "first_name": "Sanford",
                "last_name": "Green",
                "height": 191,
                "weight": 164,
                "birthday": "2002-01-29",
                "graduation_year": 2019,
                "position": "Center",
                "recruit": true
            }
        },
        {
            "id": "10",
            "type": "players",
            "attributes": {
                "first_name": "Shad",
                "last_name": "Hartmann",
                "height": 198,
                "weight": 160,
                "birthday": "2001-01-22",
                "graduation_year": 2020,
                "position": "Shooting Guard",
                "recruit": true
            }
        }
    ]
}
```
