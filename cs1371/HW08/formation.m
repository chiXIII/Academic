function formation(nums, fileName)
  places = max(nums);
  lNum = 0;
  fhw = fopen(fileName, 'w');
  for n = nums
    lNum = lNum + 1;
    margin = zeros(1,(places-n)/2);
    form = [margin ones(1,n) margin];
    fprintf(fhw, ['Line %d has the following line up: ' num2str(form)], lNum);
    if ~(lNum == length(nums))
       fprintf(fhw, '\n');
    end
  end
  fclose(fhw);
end
