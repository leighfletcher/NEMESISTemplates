pro znem_aprfile,root,var,iplanet,clen,p_OD1,top_Terr,parah2_err,make,fH2include,const

fH2include='n' 



if iplanet eq 5 then begin
;ph3vmr=[1.86e-6,1e-6]
ph3vmr=[2e-6,1e-10]
ph3fsh=[0.3,1.0]
ph3knee=0.7

nh3vmr=[2e-4,1e-4]
nh3fsh=[0.15,1.0]
nh3knee=0.8

ph3knee_fit=[1.0,1.0]

endif

if iplanet eq 6 then begin
ph3vmr=[6.4e-6,1e-6]
ph3fsh=[0.27,0.3]
;ph3fsh=[0.168,1e-10]
ph3knee=1.3
ph3knee=0.55

nh3knee=1.0
nh3vmr=[1.0e-4,1e-4]
nh3fsh=[0.1,1.0]

ph3knee_fit=[0.55,1.0]

endif

if iplanet eq 7 then begin
ph3vmr=[6.1e-6,1e-5]
ph3fsh=[0.27,0.3]
nh3knee=1.0
nh3vmr=[1.04e-4,1e-10]
nh3fsh=[0.07,0.2]
ph3knee=0.55
ph3knee_fit=[0.55,0.5]

endif

if iplanet eq 8 then begin
ph3vmr=[6.1e-6,1e-5]
ph3fsh=[0.27,0.3]
nh3knee=1.0
nh3vmr=[1.04e-4,1e-10]
nh3fsh=[0.07,0.2]
ph3knee=0.55
ph3knee_fit=[0.55,0.5]

endif
;if (iplanet eq 13) then root='hd209458b'
;if (iplanet eq 12) then root='hd189733b'





ref_file=strcompress(root+'.ref',/remove_all)

nvar=n_elements(var)
aprfile=strcompress(root + '.apr',/remove_all)
openw, lun, aprfile, /get_lun
printf,lun,'*******Apriori File*******'
printf,lun,nvar

