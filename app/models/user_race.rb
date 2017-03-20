class UserRace < ApplicationRecord
  belongs_to :user
  belongs_to :race
  has_many :shared_races
  has_many :shared_users, through: :shared_races, class_name: "User", as: :user
end
