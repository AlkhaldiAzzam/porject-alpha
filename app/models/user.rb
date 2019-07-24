class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # has_many :films
  # has_many :games
  # has_many :animes
  # has_many :tv_shows

  validates :username , uniqueness: true
  validates :username, format: { with: /\A[a-zA-Z][a-zA-Z0-9]+\Z/ , 
    message: "should start with a letter and there should be no spaces" }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
