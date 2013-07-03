class Schedule < ActiveRecord::Base
  attr_accessible :category_id, :course_id, :end_at, :point, :start_at, :user_id
  
  belongs_to :category, :course, :user

end
