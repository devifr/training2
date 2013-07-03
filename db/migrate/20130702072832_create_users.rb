class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.date :date_of_birth
      t.string :gender, limit: 6
      t.text :address
      t.string :country, default: "Indonesia"

      t.timestamps
    end
  end
end
