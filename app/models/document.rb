class Document < ActiveRecord::Base
  validates :title, :description, presence: true
  belongs_to :user
  has_many :paragraphs
end