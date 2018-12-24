def badge_maker(speaker)
  "Hello, my name is #{speaker}."
end

def batch_badge_creator(speaker_list)
  badge_messages = Array.new
  i = 0
  while i < speaker_list.size
    badge_messages.push(badge_maker(speaker_list[i]))
    i += 1
  end
  return badge_messages
end

def assign_rooms(speaker_list)
  room_list = Array.new
  i = 0
  while i < speaker_list.size
    room_list.push("Hello, #{speaker_list[i]}! You'll be assigned to room #{i+1}!")
    i += 1
  end
  return room_list
end

def printer(speaker_list)
  badge_messages = batch_badge_creator(speaker_list)
  room_list = assign_rooms(speaker_list)
  i = 0
  while i < badge_messages.size
    puts badge_messages[i]
    i += 1
  end
  j = 0
  while j < room_list.size
    puts room_list[j]
    j += 1
  end
end
