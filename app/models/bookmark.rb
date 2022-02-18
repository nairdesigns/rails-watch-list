class Bookmark < ApplicationRecord
  # belongs_to :movie
  # belongs_to :list
  # validates :movie_id, presence: true, uniqueness: { scope: :list_id }
  # # validates :list, presence: true, uniqueness: true
  # validates :comment, length: { minimum: 10 }
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id, message: 'is already in the list' }
end
