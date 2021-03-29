class CreateShows < ActiveRecord::Migration[6.1]
  def change
    create_table :shows do |t|
      t.string :name
      t.string :genre 
      t.string :status
      t.date :premiered 
      t.string :image

      t.timestamps
    end
  end
end
