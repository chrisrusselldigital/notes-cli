# Command Line Interface Note app

A command-line interface app, using Ruby.

## Approach

This __should__ be a really simple application, however I'm trying to force myself to design via TDD, as least as far as "MVP" functionality. To get to this, I've spiked the creation of much of the functionality, in order to understand where not to go and why some choices are better than others. For example, it only became evident some way down the line that a `Notebook` class was not only necessary but should be responsible for the creation of `Notes`.

## Testing

TDD - `RSpec`
Code style - `rubocop`
Code coverage - `SimpleCov`

## User stories

```
- User should be able to run the notes app ruby notes.rb

Commands available to user:
  - “Help” to see all the available commands and their descriptions.
  - “Create” followed by the text string to store a note.
  - “View” followed by an argument of the note id to see the text of a note
  - “All” to see all the notes currently stored.
  - “Exit” to exit the notes app

```

Example interaction:
```
> ruby notes.rb

> help
Help: to see all the available commands and their descriptions.
Create: followed by the text string to store a note
View [id]:to see the text of a note
All: to see all the notes currently stored
Exit: to exit the notes app

> create hello, world
note(id: 1) stored

> view 1
Wed 16th May at 12:00pm - hello, world

> all
id | Date | text
1 | Wed 16th May at 12:00pm | hello, world

> exit
Goodbye!
```

## (Planned) MVP

Objects accessed to begin with, only via the command line (to begin with) that allow for the creation of:

- A new Notebook
- A Note, containing:
  - A Title
  - Body text
  - The date/time of creation
- Notes should be accessible via a method like `all_notes`

This should mean that once the application is usable via command line instructions, it should still be usable via the creation and manipulation of objects and their methods.
