get '/' do
    @cards = Card.all
    @card = @cards.find_by(id: params[:id])
    @decks = Deck.all
    @deck = @decks.find_by(id: params[:id])
  erb :'/index'
end

get '/about' do
  erb :'_about'
end

get '/new_deck' do
  erb :'/new_deck'
end

get '/new_card' do
  @deck = Deck.last
  erb :'/new_card'
end

