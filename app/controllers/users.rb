
get "/users/new" do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    redirect '/users'
  else
    erb :'users/new'
  end
end

get '/users/:id' do
  @decks = Deck.all
  @user = User.find(params[:id])
  erb :'/users/show'
end

get '/login' do
  erb :'/users/login'
end

post '/login' do
  @user = User.find_by(username: params[:user][:username])
  @user = @user.authenticate(params[:user][:password])
  if @user && @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @error = "invalid login"
    erb :'/users/login'
  end
end

get '/decks/:deck_id/round/new' do
  @deck = Deck.find_by(id: params[:deck_id])
  current_user
  @new_round = Round.new(user_id: current_user.id, deck_id: @deck.id)
  if @new_round.save
    redirect "decks/#{@deck.id}/round/#{@new_round.id}"
  else
    # @error =
    redirect "/"
  end
end

get "/decks/:deck_id/round/:round_id" do

  "Reach here"
  # @deck = Deck.find_by(id: :deck_id)
end



