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
  @user = User.find(params[:id])
  erb :'/users/show'
end

get '/login' do
  erb :'/users/login'
end

post '/login' do
  @user = User.find_by(username: params[:username])
  if @user && @user.authenticate(params[:password])
    sessions[:user_id] = @user.id
    redirect '/users/#{@user.id}'
  else
    @error = "invalid login"
    erb :'/users/login'
  end
end





