% data = load("E:\\ggg.mat");
% data.ggg;
% data.ggg = reshape(data.ggg,1191*1164,40)
% [idx,C,sumd,D,midx,info] = kmedoids(data.ggg,10,'Distance','@dtw');

function [D2] = distfun(XI,XJ)  
%NANEUCDIST Euclidean distance ignoring coordinates with NaNs
% 
% n = size(XI,2);
% sqdx = (XI-XJ).^2;
% nstar = sum(~isnan(sqdx),2); % Number of pairs that do not contain NaNs
% nstar(nstar == 0) = NaN; % To return NaN if all pairs include NaNs
% D2squared = nansum(sqdx,2).*n./nstar; % Correction for missing coordinates
% D2 = sqrt(D2squared);
D2 = dtw(XI',XJ');
end