require_relative('song')
require_relative('guest')


class Room

  attr_accessor(:room_name, :songs, :guests)

  def initialize(input_name)
    @names = input_name
    @songs = []  
    @guests = []
  end

  # def add_guest_to_room(guest_name, room_name)
  #   add_guest = 
  # end

end