function extendedSpectra = extendMasters(spectra, numCopies)

extendedSpectra = zeros(421, 1269*numCopies);

for i= 1:1269
   
    for j = 1:numCopies
        
        extendedSpectra(:, (i-1)*numCopies + j) = spectra(:, i);
    end
    
end

end