require_relative('song')
require_relative('guest')


class Room

  attr_accessor(:room_name, :songs, :guests)

  def initialize(input_name)
    @room_name = input_name
    @songs = []  
    @guests = []
  end

  def check_guest_into_room(new_guest)
    @guests << new_guest
  end

  def add_song_to_room(new_song)
    @songs << new_song
  end

end