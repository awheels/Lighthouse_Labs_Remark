get '/users' do
  erb :'users/my_profile'
end

get '/users/login' do
  @user = User.new
  @message = params[:message]
  erb :'users/login'
end

get '/users/logout' do
  session.clear
  redirect '/'
end

post '/login' do
  if User.find_by username: params[:username]
    user = User.find_by username: params[:username]
    if user[:password] == params[:password]
      session[:id] = user[:id]
      redirect '/'
    else
      redirect '/users/login'
    end
  else
    redirect '/users/login'
  end
end

post '/signup' do
  if params[:password] == params[:validate_password]
    new_user = User.new(
      username: params[:username],
      password: params[:password]
    )
    if new_user.save
      redirect '/users'
    else 
      redirect '/users/login' 
    end
  else
    redirect '/users/login'
  end
end

get '/users/:id' do
  erb :'users'
end