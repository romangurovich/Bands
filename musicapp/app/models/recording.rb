class Recording < ActiveRecord::Base
  attr_accessible :name, :single_id

  belongs_to :single

  has_one :band, through: :single

end
