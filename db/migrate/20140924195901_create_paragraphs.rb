class CreateParagraphs < ActiveRecord::Migration
  def change
    create_table :paragraphs do |t|
      t.text :body
      t.belongs_to :document
      t.integer :position
      t.timestamps
    end
  end
end
