require 'rake'
require 'faker'
require "sinatra/activerecord/rake"
require ::File.expand_path('../config/environment', __FILE__)

Rake::Task["db:create"].clear
Rake::Task["db:drop"].clear

# NOTE: Assumes SQLite3 DB
desc "create the database"
task "db:create" do
  touch 'db/db.sqlite3'
end

desc "drop the database"
task "db:drop" do
  rm_f 'db/db.sqlite3'
end

desc 'Retrieves the current schema version number'
task "db:version" do
  puts "Current version: #{ActiveRecord::Migrator.current_version}"
end

desc 'Populate the database'
task "db:populate" do
  user1 = User.create(username: "Remarker", password: "12345", email: "remark@hotmail.com")
  d1 = Document.create(user_id: user1.id, title: "Our Glorious Title", description: "This is where you will write your description of your document.", author: "Author's Name", )
  p1 = Paragraph.create(body: Faker::Lorem.paragraph(5), position: 1, document_id: d1.id)
  p2 = Paragraph.create(body: Faker::Lorem.paragraph(5), position: 2, document_id: d1.id)
  p3 = Paragraph.create(body: Faker::Lorem.paragraph(5), position: 3, document_id: d1.id)
  p4 = Paragraph.create(body: Faker::Lorem.paragraph(5), position: 4, document_id: d1.id)
  c1 = Comment.create(user_id: user1.id, paragraph_id: p1.id, content: Faker::Lorem.paragraph(2))
  c2 = Comment.create(user_id: user1.id, paragraph_id: p2.id, content: Faker::Lorem.paragraph(2))
  c3 = Comment.create(user_id: user1.id, paragraph_id: p3.id, content: Faker::Lorem.paragraph(2))
  c4 = Comment.create(user_id: user1.id, paragraph_id: p4.id, content: Faker::Lorem.paragraph(2))
  c5 = Comment.create(user_id: user1.id, paragraph_id: p2.id, content: Faker::Lorem.paragraph(2))

end