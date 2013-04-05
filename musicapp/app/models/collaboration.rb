class Collaboration < ActiveRecord::Base
  attr_accessible :artist_id, :band_id

  belongs_to :artist
  belongs_to :band

  validates :artist_id, :band_id, presence: true

end
