require ('minitest/autorun')
require ('minitest/rg')
require ('pry-byebug')
require_relative ('../song')
require_relative ('../guest')
require_relative ('../room')

class TestRoom < Minitest::Test

  def setup
    @dan = Guest.new("Dan")
    @roseanne = Guest.new("Roseanne")
    @becky = Guest.new("Becky")
    @darlene = Guest.new("Darlene")
    @dj = Guest.new("DJ")
    @david = Guest.new("David")

    @the_conners = [@dan, @roseanne, @becky, @darlene, @dj]

    @flamingo = Room.new("Flamingo Room")
    @tropicana = Room.new("Tropicana Room")
    @excalibur = Room.new("Excalibur Room")

    @jailhouse = Song.new("Elvis Presley", "Jailhouse Rock")
    @hound = Song.new("Elvis Presley", "Hound Dog")
    @blue = Song.new("Elvis Presley", "Blue Suede Shoes")
  end

def test_guest_has_name
    name = @dan.guest_name
    assert_equal("Dan", name)
end

def test_you_can_checkin_a_guest_to_a_room
    name = @dan.guest_name
    guest_in_room = @flamingo.check_guest_into_room(name)
    assert_equal("Dan", name)
end

def test_you_can_checkin_a_party_of_guests_to_a_room
    guests_in_room = @excalibur.guests.concat (@the_conners)
    party_of_guests = guests_in_room.map { |person| person.guest_name }
   assert_equal(["Dan", "Roseanne", "Becky", "Darlene", "DJ"], party_of_guests)
end

def test_you_can_checkout_a_guest_from_a_room
      guests_in_room = @excalibur.guests.concat (@the_conners)
      guests_in_room.delete(@becky)
       guests_left = guests_in_room.map { |person| person.guest_name }
      assert_equal(["Dan", "Roseanne", "Darlene", "DJ"], guests_left)
end

def test_you_can_add_a_song_to_a_room
    new_song_to_room = @tropicana.add_song_to_room(@hound)
    song_title = new_song_to_room.map { |song| song.title }
    assert_equal("Hound Dog", song_title[0])
end



end
