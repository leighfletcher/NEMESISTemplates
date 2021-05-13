pro znem_cutspx,spxfile,ioff,root,lat,lon,wvr,spike,hamm,emm_max,cirsfpb

if cirsfpb eq 1 then begin
    getspx_fp34_sub,spxfile,ioff,root,lat,wvr
    goto,fin
endif
if cirsfpb eq 2 then begin
    znem_cutspx_fp134,spxfile,ioff,root,lat,wvr
    goto,fin
endif
if cirsfpb eq -1 then begin
    znem_cutspx_mgeom,spxfile,ioff,root,lat,wvr
    goto,fin
endif

n=n_elements(wvr)

openr,lun,spxfile,/get_lun
i=0
while ~EOF(lun) do begin
zreadspx,lun,fwhm,xlat,xlon,ngeom,nconv,nav,wave,angles,spec,error
;readnextspavx,lun,fwhm,xlat,xlon,ngeom,nconv,nav,wave,angles,spec,error
i=i+1

if hamm eq 0 then fwhm_n=fwhm
if hamm eq 1 then fwhm_n=0.0

print,'znem_cutspx: ',nconv,n,ngeom
help,wave
help,spec

if (i eq ioff) then begin
    spxoutfile=strcompress(root + '.spx',/remove_all)
    openw,98,spxoutfile
    if (spike eq 0 and n eq 2) then begin
	ikeep=where(wave[0,*] ge wvr[0] and wave[0,*] le wvr[1])
    endif
    
    if (ngeom gt 1 and spike eq 0 and n eq 2) then begin
        ikeep=where(wave ge wvr[0] and wave le wvr[1])
    endif
    if (ngeom gt 1 and spike eq 0 and n eq 4) then begin
      print,'2 chunk'
	ikeep1=where(wave ge wvr[0] and wave lt wvr[1])
      ikeep2=where(wave gt wvr[2] and wave le wvr[3])
	print,ikeep1,ikeep2
	
      if ikeep1[0] ne -1 and ikeep2[0] ne -1 then ikeep=[ikeep1,ikeep2]
	if ikeep1[0] eq -1 and ikeep2[0] ne -1 then ikeep=ikeep2
	if ikeep1[0] ne -1 and ikeep2[0] eq -1 then ikeep=ikeep1    
    endif
    if (ngeom gt 1 and spike eq 0 and n eq 6) then begin
      print,'3 chunks'
	ikeep1=where(wave ge wvr[0] and wave lt wvr[1])
      ikeep2=where(wave gt wvr[2] and wave le wvr[3])
      ikeep3=where(wave gt wvr[4] and wave le wvr[5])

	print,'IKEEP1:',ikeep1
      print,'IKEEP2:',ikeep2
      print,'IKEEP3:',ikeep3
	
      if ikeep1[0] ne -1 and ikeep2[0] ne -1 and ikeep3[0] ne -1 then ikeep=[ikeep1,ikeep2,ikeep3]
	if ikeep1[0] eq -1 and ikeep2[0] ne -1 then ikeep=ikeep2
	if ikeep1[0] ne -1 and ikeep2[0] eq -1 then ikeep=ikeep1

    endif
    if (ngeom gt 1 and spike eq 0 and n eq 8) then begin
      print,'3 chunks'
	ikeep1=where(wave ge wvr[0] and wave lt wvr[1])
      ikeep2=where(wave gt wvr[2] and wave le wvr[3])
      ikeep3=where(wave gt wvr[4] and wave le wvr[5])
            ikeep4=where(wave gt wvr[6] and wave le wvr[7])


	print,'IKEEP1:',ikeep1
      print,'IKEEP2:',ikeep2
      print,'IKEEP3:',ikeep3
	      print,'IKEEP4:',ikeep4

      if ikeep1[0] ne -1 and ikeep2[0] ne -1 and ikeep3[0] ne -1 then ikeep=[ikeep1,ikeep2,ikeep3,ikeep4]
	if ikeep1[0] eq -1 and ikeep2[0] ne -1 then ikeep=ikeep2
	if ikeep1[0] ne -1 and ikeep2[0] eq -1 then ikeep=ikeep1

    endif    
    
    
    if (spike eq 1 and n eq 2)then begin
        ikeep1=where(wave[0,*] ge wvr[0] and wave[0,*] lt 190.0)
        ikeep2=where(wave[0,*] gt 192.0 and wave[0,*] le wvr[1])
        ikeep=[ikeep1,ikeep2]
    endif
    if (ngeom eq 1 and spike eq 0 and n eq 4) then begin
        ;print,wvr,wave[0,*]
        ikeep1=where(wave[0,*] ge wvr[0] and wave[0,*] lt wvr[1])
        ikeep2=where(wave[0,*] gt wvr[2] and wave[0,*] le wvr[3])
        if ikeep1[0] ne -1 and ikeep2[0] ne -1 then ikeep=[ikeep1,ikeep2]
	if ikeep1[0] eq -1 and ikeep2[0] ne -1 then ikeep=ikeep2
	if ikeep1[0] ne -1 and ikeep2[0] eq -1 then ikeep=ikeep1

    endif
    if (ngeom eq 1 and spike eq 0 and n eq 6) then begin
        ;print,wvr,wave[0,*]
        ikeep1=where(wave[0,*] ge wvr[0] and wave[0,*] lt wvr[1])
        ikeep2=where(wave[0,*] gt wvr[2] and wave[0,*] le wvr[3])
        ikeep3=where(wave[0,*] gt wvr[4] and wave[0,*] le wvr[5])
    print,'Executing!!!'
        if ikeep1[0] ne -1 and ikeep2[0] ne -1 then ikeep=[ikeep1,ikeep2,ikeep3]
	if ikeep1[0] eq -1 and ikeep2[0] ne -1 then ikeep=ikeep2
	if ikeep1[0] ne -1 and ikeep2[0] eq -1 then ikeep=ikeep1

    endif        
    
    if (ngeom eq 1 and spike eq 0 and n eq 8) then begin
        ;print,wvr,wave[0,*]
        ikeep1=where(wave[0,*] ge wvr[0] and wave[0,*] lt wvr[1])
        ikeep2=where(wave[0,*] gt wvr[2] and wave[0,*] le wvr[3])
        ikeep3=where(wave[0,*] gt wvr[4] and wave[0,*] le wvr[5])
        ikeep4=where(wave[0,*] gt wvr[6] and wave[0,*] le wvr[7])
    print,'Executing!!!'
        if ikeep1[0] ne -1 and ikeep2[0] ne -1 then ikeep=[ikeep1,ikeep2,ikeep3,ikeep4]
	if ikeep1[0] eq -1 and ikeep2[0] ne -1 then ikeep=ikeep2
	if ikeep1[0] ne -1 and ikeep2[0] eq -1 then ikeep=ikeep1

    endif  
     
