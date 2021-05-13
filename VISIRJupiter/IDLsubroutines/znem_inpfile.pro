pro znem_inpfile,root,ispace,iscat,ilbl,nit,subpre,ns,ioff,iform


inpfile=strcompress(root + '.inp',/remove_all)
openw, lun, inpfile, /get_lun
printf,lun,ispace,iscat,ilbl,'              ! ispace,iscat'
printf,lun,'0.0               ! Wavenumber offset to add to measured spectrum'
printf,lun,'fmerror.dat'
printf,lun,nit,'  ! Number of iterations'
printf,lun,'0.1               ! Minimum % change in phi before terminating'
printf,lun,'1 1   ! Total spectra to fit and starting ID'
printf,lun,subpre,'  ! Dont substitute previous retrievals'
printf,lun,iform,'   ! Output format'
free_lun, lun

return
end
