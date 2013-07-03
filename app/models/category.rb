class Category < ActiveRecord::Base
  attr_accessible :title

  has_many :schedule
  has_many :course
end
