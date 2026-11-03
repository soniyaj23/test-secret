function plan = buildfile
    plan = buildplan(localfunctions);
end

function checkEnvTask(~)
    % addpath("src");
    checkEnv;
end
