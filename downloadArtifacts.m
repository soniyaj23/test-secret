function downloadArtifacts()

% Credentials stored in MATLAB Vault
opts = weboptions( ...
    Username=secretID("ARTIFACT_USER"), ...
    Password=secretID("ARTIFACT_PASSWORD"));

% Download build artifacts / reports
artifacts = webread( ...
    "https://artifacts.company.com/data", opts);

save("artifacts.mat","artifacts");
disp("Artifacts downloaded successfully!");

end

