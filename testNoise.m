function [deltaE] = testNoise(spectra)
    noisySpectrum = addNoise(spectra,100);
    masterSpectrum = spectra(:,100);
    printRGB(masterSpectrum, 'master', [201.0000  334.6000  574.4000  409.6000]);
    printRGB(noisySpectrum,'copy', [750.0000  334.6000  574.4000  409.6000]);
    deltaE = computeDeltaE(spectra(:,100),noisySpectrum);
end