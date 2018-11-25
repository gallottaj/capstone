class Goal < ApplicationRecord
  belongs_to :journal
  has_many :sub_goals
end
