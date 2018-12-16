function [features] = computeFeatures(extendedSpectra, k, numCopies)

%featureNames = {'mean', 'var', 'median', 'mode', 'skewness'};
featureNames = {'mean', 'var'};
numFeatures = size(featureNames);
features = zeros(k*numFeatures(2), 1269*numCopies);


for i= 1:numFeatures(2)
   
    switch i
        case 1
            
            for j = 1:k
                            
                minBound = (j-1)*(420/k) +1;
                maxBound = j*(420/k);
                features( (i-1)*k + j , :) = mean( extendedSpectra( minBound : maxBound, : ) );
            end
            
        case 2
            
            for j = 1:k
                
                minBound = (j-1)*(420/k) +1;
                maxBound = j*(420/k);
                features( (i-1)* k + j, :) = var( extendedSpectra( minBound : maxBound, : ) );
            end
            
        case 3
            
            for j = 1:k
                
                minBound = (j-1)*(420/k) +1;
                maxBound = j*(420/k);
                features( (i-1)* k + j, :) = median( extendedSpectra( minBound : maxBound, : ) );
            end
            
        case 4
            
            for j = 1:k
                
                minBound = (j-1)*(420/k) +1;
                maxBound = j*(420/k);
                features( (i-1)*k + j, :) = mode( extendedSpectra( minBound : maxBound, : ) );
            end
            
       case 5
            
            for j = 1:k
                
                minBound = (j-1)*(420/k) +1;
                maxBound = j*(420/k);
                features( (i-1)* k + j, :) = skewness( extendedSpectra( minBound : maxBound, : ) );
                
            end
    end
    
end
    

end