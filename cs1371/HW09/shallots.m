function layers = shallots(specimen)
  layers = 0;
  while strcmp(class(specimen), 'cell')
    specimen = specimen{1};
    layers = layers + 1;
  end
end
