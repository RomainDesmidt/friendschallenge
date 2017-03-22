class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #user devise
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]
  #database
  has_many :user_sports
  has_many :sports, through: :user_sports
  has_many :race_groups
  has_many :races, through: :race_groups
  has_many :group_memberships

  #validation
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true

  #photo uploader
  mount_uploader :photo, PhotoUploader

end
