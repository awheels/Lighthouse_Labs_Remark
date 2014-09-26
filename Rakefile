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
  p1 = Paragraph.create(body: "<p> <strong>First Paragraph</strong> The beaver (<em>genus Castor</em>) is a primarily nocturnal, large, semi-aquatic rodent. Castor includes two extant species, the North American beaver (Castor canadensis) (native to North America) and Eurasian beaver (Castor fiber) (Eurasia).Beavers are known for building dams, canals, and lodges (homes). They are the second-largest rodent in the world (after the capybara). Their colonies create one or more dams to provide still, deep water to protect against predators, and to float food and building material. The North American beaver population was once more than 60 million, but as of 1988 was 6–12 million. This population decline is the result of extensive hunting for fur, for glands used as medicine and perfume, and because the beavers' harvesting of trees and flooding of waterways may interfere with other land uses.</p>", position: 2, document_id: d1.id)
  p2 = Paragraph.create(body: "<p> <strong>Second Paragraph</strong> The ostrich or common ostrich (<em>Struthio camelus</em>) is either one or two species of large flightless birds native to Africa, the only living member(s) of the genus Struthio, which is in the ratite family. Some analyses indicate that the Somali ostrich may be better considered a full species separate from the Common Ostrich, but most taxonomists consider it to be a subspecies.</p>", position: 3, document_id: d1.id)
  p3 = Paragraph.create(body: "<p> <strong>Third Paragraph</strong> A monkey is a primate of the <em>Haplorrhini</em> suborder and simian infraorder, either an Old World monkey or a New World monkey, but excluding apes and humans.[1] By this definition, the most common in biology, the monkeys are the group of all primates that are not tarsiers, lemurs, apes or humans and consist of about 260 known living species. Many species are arboreal, although there are species that live primarily on the ground, such as baboons. Monkeys are generally considered to be intelligent. Unlike apes, monkeys usually have tails. Tailless monkeys may be called apes, incorrectly according to modern usage; thus the tailless Barbary macaque is called the Barbary ape.</p>", position: 4, document_id: d1.id)
  p4 = Paragraph.create(body: "<p> <strong>Fourth Paragraph</strong> The capybara (<em>Hydrochoerus hydrochaeris</em>) is the largest rodent in the world, followed by the beaver, porcupine[which?], and mara. Its closest relatives are guinea pigs and rock cavies, and it is more distantly related to the agouti, chinchillas, and the coypu. Native to South America, the capybara inhabits savannas and dense forests and lives near bodies of water. It is a highly social species and can be found in groups as large as 100 individuals, but usually lives in groups of 10–20 individuals. The capybara is not a threatened species and is hunted for its meat, hide and also for a grease from its thick fatty skin which is used in the pharmaceutical trade.</p>", position: 1, document_id: d1.id)
  c1 = Comment.create(user_id: user1.id, paragraph_id: p1.id, content: "<p> I never knew that there was so much cool info about beavers! Who would want to hunt them for their glands...ewwww!</p>")
  c2 = Comment.create(user_id: user1.id, paragraph_id: p2.id, content: "<p> Hahaha..they can't fly!</p>")
  c3 = Comment.create(user_id: user1.id, paragraph_id: p3.id, content: "<p> Monkey see, monkey do.</p>")
  c4 = Comment.create(user_id: user1.id, paragraph_id: p4.id, content: "<p> How do you say capybara? Aha, these are the largest rodents! I've learned so much.</p>")
  c5 = Comment.create(user_id: user1.id, paragraph_id: p1.id, content: "<p> Second largest rodent! Who is the largest?</p>")
end