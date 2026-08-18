% testSecretAPIs.m
function testSecretAPIs

  % importSecrets("creds.env");
  disp('List of Secrets:');
  disp(listSecrets);
  
  disp('Files in credentials directory: ');
  credsLoc = fullfile(prefdir,'..','..','credentials');
  disp(ls(credsLoc));

end
