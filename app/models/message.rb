#
# Message class
#
class Message < ActiveRecord::Base

    # A message belongs to a single user.
    belongs_to :user

    # A message contains 0+ comments
    has_many :comments

    # A message must have title of length > 0 and up to 100.
    validates :title, :presence => true, :uniqueness => true,
      :length => { :within => 1..100 }

    # A message must have a body of length > 0 and up to 5000.
    validates :description, :presence => true, :uniqueness => false,
      :length => { :within => 1..5000 }
end
