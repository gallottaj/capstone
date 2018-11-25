class Journal < ApplicationRecord
  belongs_to :user
  has_many :todos
  has_many :track_habits
  has_many :reflections
end
