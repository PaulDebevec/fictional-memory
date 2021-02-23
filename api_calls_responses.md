## API Endpoints

Run your server locally to test calls in Postman (Default url should be http://localhost:3000/)
```sh
rails s
```

Retrieve auth_token by logging in with an authorized user:
```sh
POST api/v0/login
```
In the body of your request, include the following raw json:
```sh
{
  "email": "sample.coach@mobile.edu",
  "password": "samplepassword"
}
```

Expected response:
```sh
{
    "auth_token": "EyKRyQBFUj/RamVp/3cmuqTS7SBheqC4x+iRC+xx1bijHyQgYrxUA5MxYeYwKVALvfId0MqLNkcaie6jb/+auiU/47+vMHQC6PTHk3f/u/6LW0zlJTd8T2+uTFXu5TqQsA1MiacK3ecnmOXGFzo+UUgzLZMDIaisNTTHyDvJXcC3/1xA7OAGrC5Ok+KAypAlDIYh0khY+jX1C3jIhDI4aGSeJPeHmFHVNfptou383qTfy2RoOUT99LFcxMfSQUpkeoXBaqajAaFFgi6Swpyuzp0GGJhc5cFb7QBjfOcwhUN616PRK+NWOR+Kp3X7c2UzlIMmyb4eDY+SedaE+3xxO8KTgsVIRFQymyeOA0cJDDT9RXb0xNxMgXk7AeMuPzZ36U8ZOP1lfNvfEALTfAe9IvL4sAd7OTzDsNvLFe+cxj2Z+mZ32TDORGmOUX9GBcdaBY6CaGdRod9nO5oi31q5M1G21uk+UXMwpl3VSOwsnMExVQ59hvHRR63xL/owWjLHhakXobbXI053yJwrayIXGA==",
    "message": "user authenticated"
}
```
