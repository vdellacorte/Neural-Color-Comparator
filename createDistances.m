function [distances] = createDistances(extendedSpectra, noisedCopies, numCopies) 

distances = zeros(1, 1269*numCopies);

for i= 1:1269*numCopies
    
    distances(1,i) = computeDeltaE(extendedSpectra(:, i), noisedCopies(:, i));
end

end