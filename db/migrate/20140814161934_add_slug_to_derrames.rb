class AddSlugToDerrames < ActiveRecord::Migration
  def change
    add_column :derrames, :slug, :string
    add_index :derrames, :slug, unique: true
  end
end
