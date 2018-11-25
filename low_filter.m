function [dt] = low_filter(xt,N,flag,bound)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%��flag = 1����ͨ�˲����źŵĽ�ȡ
%��flag=0 ���򵥵ĵ�ͨ�˲�
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
yt = zeros(size(xt));
if flag
    %���˲���ͬʱ�ı�һ�·���֮�࣬Ϊ�˱����źŵķ���
for i=1:length(xt)-N
    yt(i)= sum(xt(i:i+N).^2*100);
end
zt = zeros(size(yt));
zt = (yt>bound);
dt = xt(yt>bound);

else
    %���򵥵ĵ�ͨ�˲�
    dt = zeros(size(xt));
    for i=1:length(xt)-N
         dt(i)= sum(xt(i:i+N));
    end
end

end