% personalValue.m
function personalValue

  % Checking if MATLAB settings persist
  fprintf('\nValue of pi = ');
  disp(pi);
  fprintf('\n');

  disp('Path of prefdir: ');
  disp(prefdir);
  disp('Number of files in a prefdir: ');
  numFiles = numel(ls(prefdir));
  disp(numFiles);
  disp('Files in prefdir: ');
  disp(ls(prefdir));

end
