class User < ActiveRecord::Base
  attr_accessible :address, :country, :date_of_birth, :gender, :name

  has_many :schedule
  has_many :course, through :schedule
end
