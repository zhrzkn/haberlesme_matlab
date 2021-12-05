function y=fazkodla(isaret,fd,fs,kodlama)
oran=fs/fd;
if strcmp(kodlama,'manchester')
for i=0:max(size(isaret))-1
    if isaret(i+1)==0
        y(i*oran+1:ceil((i+0.5)*oran))=(-1)*ones(1,ceil(oran*0.5));
        y(ceil((i+0.5)*oran+1):(i+1)*oran)=ones(1,oran-round(oran*0.5));
    else
        y(i*oran+1:ceil((i+0.5)*oran))=ones(1,ceil(oran*0.5));
        y(ceil((i+0.5)*oran+1):(i+1)*oran)=(-1)*ones(1,oran-round(oran*0.5));
    end
end
elseif strcmp(kodlama,'miller')
    t=1;
    p=0;

    for i=0:max(size(isaret))-1
    if isaret(i+1)==0
        if p==0
            t=t*(-1);
        end
        y(i*oran+1:(i+1)*oran)=t*ones(1,oran);
        p=0;        
    else
        y(i*oran+1:ceil((i+0.5)*oran))=t*ones(1,ceil(oran*0.5));
        y(ceil((i+0.5)*oran+1):(i+1)*oran)=t*(-1)*ones(1,oran-round(oran*0.5));
        t=t*(-1);
        p=1;
    end
    end
else
    error('Hatalı hat kodu');
end