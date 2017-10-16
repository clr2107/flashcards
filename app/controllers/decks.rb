get '/decks/:id' do
  @deck = Deck.find_by(id: params[:id])
  @cards = @deck.cards
  @card = Card.find_by(id: params[:id])
  @round = Round.create(deck_id: params[:id], user_id: current_user.id)
  session[:cards] = @cards.map {|card| card.id}
  erb :'/decks/new'
end



