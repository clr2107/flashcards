get '/decks/:deck_id/cards/:card_id' do
  @deck = Deck.find_by(id: params[:deck_id])
  @cards = @deck.cards
  @card = Card.find_by(id: params[:card_id])
  @question = Card.find_by(id: @card).question
  erb :'/decks/cards/show'
 end

post '/decks/:deck_id/cards/:card_id' do
  @deck = Deck.find_by(id: params[:deck_id])
  @cards = @deck.cards
  @card = Card.find_by(id: params[:card_id])
  @round = Round.last
  @answer = Card.find_by(id: params[:card_id]).answer
  if params[:user][:guess] == @card.answer
    Guess.create(text: params[:user][:guess], correct: 1, round_id: @round.id, card_id: @card.id)
    session[:cards] = session[:cards].reject { |card| card == @card.id }
    if session[:cards].empty?
      erb :'/decks/cards/_complete'
    else
     redirect "/decks/#{params[:deck_id]}/cards/#{session[:cards].sample}"
   end
  else
    Guess.create(text: params[:user][:guess], correct: 0, round_id: @round.id, card_id: @card.id)
    redirect "/decks/#{params[:deck_id]}/cards/#{params[:card_id]}"
  end
end

get '/decks/:deck_id/cards/:card_id/answer' do
  # @current_card = session[:cards].sample
  @card = Card.find_by(id: params[:card_id])
  @question = Card.find_by(id: @card).question
  @answer = Card.find_by(id: @card.id).answer
  erb :'/decks/cards/_answer'
end

post '/cards' do
  @deck = Deck.last
  @card = Card.new(question: params[:card][:question], answer: params[:card][:answer], deck_id: @deck.id)
  if @card.save
    redirect '/'
  else
    erb :'/new_card'
  end
end