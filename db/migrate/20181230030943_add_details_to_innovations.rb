class AddDetailsToInnovations < ActiveRecord::Migration[5.2]
  def change
  	add_column :innovations, :description, :text
  	add_column :innovations, :price, :decimal, precision: 5, scale: 2
  end
end
