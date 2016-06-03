class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # A user can review movie
  has_many :movies

  # When a user is destroyed, destroy his/her movies as well
  has_many :reviews, dependent: :destroy

end
