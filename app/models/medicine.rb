class Medicine < ActiveRecord::Base
  attr_accessible :description, :name, :time
  belongs_to :user
end
