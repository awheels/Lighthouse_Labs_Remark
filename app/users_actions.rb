get '/users' do
  erb :'users/my_profile'
end

get '/users/:id' do
  erb :'users'
end

get 'users/login' do
  erb :'users/login'
end

get 'users/logout' do
  # Log out. no links here.
end