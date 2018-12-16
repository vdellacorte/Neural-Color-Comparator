function [correctedDeltaE] = calculateDeltaECorrection(labCoordinates, deltaE, numCopies)
    
    fuzzyInputs = zeros(4,1269*numCopies);
    fis = readfis('fuzzySystem.fis');
    %plotmf(fis,'input',3);
    lch = lab2lch(labCoordinates')';
    
    for i=1:1269*numCopies
        
        cMax = 127 * sqrt( 1 - ( (50-lch(1,i) )/50 )^2 );
        lch(2,i) = lch(2,i)*100/cMax;
    end
    
    fuzzyInputs(1:3,:) = lch;  
    fuzzyInputs(4,:) = deltaE;
    optFis = evalfisOptions("NoRuleFiredMessage","none");
    [correctedDeltaE,fuzzifiedIn,ruleOut,aggregatedOut,ruleFiring] = evalfis(fis,fuzzyInputs', optFis);
end