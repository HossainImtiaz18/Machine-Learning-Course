function cen = computeMeans(X,idx,K)
Y=zeros(K,size(X,2));
p=zeros(K);
       for i=1:size(X,1)
           for j=1:size(X,2)
              Y(idx(i),j)=Y(idx(i),j)+X(i,j);
           end
              p(idx(i))=p(idx(i))+1;
       end
        for i=1:K
           for j=1:size(X,2)
              Y(i,j)=Y(i,j)/p(i);
           end
             
       end
       cen=Y;
end