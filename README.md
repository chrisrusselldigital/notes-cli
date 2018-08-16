# Makers' Goal: CLI Note app

A command-line interface app, demonstrating some Ruby chops.

## Testing

TDD - `RSpec`
Code style - `rubocop`
Code coverage - `SimpleCov`

## (Planned) MVP

Objects accessed to begin with, only via the command line (to begin with) that allow for the creation of:

- A new Notebook
- A Note, containing:
  - A Title
  - Body text
  - The date/time of creation
- Notes should be accessible via a method like `all_notes`

This should mean that once the application is usable via command line instructions, it should still be usable via the creation and manipulation of objects and their methods.

## Approach

This __should__ be a really simple application, however I'm trying to force myself to design via TDD, as least as far as "MVP" functionality. To get to this, I've spiked the creation of much of the functionality, in order to understand where not to go and why some choices are better than others. For example, it only became evident some way down the line that a `Notebook` class was not only necessary but should be responsible for the creation of `Notes`.
