class Artist < ActiveRecord::Base
  attr_accessible :first_name, :last_name

  has_many :collaborations
  has_many :bands, through: :collaborations

	has_many :singles, through: :bands

end
