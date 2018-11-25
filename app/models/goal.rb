class Goal < ApplicationRecord
  belongs_to :goal
  has_many :sub_goals
end
