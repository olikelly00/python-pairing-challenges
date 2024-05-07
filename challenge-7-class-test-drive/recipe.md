# Music Tracker Class Design Recipe

Copy this into a `recipe.md` in your project and fill it out.

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.




## 2. Design the Class Interface

_Include the initializer, public properties, and public methods with all parameters, return values, and side-effects._



```python
# EXAMPLE

class MusicTracker:

    def __init__(self):
        self.music_tracker = []


    def add(self, track):
        # Parameters:
        #   track: string representing a single track
        # Returns:
        #   Nothing
        # Side-effects
        #   string is added to list
        pass

    def view_list(self):
        # Returns:
        #   a list of all strings that have been added
        # Side-effects:
        #   returns list fo strings
        pass 
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

``` python
# EXAMPLE

"""
Given no input, output is an empty list
"""


"""
test list updates when songs are added
"""


"""
test that input is a string (exception otherwise?)

"""

"""
test that input is not an empty

"""

"""
test if song is already in tracker

When given "Song 1", if "Song 1" already in list, 
return exception string: "Song is already in list"
"""

"""
test if string is all whitespace
"""


```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._