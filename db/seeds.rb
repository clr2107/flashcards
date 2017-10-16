Guess.delete_all
Round.delete_all
Card.delete_all
Deck.delete_all
User.delete_all

User.create(username: "Cat", email: "cat@cat.com", password: "cat1")
User.create(username: "Amber", email: "amber@amber.com", password: "amber1")

Deck.create(name: "Computer Science")
Card.create(question: "What does HTML stand for?", answer: "Hypertext markup language", deck_id: 1)
Card.create(question: "What does CSS stand for?", answer: "Cascading style sheets", deck_id: 1)
Card.create(question: "What does HTTP stand for?", answer: "Hypertext transfer protocol", deck_id: 1)

Deck.create(name: "Music")
Card.create(question: "How many symphonies did Beethoven write?", answer: "9", deck_id: 2)
Card.create(question: "Which Romantic composer died in an asylum?", answer: "Robert Schumann", deck_id: 2)
Card.create(question: "What is a lied: a song, a symphony, or a concerto?", answer: "song", deck_id: 2)

Deck.create(name: "Math")
Card.create(question: "2^2", answer: "4", deck_id: 3)
Card.create(question: "6*8", answer: "48", deck_id: 3)


