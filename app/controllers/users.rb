get "/users/new" do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    redirect '/'
  else
    erb :'users/new'
  end
end

get '/users/:id' do
  @decks = Deck.all
  @card = Card.all
  @card = Card.find_by(id: params[:id])
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
    @error = "Invalid login"
    erb :'/users/login'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end





