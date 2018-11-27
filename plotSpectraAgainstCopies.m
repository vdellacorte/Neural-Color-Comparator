function [] = plotSpectraAgainstCopies(spectra, copy, index)

 figure('Position', [100, 100, 1000, 400]);
 
 plot(spectra(:, index));
   
 hold on;
 for i=1:5
    plot(copy(:,index+i));
 end
 
 ylim([0 1])
 hold off;
 
 legend('master', 'copy1', 'copy2', 'copy3', 'copy4', 'copy5');
 
end