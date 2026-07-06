class RenameTypeInMovies < ActiveRecord::Migration[8.1]
  def change
    rename_column :movies, :type, :content_type
  end
end
