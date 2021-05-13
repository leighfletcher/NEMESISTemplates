pro znem_fpara,ref_file,fh2type
openw,lun,'.fh2_in',/get_lun
printf,lun,ref_file
printf,lun,'parah2'
printf,lun,fH2type
free_lun, lun
spawn,'Parah2_profile < .fh2_in'
spawn,'\cp parah2.prf parah2.ref'
return
end
