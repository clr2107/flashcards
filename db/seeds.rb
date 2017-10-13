

User.create(username: "pan", password: "pan1", email: "pan@pan.com")
Deck.create(name: "trivia", user_id: 1)
Deck.create(name: "whale", user_id: 1)
Deck.create(name: "2, user_id: 1)
Deck.create(name: "trivia", user_id: 1)
Deck.create(name: "trivia", user_id: 1)

Card.create(question: "candy", answer: "yummy", deck_id: 1)
Round.create(user_id: 1, deck_id: 1)
Guess.create(text: "true", correct: "true", round_id: 1, card_id: 1)
