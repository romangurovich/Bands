class Artist < ActiveRecord::Base
  attr_accessible :first_name, :last_name

  has_many :collaborations, dependent: :destroy
  has_many :bands, through: :collaborations

	has_many :albums, through: :bands
  has_many :songs, through: :albums
  has_many :tracks, through: :songs

  validates :first_name, :last_name, presence: true

end