for ivar=0,nvar-1 do begin
    ; Continous temperature profile.
    if (var[ivar] eq '0') then begin
        printf,lun,'0 0 0 - Temperature'
        tempaprfile='tempapr.dat'
        printf,lun,tempaprfile
        ; Make a apr.dat file from the reference file.
        print,'Making tempapr.dat'
        if make eq 1 then make_temp_apriori_sub,ref_file,top_Terr,p_OD1,clen,tempaprfile,const
        if make eq 2 then zmake_tapriori,ref_file,top_Terr,p_OD1,clen,tempaprfile,const
    endif
    ; Continuous para-hydrogen profile.
    if (var[ivar] eq '-2') then begin
        printf,lun,'-2 0 0 - Para-hydrogen'
        parah2aprfile='parah2apr.dat'
        printf,lun,parah2aprfile
        ; Make a apr.dat file from the reference file.
        if make eq 1 then make_parah2apr_sub,root,parah2_err,clen,parah2aprfile
        if make eq 2 then zmake_fpapriori,ref_file,parah2_err,clen,parah2aprfile
        fH2include='y'
        fH2_type=0
    endif
      if (var[ivar] eq '-1') then begin
        printf,lun,'-1 0 0 - Aerosol'
        cloudaprfile='cloudapr.dat'
        printf,lun,cloudaprfile
        ; Make a apr.dat file from the reference file.
	  cloud_err=1.0
        if make eq 1 or make eq 2 then make_cloudapr_sub,cloud_err,root,clen,cloudaprfile
    endif
      if (var[ivar] eq '-2c') then begin
        printf,lun,'-2 0 0 - Aerosol'
        cloudaprfile='cloudapr2.dat'
        printf,lun,cloudaprfile
        ; Make a apr.dat file from the reference file.
	  cloud_err=0.25
        if make eq 1 then make_cloudapr_sub,cloud_err,root,clen,cloudaprfile
    endif      
    ; Parameterised cloud profile - needs a non-zero .xsc file.
    if (var[ivar] eq '-1p') then begin
        printf,lun,'-1 0 1 - Cloud Parametric'
        printf,lun,cloudknee
        printf,lun,cloudvmr
        printf,lun,cloudfsh
    endif
    ; Parameterised PH3 profile
    if (var[ivar] eq '28p') then begin
        printf,lun,'28 0 1 - PH3 Parametric'
        printf,lun,ph3knee
        printf,lun,ph3vmr
        printf,lun,ph3fsh
    endif 
     if (var[ivar] eq '28pt') then begin
        printf,lun,'28 0 20 - PH3 Parametric'
        printf,lun,ph3knee,0.1
        printf,lun,ph3vmr
        printf,lun,ph3fsh
    endif    
      if (var[ivar] eq '11pt') then begin
        printf,lun,'11 0 20 - NH3 Parametric'
        printf,lun,nh3knee,0.1
        printf,lun,nh3vmr
        printf,lun,nh3fsh
    endif   
    ; Parameterised CH4 profile
    if (var[ivar] eq '6p') then begin
        printf,lun,'6 0 1 - CH4 Parametric'
        ch4knee=1.0
        ch4vmr=[1e-3,1e-3]
        ch4fsh=[0.5,1.0]
        printf,lun,ch4knee
        printf,lun,ch4vmr
        printf,lun,ch4fsh
    endif    
    if (var[ivar] eq '28p4') then begin
        printf,lun,'28 0 4 - PH3 Parametric'
        printf,lun,ph3knee_fit
        printf,lun,ph3vmr
        printf,lun,ph3fsh
    endif
    ; Parameterised NH3 profile.
    if (var[ivar] eq '11p') then begin
        printf,lun,'11 0 1 - NH3 Parametric'
        printf,lun,nh3knee
        printf,lun,nh3vmr
        printf,lun,nh3fsh
    endif
    
    if (var[ivar] eq '111p') then begin
        printf,lun,'11 1 1 - NH3 Parametric'
        printf,lun,nh3knee
        printf,lun,nh3vmr
        printf,lun,nh3fsh
    endif
    if (var[ivar] eq '111pt') then begin
        printf,lun,'11 1 20 - NH3 Parametric'
        printf,lun,nh3knee,0.1
        printf,lun,nh3vmr
        printf,lun,nh3fsh
    endif

    
        ; Scaled NH3 profile.
    if (var[ivar] eq '11s') then begin
        printf,lun,'11 0 3 - NH3 Scaled'
        printf,lun,'1.0 0.2'
    endif
    if (var[ivar] eq '11c') then begin
        printf,lun,'11 0 11 - NH3 Condense'
        printf,lun,nh3vmr
        printf,lun,'1.0 1.0'
        printf,lun,1 ;read flag to say if you want the RH to apply at all levels (0)
