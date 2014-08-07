class CreateDerrames < ActiveRecord::Migration
  def change
    create_table :derrames do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
