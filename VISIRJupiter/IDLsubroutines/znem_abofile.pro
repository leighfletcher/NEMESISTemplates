pro znem_abofile,root
abofile=strcompress(root + '.abo',/remove_all)
openw,lun,abofile,/get_lun
printf,lun,'nostop'
free_lun, lun
return
end
