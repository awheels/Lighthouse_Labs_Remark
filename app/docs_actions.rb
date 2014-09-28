get '/docs' do #show list of documents.
  erb :'docs/index'
end

get '/docs/create' do #document creation page.
  if login?
    erb :'docs/create'
  else
    @message = "Please login or sign up to post a new document"
    @login_error = false
    @user = User.new
    erb :'/users/login'
  end
end

get '/docs/:id' do #show specific document. DO NOT MOVE THIS.
  @document = Document.find(params[:id]) 
  erb :'docs/show'
end

post '/docs' do
  paragraphs = params[:p]
  puts paragraphs
  # The request here is coming from ajax in application.js
  new_doc = Document.new(
    title: params[:t],
    description: params[:d],
    user_id: session[:id]
  )
  
  new_doc.save
  pnum = 0

  paragraphs.each do |p|
    Paragraph.create(
      body: p,
      document_id: new_doc.id,
      position: pnum
    )
    pnum += 1
  end
  new_doc.id.to_s
end

post '/comment' do
  if login?
    @comment = Comment.new(
      content: params[:comment],
      user_id: session[:id],
      paragraph_id: params[:paragraph_id]
    )
    @comment.save
    redirect "docs/#{Paragraph.find(params[:paragraph_id]).document_id}"
  else
    redirect "/users/login"
  end
end

get '/scomment' do
  number_of_scomments = Selectioncomment.count + 1
  number_of_scomments.to_s
end