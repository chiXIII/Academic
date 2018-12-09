function encrypted = fruitEncryption(decrypted)

  [M N] = size(decrypted);
  encrypted = decrypted;
  evens = encrypted(2:2:end,:);
  evens = char(mod(evens + N - 'a' + 1, 26) + 'a' - 1);
  encrypted(2:2:end,:) = evens;

  odd = encrypted(:,1:2:end);
  odd =  char(mod(odd - M - 'a' + 1, 26) + 'a' - 1);
  encrypted(:, 1:2:end) = odd;

  half = floor(M/2);
  encrypted = [encrypted(half + 1:end,:); encrypted(1:half,:) ];

  end
