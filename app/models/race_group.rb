class RaceGroup < ApplicationRecord
  belongs_to :user
  belongs_to :race
  has_many :group_memberships
  has_many :members, through: :group_memberships, class_name: "User", as: :user
end
