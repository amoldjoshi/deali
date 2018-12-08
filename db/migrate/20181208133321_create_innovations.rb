class CreateInnovations < ActiveRecord::Migration[5.2]
  def change
    create_table :innovations do |t|
      t.integer :InnovationID
      t.string :InnovationName
      t.string :InnovationCategory
      t.boolean :IsInnovationFavorite?
      t.string :InnovationTargetUrl

      t.timestamps
    end
  end
end
