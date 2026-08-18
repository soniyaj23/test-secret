% testSecretAPIs.m
function testSecretAPIs

  % importSecrets("creds.env");
  % disp('List of Secrets:');
  % disp(listSecrets);
  
  disp('Files in credentials directory: ');
  credsLoc = fullfile(prefdir,'..','..','credentials');
  cd(credsLoc);
  disp(ls);

  doc = xmlread("default_store.xml");

  items = doc.getElementsByTagName('MetadataItem');
  
  for i = 0:items.getLength-1
      item = items.item(i);
  
      keyNode = item.getElementsByTagName('key').item(0);
      valueNode = item.getElementsByTagName('value').item(0);
  
      key = char(keyNode.getTextContent());
      value = char(valueNode.getTextContent());
  
      fprintf('Key: %s, Value: %s\n', key, value);
  end

end
