class Track < ActiveRecord::Base
  attr_accessible :name, :song_id

  belongs_to :song
  has_one :album, through: :song

  validates :name, :song_id, presence: true

end