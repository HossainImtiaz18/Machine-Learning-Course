function id = selfTake(x,cen,k,xr)
  mx = 1/0;
   for imt=1:k
       s=0;
         for im=1:xr
              s = s+(x(1,im)-cen(imt,im))*(x(1,im)-cen(imt,im));
         end
         if(s<mx)
             id = imt;
             mx=s;
         end
   end
   
end