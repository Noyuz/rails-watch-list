class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :restrict_with_exception
  before_destroy :check_if_bookmarked

  validates :title, uniqueness: true
end
