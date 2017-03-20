class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_sports
  has_many :shared_races
  has_many :races, through: :user_races
  has_many :user_races
  has_many :sports, through: :user_sports
end
