function [noisySpectrum] = addNoise(spectra, index)
    noise = rand()*0.2+0.9;
    spectrum = spectra(:,index);
    noisySpectrum = spectrum*noise;
end
