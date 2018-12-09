function sentence = birdNest(room)
	count = 0;
	contains = false;
	while isstruct(room) &~contains
		count = count + 1;
		contains = room.ContainsBird;
		roomNumber = room.RoomNumber;
		room = room.Exit;
	end
	if contains
		sentence = sprintf('After an epic chase spanning %d rooms, the cats found the bird in IC %d!', count, roomNumber);
	else
		sentence = 'It was a stunning chase, but the bird escaped.';
end
