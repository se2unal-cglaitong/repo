class AddGenreToAuthors < ActiveRecord::Migration[5.2]
  def change
    add_column :authors, :genre, :string
  end
end
