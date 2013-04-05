class Song < ActiveRecord::Base
  attr_accessible :album_id, :name, :track_list, :track_ids

  belongs_to :album
  has_many :tracks, dependent: :destroy
  has_one :band, through: :album

  validates :album_id, :name, presence: true

  def track_list
    self.tracks.pluck(:name).join(", ")
  end

  def track_list=(string_of_tracks)
    tracks = string_of_tracks.split(',').map do |str|
      str.strip
    end
    new_tracks = tracks.map do |track_name|
      Track.find_or_create_by_name(track_name)
    end

    self.tracks = new_tracks

  end



end

