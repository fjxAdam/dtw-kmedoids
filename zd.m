clear;
clc;
tic;
ggg = load('D:\matlab17b\bin\matlab.mat','ggg');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%��DTWΪ���룬k����ֵ�������������
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if ndims(ggg.ggg) ==2
    [idx,C,sumd,D,midx,info] = kmedoids(ggg.ggg,10,'Distance',@distfun);
elseif ndims(ggg.ggg)==3
    m,n,o = size(ggg.ggg);
    ggg.ggg = reshape(ggg.ggg,m*n,o)
else 
    print("��������ȷ������")
end
toc;