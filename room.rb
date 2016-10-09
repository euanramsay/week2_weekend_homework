require_relative('song')
require_relative('guest')


class Room

  attr_accessor(:room_name, :songs, :guests)

  def initialize(input_name)
    @names = input_name
    @songs = []  
    @guests = []
  end

end