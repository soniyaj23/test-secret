function conn = duckdb(filePath,options)
  arguments
       filePath (1,1) string = ""
       options.EncryptionKeyID secretID;
  end
  encKey = options.EncryptionKeyID.getSecret();
  conn = "Report generated successfully!";
end