;    print,ikeep
    if ngeom eq 1 then begin
    wave=wave[*,ikeep]
    spec=spec[*,ikeep]
    error=error[*,ikeep]
    nconv=n_elements(ikeep)

    endif
    
    if ngeom gt 1 and fwhm eq 0.0 then begin    
    ngeom=n_elements(ikeep)
    nconv1=nconv[0]
    wave1=fltarr(ngeom,nconv1)
    spec1=fltarr(ngeom,nconv1)
    error1=fltarr(ngeom,nconv1)
    w1=wave[ikeep]
    s1=spec[ikeep]
    e1=error[ikeep]
    
    for igeom=0,ngeom-1 do begin
    wave1[igeom,*]=w1[igeom]
    spec1[igeom,*]=s1[igeom]
    error1[igeom,*]=e1[igeom]
    endfor
    
    wave=wave1
    spec=spec1
    error=error1
    angles=angles[*,ikeep]
    endif
    
    help,angles
    
    ekeep=where(angles(3,*) le emm_max)
    if ekeep[0] ge 0 then begin
    ngeom=n_elements(ekeep)/nav
    ngeom=fix(ngeom)
    wave=wave[ekeep,*]
    spec=spec[ekeep,*]
    error=error[ekeep,*]
    xlat=mean(angles[0,ekeep])
    xlon=mean(angles[1,ekeep])
    
    zwritespx,98,fwhm_n,xlat,xlon,ngeom,nconv,nav,wave,angles,spec,error
    ;close,98
    lat=xlat
    lon=xlon
    endif
    if ekeep[0] eq -1 then lat=999
    close,98
endif
endwhile

free_lun,lun
close,/all

fin:
return
end
