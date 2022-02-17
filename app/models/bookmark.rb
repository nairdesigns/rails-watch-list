class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie_id, presence: true, uniqueness: { scope: :list_id }
  # validates :list, presence: true, uniqueness: true
end
