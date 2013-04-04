class Artist < ActiveRecord::Base
  attr_accessible :first_name, :last_name

  has_many :collaborations
  has_many :bands, through: :collaborations

	has_many :albums, through: :bands
  has_many :songs, through: :albums
  has_many :tracks, through: :songs

end
