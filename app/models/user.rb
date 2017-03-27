#
# User class
#
class User < ActiveRecord::Base

  # Users can create 1 or more messages.
  has_many :messages

  # Users can post 1 or more comments to messages.
  has_many :comments

  # A user must have first name of length > 0 and up to 100.
  validates :first_name, :presence => true, :uniqueness => false, :length => { :within => 1..100 }

  # A user must have last name of length > 0 and up to 100.
  validates :last_name, :presence => true, :uniqueness => false, :length => { :within => 1..100 }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
