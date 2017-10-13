# Web Flash Cards 

## Summary

As a user, I visit the homepage and see a list of decks.  I click on the name of a deck and play a round with that deck.  After the round, I see stats on how well I performed.  If I've logged in, I can then visit my profile to see stats for all the rounds I've played.

**Mockups:**  We have some mockups that provide guidance on how our pages should look.

- [Homepage](mockups/homepage.png)
- [Displaying a card to the user](mockups/display-a-card.png)
- [End of round statistics](mockups/round-statistics.png)
- [Profile page](mockups/profile.png)

We'll want to get a thorough understanding of the application that we need to build.  Once we understand what's expected of us, we can collaborate on how to get it done.  We'll be making a lot of decisions.  Maybe we make the right decision, maybe the wrong one.  As a team, we'll need to communicate and collaborate ... and most likely make some course corrections as we go along.

*Note:*  We'll most likely need at least the following models: `User`, `Deck`, `Card`, `Round`, and `Guess`.

## Deliverables

### 1. DB Schema

**Due:** 11:00am

Design a scheme for your app and present to an instructor.


### 2. Round description  

  **Due:** 2:30pm

  After a user selects a deck, they play a round.  We have specific requirements for what should happen when a user plays a  round.

  - The user plays every card in the deck.
  - The cards are played in a random order.
  - For each card, the user is shown a prompt and responds by submitting a guess.
  - After submitting a guess, the user is informed whether or not the guess was correct and shown the correct answer.
  - The round continues until each card is answered correctly—after going through each card, cards answered incorrectly will be displayed again.

### 3. Round statistics description

  **Due:** 3:30pm

  After a user completes a round, the user should be shown statistics for the round.  We have specific requirements for what statistics should be displayed.

  - Name of the deck played.
  - The number of cards answered correctly on the first guess compared to the number of cards in the deck.
  - Total number of guesses made.

### 4. Profile description

  **Due:** 4:30pm

  Registered users should have a profile page that showcases their flashcard history.

  - Statistics for all rounds played should be available.
  - Statistics should be organized by deck and displayed in chronological order.
  - For each round, required details are the date the round was played, the number of cards in the deck, the number of cards answered correctly on the first guess, and the total number of guesses needed to complete the round.

### 5. Presentation

**Due:** 5:30pm

Work with your group on a presentation for your cohort
- what you built
- process you utilized
- decisions made throughout the project (e.g. what did you do when there wasn't enough time for x,y,z?)
- lessons learned
- retrospectively, what would you do differently next time

## Conclusion
  The application we built in this challenge represents a step up in complexity compared to our previous web application challenges—both technically and organizationally.  This challenge is as much about project management and team dynamics as it is about the code.  What skills/lessons did you learn from working with a team?  How will you work better next time?
