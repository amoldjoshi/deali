class CreateDailyDeals < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_deals do |t|
      t.integer :DealerID
      t.string :DealerName
      t.string :DealerCategory
      t.boolean :IsDealerFavorite?
      t.string :DealerTargetUrl

      t.timestamps
    end
  end
end
