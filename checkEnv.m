function checkEnv
    value = getenv("MY_TEST_VAR");

    if isempty(value)
        error("MY_TEST_VAR was not received by MATLAB");
    end

    fprintf("MY_TEST_VAR was successfully received: %s\n", value);
end
