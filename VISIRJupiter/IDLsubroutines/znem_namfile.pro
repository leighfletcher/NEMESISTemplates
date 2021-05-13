pro znem_namfile,root
namfile=strcompress(root + '.nam',/remove_all)
openw,lun,namfile,/get_lun
printf,lun,root
free_lun, lun
return
end
