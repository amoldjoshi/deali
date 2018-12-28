class CreateAbouts < ActiveRecord::Migration[5.2]
  def change
    create_table :abouts do |t|
      t.text :question
      t.text :answer

      t.timestamps
    end
  end
end
