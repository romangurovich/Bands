class Song < ActiveRecord::Base
  attr_accessible :album_id, :name

  belongs_to :album
  has_many :tracks
  has_one :band, through: :album

end

