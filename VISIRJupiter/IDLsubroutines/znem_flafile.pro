pro znem_flafile,root,inormal,iray,ih2o,ich4,io3,inh3,iptf,imie,iuv

file=strcompress(root + '.fla',/remove_all)
openw,lun,file,/get_lun
printf,lun,inormal,'	! Inormal (0=eqm, 1=normal)'
printf,lun,iray,'	! Iray (0=off, 1=on)'
printf,lun,ih2o,'	! IH2O (1 = turn extra continuum on)'
printf,lun,ich4,'	! ICH4 (1 = turn extra continuum on) '
printf,lun,io3,'	! IO3 (1 = turn extra continuum on)' 
printf,lun,inh3,'	! INH3 (1 = turn extra continuum on)' 
printf,lun,iptf,'	! Iptf (0=default, 1=CH4 High-T)'
printf,lun,imie,'	! IMie'
printf,lun,iuv,'	! UV Cross-sections'


free_lun, lun
return
end
