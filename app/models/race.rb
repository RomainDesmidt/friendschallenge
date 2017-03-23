class Race < ApplicationRecord
  #database
  has_many :race_groups
  has_many :users, through: :race_groups
  has_many :group_memberships, through: :race_groups
  has_many :members, through: :group_memberships, source: :user, class_name: "User"
  has_many :race_sports
  has_many :sports, through: :race_sports
  
  #photo uploader
  mount_uploader :picture, PhotoUploader
  mount_uploader :trail_map_picture, PhotoUploader
  
  #validations
  validates :name, uniqueness: { scope: :date}, presence: true
  validates :date, presence: true
  validates :place, presence: true
  validates :price, presence: true

  def calculate_total_distance!
    self.total_distance = self.race_sports.pluck(:distance).reduce(:+)
  end
end
