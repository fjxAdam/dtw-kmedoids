clear;
clc;
tic;
ggg = load('D:\matlab17b\bin\matlab.mat','ggg');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%用DTW为距离，k中心值方法，计算聚类
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if ndims(ggg.ggg) ==2
    [idx,C,sumd,D,midx,info] = kmedoids(ggg.ggg,10,'Distance',@distfun);
elseif ndims(ggg.ggg)==3
    m,n,o = size(ggg.ggg);
    ggg.ggg = reshape(ggg.ggg,m*n,o)
else 
    print("请输入正确的数据")
end
toc;