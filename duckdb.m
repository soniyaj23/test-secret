function conn = duckdb(filePath,options)
arguments
    filePath (1,1) string = ""
    options.EncryptionKeyID secretID
end

try
    encKey = options.EncryptionKeyID.getSecret();
catch ME
    throwAsCaller(MException( ...
        "duckdb:VaultUnavailable", ...
        ME.message));
end

conn = [];
end
