get '/decks/:deck_id/round/new' do
  @deck = Deck.find_by(id: params[:deck_id])
  current_user
  @round = Round.new(user_id: current_user.id, deck_id: @deck.id)
  if @round.save
    redirect "/decks/#{@deck.id}/round/#{@round.id}"
  else
    @error = "Error"
    redirect "/"
  end
end

get '/decks/:deck_id/round/:round_id' do
  @deck = Deck.find_by(id: params[:deck_id])
  @round = Round.find_by(id: params[:round_id])
  @guess = Guess.new(params[:guess])
  @cards = @deck.cards
  erb :'/decks/show'
end

get '/decks/:deck_id/round/:round_id/_answer' do
  @deck = Deck.find_by(id: params[:deck_id])
  current_user
  @round = Round.find_by(id: params[:round_id])
  erb :'/decks/_answer'
end

post '/decks/:deck_id/round/:round_id/guess/:guess_id' do
@guess = Guess.find_by(id: params[:guess_id])
  if @guess.save && @guess.correct
    "Correct!"
    redirect '/'
  else
    @error = "Error"
  end
end