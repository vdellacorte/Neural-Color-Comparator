function [mse] = trainAndGetMse(features, realDistance)
    hiddenLayerSize = 10;
    net = fitnet(hiddenLayerSize);
    
    
end


%la rete neurale d� come R diversi valori per identici input (dovuto ai
%differenti pesi iniziali con cui viene inizializzata la rete). Si pu�
%eseguire per un numero n di volte il calcolo di R e poi prenderne il
%valore massimo ottenuto