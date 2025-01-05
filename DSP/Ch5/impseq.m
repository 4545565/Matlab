function n = impseq(n0, n_start, n_end)
    % impseq - Generate a discrete-time impulse sequence
    % 
    % [x, n] = impseq(n0, n_start, n_end)
    % 
    % Inputs:
    % n0      - Position of the impulse (n = n0)
    % n_start - Start of the discrete-time range
    % n_end   - End of the discrete-time range
    %
    % Outputs:
    % x       - Generated impulse sequence
    % n       - Time index vector
    
    % Create the time index vector
    n = zeros(1,n_end - n_start + 1);
    
    % Generate the impulse sequence
    n(n0 - n_start + 1)=1;
end
