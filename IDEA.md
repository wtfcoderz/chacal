# Chacal Idea  

Radar  
Collaborative  
Collect relevant descriptions and then generate statistics  

***
## Spotted Items
A spotted item is what a person want to share with others  
It has
- Date of submission
- A category / sub-categories
- A position
- A indicator to tell if item is moving or not (and how fast !)
- A list of key/value description

Ex : a car
- Category : Vehicle / Car
- Position (GPS)
- 70 km/h
- Brand : Ferrari / Color : red / etc...

***
## Match Algorithm
A match algorithm have to be coded  
Role : Trying to match multiple spotted items to be unique item, based on collected data  
Compare description attributes  
Compare related positions to dates of submission and moving indicator

***
## API (Go)
- Have to handle spam/rate limit
### Auth
- Verify user/password and provide JWT
### Post a new event
- Have to store this event on BDD and send result
- Allow anonymous events ??

***
## Client (JS)
### Auth
- Auth by login/password and store a JWT
### New event
- Store immediately coordonates if available
- Ask user to describe event
- Api POST event
- Get success
### Browse my recent events (if authenticated)

***
We have to get a system where collaborative users can view potential related events and note them
