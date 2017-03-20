class UserRace < ApplicationRecord
  belongs_to :user
  belongs_to :race
  has_many :shared_races
end
