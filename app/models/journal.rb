class Journal < ApplicationRecord
  belongs_to :user
  has_many :goals
  # has_many :track_habits
  # has_many :reflections
end
