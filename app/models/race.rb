class Race < ApplicationRecord
  has_many :user_races
  has_many :users, through: :user_races
  has_many :race_sports
  has_many :sports, through: :race_sports

  def calculate_total_distance!
    self.total_distance = self.race_sports.pluck(:distance).reduce(:+)
  end
end
