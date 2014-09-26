get '/docs' do #show list of documents.
  erb :'docs/index'
end

get '/docs/create' do #document creation page.
  erb :'docs/create'
end

post '/docs' do
  paragraphs = params[:p]
  puts paragraphs
  # The Bulk of our paragraph/document creation will go here.
  #Document metadata
  new_doc = Document.new(
    title: "The benifits of placeholder text",
    description: "100 great reasons to use placeholder text.",
    user_id: session[:id]
  )
  new_doc_id = new_doc.id
  new_doc.save
  pnum = 0

  paragraphs.each do |p|
    Paragraph.create(
      body: p,
      document_id: new_doc_id,
      position: pnum
    )
    pnum += 1
  end
  redirect '/docs/:new_doc_id'
end

post '/comment' do
  @comment = Comment.new(
    content: params[:comment],
    user_id: session[:id],
    paragraph_id: params[:paragraph_id]
  )
  @comment.save

  redirect "docs/#{Paragraph.find(params[:paragraph_id]).document_id}"
end


get '/docs/:id' do #show specific document. DO NOT MOVE THIS.
  @document = Document.find(params[:id]) 
  erb :'docs/show'
end
