class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :user_id
      t.integer :category_id
      t.integer :course_id
      t.datetime :start_at
      t.datetime :end_at
      t.float :point

      t.timestamps
    end
  end
end
