function [noisySpectrum] = addNoise(spectra, index)
    %noise deve essere aggiunto così: (from Pistolesi)
        %A copy of a master can thus be generated, e.g., by first dividing the spectrum
        %into wavelength ranges and then adding a noise to one or more wavelength
        %ranges.
    rng(15); %valore a caso del seed per rendere ripetibili le prove
    noise = rand()*0.2+0.9;
    spectrum = spectra(:,index);
    noisySpectrum = spectrum*noise;
end
