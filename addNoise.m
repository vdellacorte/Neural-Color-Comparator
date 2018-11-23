function [noisySpectrum] = addNoise(spectra, index, k)


    noisySpectrum = spectra(:,index);
    for i = 1:k
        
        noise = rand()*0.2+0.9;
        minBound = (i-1)*(420/k) +1;
        maxBound = i*(420/k);
        
        noisySpectrum(minBound : maxBound) = noise * noisySpectrum(minBound : maxBound);
    end
    
end
