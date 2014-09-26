class User < ActiveRecord::Base
  validates :username, :password, presence: true
  validates :username, :email, uniqueness: true
  validate :matching_passwords
  def matching_passwords #If the user's passwords don't match, The server (in users_actions.rb) will return password as false.
    if password == false
      errors.add(:passwords, "Must Match")
    end
  end

  has_many :comments
  has_many :documents
end