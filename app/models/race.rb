class Race < ApplicationRecord
  #database
  has_many :race_groups, dependent: :destroy
  has_many :users, through: :race_groups
  has_many :group_memberships, through: :race_groups
  has_many :members, through: :group_memberships, source: :user, class_name: "User"
  has_many :race_sports, dependent: :destroy
  has_many :sports, through: :race_sports

  #photo uploader
  mount_uploader :picture, PhotoUploader
  mount_uploader :trail_map_picture, PhotoUploader

  #validations
  validates :name, uniqueness: { scope: :date}, presence: true
  validates :date, presence: true
  validates :location, presence: true
  validates :price, presence: true

  def calculate_total_distance!
    self.total_distance = self.race_sports.pluck(:distance).reduce(:+)
  end

  geocoded_by :location
  after_validation :geocode, if: :location_changed?

  # scope :location(params), -> do
  #   where ("location Ilike %#{params}%" )
  # # scope :sport, -> (sport) { where "location like?", "%#{params[:search][:sport_name[]]}%""}
  # end
end
