function [spectraCopies] = createCopies(spectra, numCopies)
    
spectraCopies = zeros(421, 1269*numCopies);
numRangesForNoise = 3;
rng(27);

for i = 1:1269
    for j = 1:numCopies
        
        spectraCopies(:, (i-1)*numCopies + j) = addNoise( spectra, i, numRangesForNoise);
    end
end

% generiamo una matrice spectraCopies [421; 1269*copie] in cui ho numCopies
% copie di ogni master. Ogni set di numCopies colonne rappresentano le
% copie di uno stesso master

end