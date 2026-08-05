% setPersonalValue.m
function setPersonalValue

  fprintf('\nshort value of pi = ');
  disp(pi);
  
  % Set PersonalValue
  s = settings();
  s.matlab.commandwindow.NumericFormat.PersonalValue = 'long';
  
  fprintf('\nlong value of pi = ');
  disp(pi);
  fprintf('\n');

end
