get '/docs' do #show list of documents.
  erb :'docs/index'
end

get '/docs/create' do #document creation page.
  erb :'docs/create'
end

post '/docs' do
  # The Bulk of our paragraph/document creation will go here.
  # Document.create()
  #
  #
  #
  # Extra lines for future endevours.
end

get '/docs/:id' do #show specific document. DO NOT MOVE THIS.
  #@document = Document.find(params[:id]) \\ Uncomment/change this when databases are implemented. -Daniel
  erb :'docs/show'
end
