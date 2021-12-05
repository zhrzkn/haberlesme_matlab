function y=amikodla(isaret,fd,fs,kodlama)
oran=fs/fd;
if strcmp(kodlama,'ami-nrz')
    t=1;
for i=0:max(size(isaret))-1
    if isaret(i+1)==0
        y(i*oran+1:(i+1)*oran)=zeros(1,oran);
    else
        y(i*oran+1:(i+1)*oran)=t*ones(1,oran);
        t=t*(-1);
    end
end
elseif strcmp(kodlama,'ami-rz')
    t=1;
    for i=0:max(size(isaret))-1
    if isaret(i+1)==0
        y(i*oran+1:(i+1)*oran)=zeros(1,oran);   
    else
        y(i*oran+1:ceil((i+0.5)*oran))=t*ones(1,ceil(oran*0.5));
        y(ceil((i+0.5)*oran+1):(i+1)*oran)=zeros(1,oran-round(oran*0.5));
        t=t*(-1);
    end
    end
else
    error('Hatalı hat kodu');
end