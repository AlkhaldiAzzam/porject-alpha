class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :films
  has_many :games
  has_many :animes
  has_many :tv_shows


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
