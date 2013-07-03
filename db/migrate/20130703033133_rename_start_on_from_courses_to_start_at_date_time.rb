class RenameStartOnFromCoursesToStartAtDateTime < ActiveRecord::Migration
  def up
  	  	rename_column :courses, :start_on, :start_at
  	  	change_column :courses, :start_at, :datetime
  end

  def down
  	  	rename_column :courses, :start_at, :start_on
  	  	change_column :courses, :start_on, :date
  end
end
