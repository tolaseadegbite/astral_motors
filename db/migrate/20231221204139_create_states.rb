class CreateStates < ActiveRecord::Migration[7.0]
  def change
    create_table :states do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.index :name, unique: true

      t.timestamps
    end
  end
end
