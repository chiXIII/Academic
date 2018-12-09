function sentence = fruitThief(response1, response2, response3, response4)

  thiefNumber = 0;
  is1Thief = ~all(response1 == response2) & ~all(response1 == response3);
  thiefNumber = thiefNumber + 1*double(is1Thief);

  is2Thief = ~all(response2 == response1) & ~all(response2 == response3);
  thiefNumber = thiefNumber + 2*double(is2Thief);

  is3Thief = ~all(response3 == response1) & ~all(response3 == response2);
  thiefNumber = thiefNumber + 3*double(is3Thief);

  is4Thief = ~all(response4 == response1) & ~all(response4 == response2);
  thiefNumber = thiefNumber + 4*double(is4Thief);

  sentence = sprintf( 'Suspect #%s is the fruit thief.', num2str(thiefNumber));

end
