get '/' do
    @cards = Card.all
    @card = @cards.find_by(id: params[:id])
    @decks = Deck.all
    @deck = @decks.find_by(id: params[:id])
  erb :'/index'
end
