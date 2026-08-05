% personalValue.m
function personalValue

  % Display settings of NumericFormat
  disp('Settings of NumericFormat:');
  s = settings();
  disp(s.matlab.commandwindow.NumericFormat);
  
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
