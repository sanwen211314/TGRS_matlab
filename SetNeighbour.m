function CMatrix = SetNeighbour(Row, Colume)
NumSites = Row*Colume;
CMatrix = sparse(NumSites, NumSites);

%one order neighbors setting
% for i=1:NumSites
%     if i+1 <= NumSites && mod(i,Colume)~=0
%         CMatrix(i,i+1) = 1;
%     end
%     if i+Colume <= NumSites
%         CMatrix(i, i+Colume) = 1;
%     end
% end

%one and two order neighbors setting
for i=1:NumSites
    if i+1 <= NumSites && mod(i,Colume)~=0
        CMatrix(i,i+1) = 1;
    end
    if i+Colume-1 <= NumSites && mod(i,Colume)~=1
        CMatrix(i,i+Colume-1) = 1;
    end
    if i+Colume <= NumSites
        CMatrix(i,i+Colume) = 1;
    end
    if i+Colume+1 <= NumSites && mod(i,Colume)~=0
        CMatrix(i,i+Colume+1) = 1;
    end
end

    
    
