class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.date :start_on
      t.integer :category_id
      t.integer :failed_score, default: 0

      t.timestamps
    end
  end
end
