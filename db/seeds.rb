Guess.delete_all
Round.delete_all
Card.delete_all
Deck.delete_all
User.delete_all

User.create!(username: "thierry", email: "t@t.com", password: "1234")
User.create!(username: "thomas", email: "tr@t.com", password: "1234")
User.create!(username: "amber", email: "a@t.com", password: "1234")
User.create!(username: "catherine", email: "c@t.com", password: "1234")
User.create!(username: "phil", email: "p@t.com", password: "1234")

Deck.create!(name: "Simple Math", user_id: 1)
Deck.create!(name: "State and Capital", user_id: 1)
Deck.create!(name: "Computer Science", user_id: 1)

Card.create!(question: "1+1", answer: "2", deck_id: 1)
Card.create!(question: "1+2", answer: "3", deck_id: 1)
Card.create!(question: "1+3", answer: "4", deck_id: 1)
Card.create!(question: "New York", answer: "Albany", deck_id: 1)
Card.create!(question: "New Jersey", answer: "Trenton", deck_id: 1)

Round.create!(user_id: 2, deck_id: 1)
Guess.create!(text: "4", correct: 1, round_id: 1, card_id: 3)
Guess.create!(text: "3", correct: 1, round_id: 1, card_id: 2)
Guess.create!(text: "2", correct: 1, round_id: 1, card_id: 1)

Round.create!(user_id: 1, deck_id: 2)
Guess.create!(card_id: 4, round_id: 2, correct: 0, text: "Cat")
Guess.create!(card_id: 5, round_id: 2, correct: 0, text: "Dog")
Guess.create!(card_id: 4, round_id: 2, correct: 1, text: "Albany")
Guess.create!(card_id: 5, round_id: 2, correct: 1, text: "Trenton")

Round.create!(user_id: 1, deck_id: 3)
Guess.create!(card_id: 6, round_id: 3, text: "")
