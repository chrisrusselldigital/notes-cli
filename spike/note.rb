@note = []

puts "Enter a name for the note:"
name = gets.chomp
@note << name

while name != "stop"
  puts "Enter a name for the note:"
  name = gets.chomp
  @note << name
  if name == "stop"
    @note.pop
  end
end

p @note
