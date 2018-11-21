function [deltaE] = computeDeltaE(spectrum1,spectrum2)
    spectrum1 = spectrum1*100;
    lab1 = roo2lab(spectrum1',[],380:1:800);
    spectrum2 = spectrum2*100;
    lab2 = roo2lab(spectrum2',[],380:1:800);
    %deltaE = sqrt((lab2(1)-lab1(1))^2+ (lab2(2)-lab1(2))^2 + (lab2(3)-lab1(3))^2);
    deltaE = de(lab2, lab1); %esiste già una funzione per calcolare la distanza euclidea
end