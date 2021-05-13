pro znem_ciafile,root,ciafile,dnu_cia,numpara

file=strcompress(root + '.cia',/remove_all)

openw,lun,file,/get_lun
printf,lun,ciafile
printf,lun,dnu_cia
printf,lun,numpara
free_lun, lun

return
end
