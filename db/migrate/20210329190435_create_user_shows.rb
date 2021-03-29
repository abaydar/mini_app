class CreateUserShows < ActiveRecord::Migration[6.1]
  def change
    create_table :user_shows do |t|
      t.belongs_to :show 
      t.belongs_to :user 

      t.timestamps
    end
  end
end
