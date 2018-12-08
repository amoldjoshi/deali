class CreateDealHunters < ActiveRecord::Migration[5.2]
  def change
    create_table :deal_hunters do |t|
      t.integer :HunterID
      t.string :HunterName
      t.string :HunterCategory
      t.boolean :IsHunterFavorite?
      t.string :HunterTargetUrl

      t.timestamps
    end
  end
end
