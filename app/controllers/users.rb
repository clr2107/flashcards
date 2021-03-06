get "/users/new" do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect '/'
  else
    erb :'users/new'
  end
end

get '/users/:id' do
  @decks = Deck.all
  @deck = Deck.find_by(id: params[:id])
  @cards = Card.all
  @card = Card.find_by(id: params[:id])
  @user = User.find(params[:id])
  @round = Round.last
  erb :'/users/show'
end

get '/login' do
  erb :'/users/login'
end

post '/login' do
  @user = User.find_by(username: params[:user][:username])
  @user.authenticate(params[:user][:password])
  if @user && @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect "/"
  else
    @error = "Invalid login"
    erb :'/users/login'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end





