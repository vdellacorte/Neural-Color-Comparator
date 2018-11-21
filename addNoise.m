function [noisySpectrum] = addNoise(spectra, index, k)


    noisySpectrum = spectra(:,index);
    for i = 1:k
        
        noise = rand()*0.4+0.8;
        minBound = (i-1)*140+1;
        maxBound = i*140;
        
        noisySpectrum(minBound : maxBound) = noise * noisySpectrum(minBound : maxBound);
    end
    
end
