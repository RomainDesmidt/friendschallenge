class RaceGroup < ApplicationRecord
  belongs_to :user
  belongs_to :race
  has_many :group_memberships, dependent: :destroy
  has_many :members, through: :group_memberships, source: :user
end
