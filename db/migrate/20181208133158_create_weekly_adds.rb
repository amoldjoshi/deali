class CreateWeeklyAdds < ActiveRecord::Migration[5.2]
  def change
    create_table :weekly_adds do |t|
      t.integer :AddID
      t.string :AddName
      t.string :AddCategory
      t.boolean :IsAddFavorite?
      t.string :AddTargetUrl

      t.timestamps
    end
  end
end
