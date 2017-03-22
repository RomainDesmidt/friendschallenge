class GroupMembership < ApplicationRecord
  belongs_to :user
  belongs_to :race_group
end
