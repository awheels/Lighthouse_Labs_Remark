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
  user1 = User.create(username: "Andrew Wheeler", password: "12345", email: "andrew@gmail.com")
  user2 = User.create(username: "Daniel Harris", password: "12345", email: "daniel@gmail.com")
  user3 = User.create(username: "Zach Hill", password: "12345", email: "zach@gmail.com")
  user4 = User.create(username: "George Castanza", password: "12345", email: "george@lighthouselabs.ca")
  user5 = User.create(username: "Hank Aaron", password: "12345", email: "hank@lighthouselabs.com")
  d1 = Document.create(user_id: user1.id, title: "Who are Lighthouse Labs?", description: "Lighthouse Labs is an immersive coding school in Vancouver that focuses on modern open source web frameworks and tools. The Lighthouse Web Development curriculum covers JavaScript, HTML/CSS, software architecture, Ruby on Rails, responsive design, test driven development, Node.js, and popular APIs. Lighthouse Labs offers an 8-week immersive bootcamp followed by a 4-week internship with one of their partner companies.", author: "Author's Name", )
  d2 = Document.create(user_id: user2.id, title: Faker::Lorem.sentence(3), description: Faker::Lorem.paragraph(2), author: "Author's Name", )
  d3 = Document.create(user_id: user3.id, title: Faker::Lorem.sentence(3), description: Faker::Lorem.paragraph(2), author: "Author's Name", )
  d4 = Document.create(user_id: user4.id, title: Faker::Lorem.sentence(3), description: Faker::Lorem.paragraph(2), author: "Author's Name", )
  d5 = Document.create(user_id: user5.id, title: Faker::Lorem.sentence(3), description: Faker::Lorem.paragraph(2), author: "Author's Name", )
  p11 = Paragraph.create(body: "<p>At Lighthouse Labs you won't just learn how to code, you will learn how to learn. By the time you graduate, you will have a strong practical knowledge of a multitude of languages and the ability to learn new programming languages at a professional pace. We make sure that you will be able to evolve as a developer in an ever-evolving tech industry. #{Faker::Lorem.paragraph(8)}</p>", position: 1, document_id: d1.id)
  p12 = Paragraph.create(body: "<p>Rule #1 at Lighthouse Labs is developers learn by doing. With an intensive, hands-on curriculum you will have the opportunity to work on open source and real world projects while being assisted by instructors. Less lectures and more TA supported coding leads to more well prepared and experienced developers. #{Faker::Lorem.paragraph(8)}</p>", position: 2, document_id: d1.id)
  p13 = Paragraph.create(body: "<p>With a 100% placement rate, once you graduate from Lighthouse Labs you will be able to continue your learning and growth while actually working (and getting paid!) as a developer. Lighthouse will assist you in getting a job and will always welcome you back as an alumnus to assist you further as you constantly strive to improve. #{Faker::Lorem.paragraph(8)}</p>", position: 3, document_id: d1.id)
  p21 = Paragraph.create(body: "<p>#{Faker::Lorem.paragraph(15)}</p>", position: 1, document_id: d2.id)
  p22 = Paragraph.create(body: "<p>#{Faker::Lorem.paragraph(15)}</p>", position: 2, document_id: d2.id)
  p23 = Paragraph.create(body: "<p>#{Faker::Lorem.paragraph(15)}</p>", position: 3, document_id: d2.id)
  p31 = Paragraph.create(body: "<p>#{Faker::Lorem.paragraph(15)}</p>", position: 1, document_id: d3.id)
  p32 = Paragraph.create(body: "<p>#{Faker::Lorem.paragraph(15)}</p>", position: 2, document_id: d3.id)
  p33 = Paragraph.create(body: "<p>#{Faker::Lorem.paragraph(15)}</p>", position: 3, document_id: d3.id)
  p41 = Paragraph.create(body: "<p>#{Faker::Lorem.paragraph(15)}</p>", position: 1, document_id: d4.id)
  p42 = Paragraph.create(body: "<p>#{Faker::Lorem.paragraph(15)}</p>", position: 2, document_id: d4.id)
  p43 = Paragraph.create(body: "<p>#{Faker::Lorem.paragraph(15)}</p>", position: 3, document_id: d4.id)
  p51 = Paragraph.create(body: "<p>#{Faker::Lorem.paragraph(15)}</p>", position: 1, document_id: d5.id)
  p52 = Paragraph.create(body: "<p>#{Faker::Lorem.paragraph(15)}</p>", position: 2, document_id: d5.id)
  p53 = Paragraph.create(body: "<p>#{Faker::Lorem.paragraph(15)}</p>", position: 3, document_id: d5.id)
  c01 = Comment.create(user_id: user1.id, paragraph_id: p21.id, content: Faker::Lorem.sentence(1))
  c02 = Comment.create(user_id: user2.id, paragraph_id: p31.id, content: Faker::Lorem.sentence(1))
  c03 = Comment.create(user_id: user3.id, paragraph_id: p41.id, content: Faker::Lorem.sentence(1))
  c04 = Comment.create(user_id: user4.id, paragraph_id: p22.id, content: Faker::Lorem.sentence(1))
  c05 = Comment.create(user_id: user5.id, paragraph_id: p23.id, content: Faker::Lorem.sentence(1))
  c06 = Comment.create(user_id: user4.id, paragraph_id: p33.id, content: Faker::Lorem.sentence(1))
  c07 = Comment.create(user_id: user3.id, paragraph_id: p42.id, content: Faker::Lorem.sentence(1))
  c08 = Comment.create(user_id: user2.id, paragraph_id: p52.id, content: Faker::Lorem.sentence(1))
  c09 = Comment.create(user_id: user3.id, paragraph_id: p51.id, content: Faker::Lorem.sentence(1))
  c10 = Comment.create(user_id: user5.id, paragraph_id: p41.id, content: Faker::Lorem.sentence(1))
  c11 = Comment.create(user_id: user1.id, paragraph_id: p42.id, content: Faker::Lorem.sentence(1))
  c12 = Comment.create(user_id: user1.id, paragraph_id: p23.id, content: Faker::Lorem.sentence(1))
  c13 = Comment.create(user_id: user2.id, paragraph_id: p21.id, content: Faker::Lorem.sentence(1))
  c14 = Comment.create(user_id: user3.id, paragraph_id: p32.id, content: Faker::Lorem.sentence(1))
  c15 = Comment.create(user_id: user2.id, paragraph_id: p41.id, content: Faker::Lorem.sentence(1))
  c16 = Comment.create(user_id: user4.id, paragraph_id: p21.id, content: Faker::Lorem.sentence(1))
  c17 = Comment.create(user_id: user2.id, paragraph_id: p53.id, content: Faker::Lorem.sentence(1))
  c18 = Comment.create(user_id: user1.id, paragraph_id: p22.id, content: Faker::Lorem.sentence(1))
  c19 = Comment.create(user_id: user3.id, paragraph_id: p31.id, content: Faker::Lorem.sentence(1))
  c20 = Comment.create(user_id: user5.id, paragraph_id: p42.id, content: Faker::Lorem.sentence(1))
  c21 = Comment.create(user_id: user2.id, paragraph_id: p51.id, content: Faker::Lorem.sentence(1))
  c22 = Comment.create(user_id: user5.id, paragraph_id: p21.id, content: Faker::Lorem.sentence(1))
end