class CreateOnCalls < ActiveRecord::Migration
  def change
    create_table :on_calls do |t|
      t.string :name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
