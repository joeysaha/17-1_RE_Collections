hash = {
  data: {
    rooms:
    [ { id: 1, room_number: "201", capacity: 50 }, { id: 2, room_number: "301", capacity: 200 }, { id: 3, room_number: "1B", capacity: 100 } ],
    events: [
      { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 75 },
      { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 25 },
      { id: 3, room_id: 2, start_time: 10, end_time: 18, attendees: 20 },
      { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 }
    ]
  }
}

puts "-----------------------"
# puts hash[:data[:rooms[0]]].to_string
puts hash[:data][:rooms][0]

hash[:data][:events].each do |event_room|
  if event_room[:attendees] < hash[:data][:rooms][0][:capacity]
    puts "It is OK to use event #{event_room[:id]} in room 201."
  else
    puts "It is NOT OK to use event #{event_room[:id]} in room 201."
  end
end
