class ChangeTypeFailedScoreFromIntegerToFloat < ActiveRecord::Migration
  def up
  	change_column :courses, :failed_score, :float
  end

  def down
  	  	change_column :courses, :failed_score, :integer
  end
end
