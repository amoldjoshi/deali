class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.text :Question
      t.text :Answer
      t.string :Email

      t.timestamps
    end
  end
end
