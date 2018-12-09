function unencrypted = fruitDecryption(encrypted)
  unencrypted = encrypted(isletter(encrypted));
  upperText = unencrypted((unencrypted >= 'A') & (unencrypted <= 'Z'));
  lowerText = unencrypted((unencrypted >= 'a') & (unencrypted <= 'z'));
  unencrypted = [upperText lowerText];
  unencrypted = lower(unencrypted);
  inFruit = any([unencrypted == 'f'; unencrypted == 'r'; unencrypted == 'u'; unencrypted == 'i'; unencrypted == 't']);
  inFruit = [true ~inFruit(1:end-1)];
  unencrypted = unencrypted(inFruit);
end
