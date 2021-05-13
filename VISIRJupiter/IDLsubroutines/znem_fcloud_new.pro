pro znem_fcloud_new,ref_file,ncloud

zreadref,ref_file,iform,nlat,iplanet,latitude,npro,ngas,M,idiso,height,press,temp,vmrs

openw,2,'fcloud.ref'
printf,2,npro,ncloud
for i=0,npro-1 do printf,2,height[i],replicate(1.0,2*ncloud)
close,2

return
end
