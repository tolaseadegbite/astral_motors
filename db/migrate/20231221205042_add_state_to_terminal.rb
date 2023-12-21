class AddStateToTerminal < ActiveRecord::Migration[7.0]
  def change
    add_reference :terminals, :state, null: false, foreign_key: true
  end
end
