class Course < ActiveRecord::Base
  attr_accessible :category_id, :failed_score, :start_on, :title

  belongs_to :category
  has_many :schedule
  has_many :user, through :schedule
end
