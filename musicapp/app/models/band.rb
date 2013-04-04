class Band < ActiveRecord::Base
  attr_accessible :name

  has_many :collaborations
  has_many :artists, through: :collaborations

end