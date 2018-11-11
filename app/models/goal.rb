class Goal < ApplicationRecord
  belongs_to :user
  has_many :sub_goals
end
