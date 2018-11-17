function [deltaE] = testNoise(spectra)
    noisySpectrum = addNoise(spectra,100)
    printRGB(spectra(:,100),'master');
    printRGB(noisySpectrum,'copy');
    deltaE = computeDeltaE(spectra(:,100),noisySpectrum);
end