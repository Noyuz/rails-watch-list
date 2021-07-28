class Review < ApplicationRecord
  belongs_to :list
  validates :comment, length: { minimum: 6 }, presence: true
  validates :rating, inclusion: { in: 1..5 }
end
