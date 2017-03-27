#
# Comment class
#
class Comment < ActiveRecord::Base

  # A comment is attached to a message on the message board.
  belongs_to :message

  # A comment was posted by a specific user.
  belongs_to :user

  # A comment must contain text content between the size of 1 and 500.
  validates :content, :presence => true, :uniqueness => false,
    :length => { :within => 1..500 }
end
