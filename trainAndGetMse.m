function [mse, regr] = trainAndGetMse(features, realDistance)
    hiddenLayerSize = 10;
    net = fitnet(hiddenLayerSize);
    
    [net, tr] = train(net, features, realDistance);
    y = net(features);
    mse = perform(net, realDistance, y);
    regr = regression( realDistance, y);
end
