class Sport < ApplicationRecord
  #database
  has_many :user_sports
  has_many :race_sports

  #validation
  validates :name, uniqueness: true, presence: true

  #photo uploader
  mount_uploader :photo, PhotoUploader

end
