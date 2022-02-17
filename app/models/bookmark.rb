class Bookmark < ApplicationRecord
  has_many :movies
  has_many :lists
end
