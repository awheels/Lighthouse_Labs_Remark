require_relative 'docs_actions'
require_relative 'users_actions'

enable :sessions
# Homepage (Root path)
get '/' do
  erb :index
end
