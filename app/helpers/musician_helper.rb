module MusicianHelper
  def display_musician_name(musician)
    return "-" if musician.nil?
    musician.firstname
  end
end