class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :user_identifier, null: false
      t.string :name

      t.timestamps
    end
  end
end
