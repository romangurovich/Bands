class Single < ActiveRecord::Base
  attr_accessible :band_id, :name

  belongs_to :band
  has_many :recordings

end

