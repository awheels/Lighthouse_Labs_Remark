get '/users' do
  erb :'users/my_profile'
end

get 'users/login' do
  erb :'users/login'
end

get 'users/logout' do
  session.clear
  redirect '/'
end

post 'users/login' do
  if User.find_by username: params[:username]
    user = User.find_by username: params[:username]
    if user[:password] == params[:password]
      session[:id] = user[:id]
      redirect '/'
    else
      redirect 'users/login'
    end
  else
      redirect 'users/login'
  end
end

post 'users/signup' do
  if params[:password] == params[:validate_password]
    new_user = User.new(
      username = params[:username],
      password = params[:password]
    )
  else
    redirect 'users/login'
  end
end

get '/users/:id' do
  erb :'users'
end