function [deltaE] = testNoise(spectra)
    noisySpectrum = addNoise(spectra, 100, 3, 27);
    masterSpectrum = spectra(:,100);
    
    printRGB(masterSpectrum, 'master', [201.0000  334.6000  574.4000  409.6000]);
    printRGB(noisySpectrum,'copy', [750.0000  334.6000  574.4000  409.6000]);
    deltaE = computeDeltaE( masterSpectrum,noisySpectrum);
end

%dovremmo generare una serie di copie per master e ottenere due matrici:
%[421; 1269] per il master e [421; 1269 * copies] per le copie
% ed eseguire la feature extraction su queste matrici
% OPPURE ci riduciamo tutto ad un'unica matrice e lo facciamo su quella la
%feature extraction