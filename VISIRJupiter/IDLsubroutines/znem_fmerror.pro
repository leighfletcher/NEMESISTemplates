pro znem_fmerror,ispace,fmerror
openw,lun,'fmerror.dat',/get_lun
printf,lun,'2'
fmerrors=fltarr(2,2)
if ispace eq 0 then fmerrors[0,*]=[0.01,2500.0]
if ispace eq 1 then fmerrors[0,*]=[0.01,100.0]
fmerrors[1,*]=[fmerror,fmerror]
printf,lun,fmerrors
free_lun, lun
return
end
