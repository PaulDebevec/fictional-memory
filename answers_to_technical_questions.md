- ***How long did you spend on the code challenge? What would you add to your solution if you had more time? If you didn't spend much time on the code challenge then use this as an opportunity to explain what you would add.***

I spent 15 hours on this code challenge - 3 evenings, 5 hours each. 

The things I would add to my solution would be:
1. Complete more endpoints
2. Add enums on the user to differentiate between different user types (athlete, coach, etc...).
3. More testing - models tests needed to verify default values.
4. Add model `.method` tests.
5. Build out cards on the project board for the first 75% of the project before beginning to code.
6. Create more mock data



- ***What was the most useful feature that was added to the latest version of a language you
used? Please include a snippet of code that shows how you've used it.***



I couldn't think of any features that were added to the *latest* version of Ruby that I found helpful ***and*** used. However while I was in school we used Ruby version 2.4 to start out, and after a few weeks I explored Ruby 2.5.5 and "discovered" the `.reduce` enumerable. This was incredibly helpful to me in learning different ways of creating hashes.

```ruby
  def payroll
    network_characters = all_network_characters
    all_network_characters.reduce({}) do |hash, character|
      hash[character.actor] = character.salary
      hash
    end
  end
  ```


- ***How would you track down a performance issue in production? Have you ever had to do
this?***

My only experience with personal production apps have been hosted on Heroku where I had access to view the app logs. I've also used my terminal to view the logs and response times to see how I can reduce the load times - Especially when working with large datasets. 

- ***Please describe yourself using JSON***

```json
{
  "name": "Paul Debevec",
  "type": "Software Engineer",
  "likes": ["space", "computers", "science", "video_games"],
  "education": [
      {
          "type": "College",
          "name": "Turing School",
          "location": "DENVER"
      },
      {
          "type": "College",
          "name": "DaVinci Institute",
          "location": "Westminster"
      }
  ],
  "pets": [
    {
        "type": "dog",
        "name": "Tycho",
        "breed": "Australian cattle dog",
        "personality": "insane",
    },
    {
        "type": "dog",
        "name": "Artemis",
        "breed": "Mutt",
        "personality": "she's a dream",
    },
  ],
}
```