;                                  or only above the condensation level (1)
    endif
           
    ; Scaled NH3 profile.
    if (var[ivar] eq '111s') then begin
        printf,lun,'11 1 3 - 14NH3 Scaled'
        printf,lun,'1.0 1.0'
    endif      
    ; Scaled NH3 profile.
    if (var[ivar] eq '112s') then begin
        printf,lun,'11 2 3 - 15NH3 Scaled'
        printf,lun,'1.0 1.0'
    endif 
    if (var[ivar] eq '2p') then begin
        printf,lun,'2 0 7 - CO2 Scaled'
        printf,lun,'0.001'
        printf,lun,'1.0e-7 1.0e-7'
        printf,lun,'1.0 1.0'
    endif 
      if (var[ivar] eq '1p') then begin
        printf,lun,'1 0 7 - H2O Parameter'
        printf,lun,'0.001'
        printf,lun,'1.0e-3 1.0e-3'
        printf,lun,'1.0 1.0'
    endif   
    
    
    if (var[ivar] eq '2') then begin
        printf,lun,'2 0 0 - CO2 Profile'
        outfile='co2apr.dat'
        printf,lun,outfile 
        readprf,ref_file,iplanet,latitude,ngas,npro,M,idiso,height,press,temp,vmrs
        gasnum=where(idiso[0,*] eq 2 and idiso[1,*] eq 0)
	  error=1.0
	  if make eq 1 then zmake_gasapr,gasnum,ref_file,clen,error,outfile
    endif 
    
     ; Scaled H2 profile.
    if (var[ivar] eq '39s') then begin
        printf,lun,'39 0 3 - H2 Scaled'
        printf,lun,'1.0 1.0'
    endif   
    ; Scaled He profile.
    if (var[ivar] eq '40s') then begin
        printf,lun,'40 0 3 - He Scaled'
        printf,lun,'1.0 1.0'
    endif
    ; Scaled aerosol profile.
    if (var[ivar] eq '-1s') then begin
        printf,lun,'-1 0 3 - Aerosol Scaled'
        printf,lun,'1.0 1.0'
    endif
    ; Scaled aerosol profile.
    if (var[ivar] eq '-2cs') then begin
        printf,lun,'-2 0 3 - Aerosol Scaled'
        printf,lun,'1.0 1.0'
    endif
    ; Scaled aerosol profile.
    if (var[ivar] eq '-3cs') then begin
        printf,lun,'-3 0 3 - Aerosol Scaled'
        printf,lun,'1.0 1.0'
    endif    
    ; Scaled PH3 profile.
    if (var[ivar] eq '28s') then begin
        printf,lun,'28 0 3 - PH3 Scaled'
        printf,lun,'1.0 0.2'
    endif
    ; Parameterised PH3 profile
    if (var[ivar] eq '28') then begin
      printf,lun,'28 0 0 - PH3 Profile'
	outfile='ph3apr.dat'
      printf,lun,outfile 
      ;readprf,ref_file,iplanet,latitude,ngas,npro,M,idiso,height,press,temp,vmrs
      zreadref,ref_file,iform,nlat,nplanet,xlat,npro,ngas,molwt,idiso,height,$
        press,temp,vmr
      gasnum=where(idiso[0,*] eq 28 and idiso[1,*] eq 0)
	error=1.0
	if make eq 1 or make eq 2 then zmake_gasapr,gasnum,ref_file,clen,error,outfile
    endif
    if (var[ivar] eq '33') then begin
        printf,lun,'33 0 0 - GeH4 Profile'
	outfile='geh4apr.dat'
      printf,lun,outfile 
      readprf,ref_file,iplanet,latitude,ngas,npro,M,idiso,height,press,temp,vmrs
      gasnum=where(idiso[0,*] eq 33 and idiso[1,*] eq 0)
	error=1.0
	if make eq 1 then zmake_gasapr,gasnum,ref_file,clen,error,outfile
    endif
    if (var[ivar] eq '11') then begin
        printf,lun,'11 0 0 - NH3 Profile'
	outfile='nh3apr.dat'
      printf,lun,outfile 
      ;readprf,ref_file,iplanet,latitude,ngas,npro,M,idiso,height,press,temp,vmrs
      zreadref,ref_file,iform,nlat,nplanet,xlat,npro,ngas,molwt,idiso,height,$
        press,temp,vmr
      gasnum=where(idiso[0,*] eq 11 and idiso[1,*] eq 0)
	error=1.0
	if make eq 1 or make eq 2 then zmake_gasapr,gasnum,ref_file,clen,error,outfile
    endif    
    
      if (var[ivar] eq '41') then begin
        printf,lun,'41 0 0 - AsH3 Profile'
	outfile='ash3apr.dat'
      printf,lun,outfile 
      readprf,ref_file,iplanet,latitude,ngas,npro,M,idiso,height,press,temp,vmrs
      gasnum=where(idiso[0,*] eq 41 and idiso[1,*] eq 0)
	error=1.0
	if make eq 1 then zmake_gasapr,gasnum,ref_file,clen,error,outfile
    endif    
      
    if (var[ivar] eq '1') then begin
        printf,lun,'1 0 0 - H2O Profile'
	outfile='h2oapr.dat'
      printf,lun,outfile 
      readprf,ref_file,iplanet,latitude,ngas,npro,M,idiso,height,press,temp,vmrs
      gasnum=where(idiso[0,*] eq 1 and idiso[1,*] eq 0)
	error=1.0
	if make eq 1 then zmake_gasapr,gasnum,ref_file,clen,error,outfile
    endif    
        
    if (var[ivar] eq '5') then begin
        printf,lun,'5 0 0 - CO Profile'
	outfile='coapr.dat'
      printf,lun,outfile 
      readprf,ref_file,iplanet,latitude,ngas,npro,M,idiso,height,press,temp,vmrs
      gasnum=where(idiso[0,*] eq 5 and idiso[1,*] eq 0)
	error=1.0
	if make eq 1 then zmake_gasapr,gasnum,ref_file,clen,error,outfile
    endif    
        
        if (var[ivar] eq '6') then begin
        printf,lun,'6 0 0 - CH4 Profile'
	outfile='ch4apr.dat'
      printf,lun,outfile 
      readprf,ref_file,iplanet,latitude,ngas,npro,M,idiso,height,press,temp,vmrs
      gasnum=where(idiso[0,*] eq 6 and idiso[1,*] eq 0)
	error=1.0
	if make eq 1 then zmake_gasapr,gasnum,ref_file,clen,error,outfile
    endif    
    
       
           if (var[ivar] eq '6b') then begin
        printf,lun,'6 2 0 - 13ch4 Profile'
	outfile='13ch4apr.dat'
      printf,lun,outfile 
      readprf,ref_file,iplanet,latitude,ngas,npro,M,idiso,height,press,temp,vmrs
      gasnum=where(idiso[0,*] eq 6 and idiso[1,*] eq 2)
	error=1.0
	if make eq 1 then zmake_gasapr,gasnum,ref_file,clen,error,outfile
    endif    
    
       if (var[ivar] eq '6c') then begin
        printf,lun,'6 3 0 - CH3D Profile'
	outfile='ch3dapr.dat'
      printf,lun,outfile 
      readprf,ref_file,iplanet,latitude,ngas,npro,M,idiso,height,press,temp,vmrs
      gasnum=where(idiso[0,*] eq 6 and idiso[1,*] eq 3)
	error=1.0
	if make eq 1 then zmake_gasapr,gasnum,ref_file,clen,error,outfile
    endif    
        
       
       
     if (var[ivar] eq '27') then begin
        printf,lun,'27 0 0 - C2H6 Profile'
	outfile='c2h6apr.dat'
        printf,lun,outfile
	zreadref,ref_file,iform,nlat,nplanet,xlat,npro,ngas,molwt,idiso,height,$
        press,temp,vmrs        
	gasnum=where(idiso[0,*] eq 27 and idiso[1,*] eq 0)

	error=0.3
	if make ge 1 then zmake_gasapr,gasnum,ref_file,clen,error,outfile    
    endif      
    if (var[ivar] eq '26') then begin
        printf,lun,'26 0 0 - C2H2 Profile'
	outfile='c2h2apr.dat'
        printf,lun,outfile
    	zreadref,ref_file,iform,nlat,nplanet,xlat,npro,ngas,molwt,idiso,height,$
        press,temp,vmrs        
	gasnum=where(idiso[0,*] eq 26 and idiso[1,*] eq 0)
	error=0.3
	if make ge 1 then zmake_gasapr,gasnum,ref_file,clen,error,outfile    
    endif    
    if (var[ivar] eq '26s') then begin
        printf,lun,'26 0 3 - C2H2 Scaled'
        printf,lun,'1.0 0.2'
    endif
    
    
    if (var[ivar] eq '26p') then begin
        printf,lun,'26 0 18 - C2H2 Parameterised'
        printf,lun,'0.000050'
        printf,lun,'1.0e-5 1.0e-10'
        printf,lun,'1.0 1.0'
    endif
    if (var[ivar] eq '27p') then begin
        printf,lun,'27 0 18 - C2H6 Parameterised'
        printf,lun,'0.000100'
        printf,lun,'1.0e-5 1.0e-10'
        printf,lun,'1.0 1.0'
    endif
    if (var[ivar] eq '27s') then begin
        printf,lun,'27 0 3 - C2H6 Scaled'
        printf,lun,'1.0 0.2'
    endif 
     if (var[ivar] eq '32s') then begin
        printf,lun,'32 0 3 - C2H4 Scaled'
        printf,lun,'1.0 1.0'
    endif            
     if (var[ivar] eq '23s') then begin
        printf,lun,'23 0 3 - HCN Scaled'
        printf,lun,'1.0 1.0'
    endif        
    if (var[ivar] eq '34s') then begin
        printf,lun,'34 0 3 - C3H8 Scaled'
        printf,lun,'1.0 1.0'
    endif    
     if (var[ivar] eq '30s') then begin
        printf,lun,'30 0 3 - C4H2 Scaled'
        printf,lun,'1.0 0.2'
    endif        
    if (var[ivar] eq '42s') then begin
        printf,lun,'42 0 3 - C3H4 Scaled'
        printf,lun,'1.0 0.2'
    endif   
    if (var[ivar] eq '41s') then begin
        printf,lun,'41 0 3 - AsH3 Scaled'
        printf,lun,'1.0 1.0'
    endif
    if (var[ivar] eq '5s') then begin
        printf,lun,'5 0 3 - CO Scaled'
        printf,lun,'1.0 1.0'
    endif        
    if (var[ivar] eq '1s') then begin
        printf,lun,'1 0 3 - H2O Scaled'
        printf,lun,'1.0 1.0'
    endif    
    if (var[ivar] eq '33s') then begin
        printf,lun,'33 0 3 - GeH4 Scaled'
        printf,lun,'1.0 1.0'
    endif    
    if (var[ivar] eq '31s') then begin
        printf,lun,'31 0 3 - HC3N Scaled'
        printf,lun,'1.0 1.0'
    endif    
    if (var[ivar] eq '6s') then begin
        printf,lun,'6 0 3 - CH4 Scaled'
        printf,lun,'1.0 1.0 - CH4 Scale'
    endif
    
    
    if (var[ivar] eq '6as') then begin
        printf,lun,'6 1 3 - CH4 Scaled'
        printf,lun,'1.0 1.0 - CH4 Scale'
    endif
    if (var[ivar] eq '6bs') then begin
        printf,lun,'6 2 3 - 13CH4 Scaled'
        printf,lun,'1.0 1.0 - 13CH4 Scale'
    endif
    if (var[ivar] eq '6cs') then begin
        printf,lun,'6 3 3 - CH3D Scaled'
        printf,lun,'1.0 1.0 - CH3D Scale'
    endif
    if (var[ivar] eq '2s') then begin
        printf,lun,'2 0 3 - CO2 Scaled'
        printf,lun,'1.0 1.0'
    endif
    if (var[ivar] eq '49s') then begin
        printf,lun,'49 0 3 - C6H6 Scaled'
        printf,lun,'1.0 1.0'
    endif
    
    if (var[ivar] eq '-2s') then begin
        printf,lun,'-2 0 2 - Para-hydrogen scaled'
        ;parah2aprfile='parah2apr.dat'
        printf,lun,parah2_scale_err
        fH2include='y'
    endif    
    if (var[ivar] eq '555') then begin
        printf,lun,'555 0 0 - Radius'
        printf,lun,'500.0 500.0'

    endif
endfor
free_lun, lun


return
end
