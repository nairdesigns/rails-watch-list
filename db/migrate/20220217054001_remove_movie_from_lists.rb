class RemoveMovieFromLists < ActiveRecord::Migration[6.1]
  def change
    remove_reference :lists, :movie, null: false, foreign_key: true
  end
end
