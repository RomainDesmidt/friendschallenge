class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]

  has_many :user_sports
  has_many :sports, through: :user_sports
  has_many :race_groups
  has_many :races, through: :race_groups
  has_many :group_memberships
end
