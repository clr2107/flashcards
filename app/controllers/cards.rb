get '/decks/:deck_id/cards/:card_id' do
  @deck = Deck.find_by(id: params[:deck_id])
  @cards = @deck.cards
  @current_card = session[:cards].sample
  @card = Card.find_by(id: @current_card)
  @question = Card.find_by(id: @current_card).question
  erb :'/decks/cards/show'
 end

post '/decks/:deck_id/cards/:card_id' do
  @deck = Deck.find_by(id: params[:id])
  @current_card = session[:cards].sample
  @card = Card.find_by(id: @current_card)
  @round = Round.last
  @answer = @card.answer
  # binding.pry
  if params[:user][:guess] == @card.answer
    Guess.create(text: params[:user][:guess], correct: 1, round_id: @round.id, card_id: @card.id)
    session[:cards] = session[:cards].reject { |card| card == @card.id }
     erb :'/decks/_correct'
    if session[:cards].empty?
      @errors = "You are done with this deck!"
    else


    end
  else
    Guess.create(text: params[:user][:guess], correct: 0, round_id: @round.id, card_id: @card.id)
    @error = "Wrong"
    # redirect '/'
  end

    # erb :'/cards/show'
end


