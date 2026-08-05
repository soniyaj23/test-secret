% secrettest.m
function secrettest
sprintf("Listing all env variables")
system('env')
secretValue = getenv("MY_API_KEY");
% GitHub Actions actively prevents logging secret values 
fprintf('Secret value has length: %d\n', length(secretValue));
fprintf('First 5 characters of secret: %s...\n', secretValue(1:min(5, end))); % Example: print first 5 chars

% Checking prefdir in CICD
fprintf('prefdir = %s\n\n', prefdir);

% Checking the value of MATLAB_UNATTENDED_TEST_ENVIRONMENT env var
fprintf('MATLAB_UNATTENDED_TEST_ENVIRONMENT = %d\n', getenv('MATLAB_UNATTENDED_TEST_ENVIRONMENT'));

% Checking if MATLAB settings persist
fprintf('\nshort value of pi = ');
disp(pi);
s = settings();
s.matlab.commandwindow.NumericFormat.PersonalValue = 'long';
fprintf('\nlong value of pi = ');
disp(pi);
fprintf('\n');

% Try to access list of Secrets
sprintf("Listing all secrets")
try
  [names, metadata] = matlab.authnz.internal.builtins.public.listsecrets
catch ME
  disp(ME);
end
end
