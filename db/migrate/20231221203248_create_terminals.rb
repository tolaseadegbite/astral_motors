class CreateTerminals < ActiveRecord::Migration[7.0]
  def change
    create_table :terminals do |t|
      t.string :name
      t.string :address
      t.string :state
      t.string :phone
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
