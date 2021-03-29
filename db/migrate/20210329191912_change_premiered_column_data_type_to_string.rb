class ChangePremieredColumnDataTypeToString < ActiveRecord::Migration[6.1]
  def change
    change_column :shows, :premiered, :string
  end
end
