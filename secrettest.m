% secrettest.m
function secrettest
sprintf("Listing all env variables")
system('env')
secretValue = getenv("MATLAB_API_KEY");
% GitHub actions actively prevents logging secret values 
fprintf('Secret value has length: %d\n', length(secretValue));
fprintf('First 5 characters of secret: %s...\n', secretValue(1:min(5, end))); % Example: print first 5 chars
% Try to access list of Secrets
sprintf("Listing all secrets")
try
  [names, metadata] = matlab.authnz.internal.builtins.public.listsecrets
catch ME
  disp(ME);
end
end
