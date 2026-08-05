% setPersonalValue.m
function setPersonalValue

  fprintf('\nshort value of pi = ');
  disp(pi);
  disp('Path of prefdir: ');
  disp(prefdir);
  disp('Number of files in a prefdir: ');
  numFiles = numel(ls(prefdir));
  disp(numFiles);
  disp('Files in prefdir: ');
  disp(ls(prefdir));
  
  % Set PersonalValue
  s = settings();
  s.matlab.commandwindow.NumericFormat.PersonalValue = 'long';
  
  fprintf('\nlong value of pi = ');
  disp(pi);
  fprintf('\n');

  if numel(ls(prefdir)) > numFiles
    disp('Files in prefdir: ');
    disp(ls(prefdir));
  end
end
