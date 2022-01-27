# singletons

design pattern for a singleton => use case

## SINGLESTON USE: IMPLEMENT ONLY WHEN YOU MUST
### ...use when construction is very resource intensive..
### ...use when you're trying to model one instance..


## 1. make constructor private so we can protect users from making a new object
## 2. make a static factory method to get the "1" instance
## 3. declare a static/class variable to store the "1" instance
## 4. in the factory method.. lazily load and cache instance