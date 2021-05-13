; ####################################################
; ####################################################
; ##############       NEMESIS      ##################
; ####################################################
; ####################################################

planet=5		                      ; Planet 5-8.
obs='visir'	                      ; Title for retrievals
wvr=[10,1400]  	          ; Wavelength range to fit.
fmerror=0.0e-9	                      ; Forward-Modelling Error
ref_file='jupiter_v2021.ref'    ; Reference Atmosphere
xscfile='10mu_800mbar_04scale_04.xsc' 	                ; Aerosol cross section from Makephase
aerfile='10mu_800mbar_04scale_04.aer*' 	                ; Aerosol REF file from Dust_Profile
resol	=0.0                             ; Spectral resolution flag for ktables
wstep=1.0                               ; Wavenumber step for synthetic spectra
var=['26s']           ; Variables to fit (see manual and znem_aprfile)

; Path to spectra
spxsearch='/data/nemesis/lnf2/NEMESISTemplates/VISIRJupiter/visir_template.spx'   		  
instr	=	'visir'  	                ; CIRS, VIMS, MIRSI, COMICS, VISIR
searchdir=''                            ; Directory for previous retrieval (if 2-stage)

iform=0     ; Output format: 0 = radiance;
            ;1 = F_plan/F_star
            ;2 = 100*A_plan/A_star
            ;3 = planet spectral flux i.e. F_plan

; Flags for this specific retrieval run
synth=0         ; 1= Compute synthetic spectra.
nspx_override=0 ; Set to > 0 to prevent retrieving all at once.
ioff_start=1    ; Usually start sat file number 1.
subpre=0        ; 1: Use profiles and errors from prev. retrieval
subapr=0        ; 1: Use a priori from previous retrieval      
nit=0          ; Number of Nemesis iterations
filters=''      ; Link to a filter file if neccessary
solar_ref=''    ; Link to a solar file if neccessary


; Set variables specific to the parameters retrieved:
top_Terr=10                     ; A priori T error at top of atmosphere (K)
const=1
p_OD1=1.0                       ; Optical depth at 1 bar (if clouds used)
clen=1.5                       ; A priori correlation length
parah2_err=0.03                 ; A priori error on fH2 profile
layht=-80.                     ; Bottom layer for *set file, always >= base layer in PRF file.
laytyp=1

; CIRS-specific ktable flags
spike=0				  ; 1 = remove 8 Hz spike from CIRS spectra
hamm=0				  ; 1 = use Hamming function ktables.
emm_max=90.0			  ; Maximum emission angle to fit.
cirsfpb=0                       ; 1 = using CIRS FP3 and 4 together

; CIA Table inputs
ciafile='dimers_ff_fb_bb_dnu1.0.tab'
dnu_cia=1.0 ; Wavenumber step of CIA file
numpara=24  ; Number of para-fractions in CIA file (12 or 24).

; Various Nemesis Flags:
ispace=0	; ISPACE=1 (wavelength), 0 (wavenumber)
iscat=0	; ISCAT =0 (thermal) =1 (scattering)        
ilbl = 0    ; Line by line calculations
sun=0		; Sunlight on(1) or off(0)
inormal=0   ; Equilibrium ortho/para (0) or normal (3:1, 1)
iray=1      ; Rayleigh optical depths off (0), gas giant (1),CO2(2),N2-O2 (>2)  
ih2o=0      ; Additional H2O continuum on (1) or off (0)
ich4=0      ; Additional CH4 continuum on (1) or off (0)
io3=0       ; Additional O3 continuum on (1) or off (0)
inh3=0
iptf=0      ; Only set to 1 if using high-T CH4 partition function
imie=0      ; Set to 0 to use hgphase.dat, 1 to compute from Mie theory.
icxhy=0

; ####################################################
; ####################################################
; ####################################################
; ####################################################
; CODE

root='nemesis'

files=file_search(spxsearch)
print,files,spxsearch
nspx=n_elements(files)
if (nspx_override gt 0) then nspx=nspx_override
if synth eq 1 then nspx=1

print,'File contains ',nspx,' spectra.'

; Generate para-hydrogen reference file:
znem_fpara,ref_file,inormal

istep=1 ; Counter for the directory cleaning

for ioff=ioff_start,nspx do begin
    print,'Preparing spectrum: ',ioff
    
    ; For each spectrum, set up a temporary working directory.

    tmpdir=strcompress('core_'+string(ioff),/remove_all)
    spawn,'mkdir '+tmpdir
    cd,tmpdir
    $pwd
    
    spawn,strcompress('\cp ../'+string(xscfile)+' '+root+'.xsc')
    spawn,strcompress('\cp ../'+string(aerfile)+' aerosol.ref')
    spawn,strcompress('\cp ../'+string(ref_file)+' '+root+'.ref')
    spawn,strcompress('\cp ../'+string(ref_file)+' '+root+'.prf')
    spawn,strcompress('\cp ../parah2.ref parah2.ref')
    spawn,strcompress('\cp ../'+string(filters)+' '+root+'.fil')
    prffile=strcompress(root+'.prf',/remove_all)
    prefile=strcompress(root+'.pre',/remove_all)
    mrefile=strcompress(root+'.mre',/remove_all)
    rawfile=strcompress(root+'.raw',/remove_all)
    namfile=strcompress(root+'.nam',/remove_all)
    reffile=strcompress(root+'.ref',/remove_all)
    if instr eq 'exo' then begin
        openw,1,root+'.sol'
        printf,1,solar_ref
        close,1
    endif

    ; For synthetic spectra, generate a template spectrum.
    if (synth eq 1) then begin
        nit=0  ; Number of Nemesis iterations
        znem_template,wvr,resol,wstep
    endif

    ; Make the .nam file
    znem_namfile,root

    ; Make the .abo file
    znem_abofile,root
    

    make=2
    znem_aprfile,root,var,planet,clen,p_OD1,top_Terr,parah2_err,make,fH2include,const

    ; Create forward modelling error file
    ; Sometimes ignore this if you want to set up a more complex fmerror.dat
    print,'ISPACE: ',ispace
    znem_fmerror,ispace,fmerror

    ; Create the list of ktables
    znem_klsfile,root,resol,instr,hamm

   ; Create the scattering setup file
    znem_setfile,planet,root,iscat,sun,layht,laytyp

    ; Create the cia file
    znem_ciafile,root,ciafile,dnu_cia,numpara

    ; Create the flags file
    znem_flafile,root,inormal,iray,ih2o,ich4,io3,inh3,iptf,imie,icxhy

    ; Create fractional cloud cover file
    ncloud=1
    znem_fcloud_new,reffile,ncloud    

    ; Make the input file .inp.
    ns=1    ; Only change these if selecting different spx to fit.
    znem_inpfile,root,ispace,iscat,ilbl,nit,subpre,ns,ioff,iform
    
    if synth eq 1 then spxfile='template.spx'
    if synth eq 0 then spxfile=files[ioff-1]
    
    openw,lun,'logfile',/get_lun
    printf,lun,obs,ioff
    printf,lun,spxfile
    printf,lun,systime()
    free_lun,lun
    
    znem_cutspx,spxfile,1,root,lat,lon,wvr,spike,hamm,emm_max,cirsfpb
    
    spxfile= strcompress(root + '.spx',/remove_all)
    
    
    ; **************************************
    ; Adjusting Errors (Extra Code)
    
   ;openr,lun,spxfile,/get_lun
   ;zreadspx,lun,fwhm,xlat,xlon,ngeom,nconv,nav,wave,angles,spec,error
   ;free_lun, lun
   ;
   ;error=0.05*spec
   ;
   ;openw,lun,spxfile,/get_lun
   ;zwritespx,lun,fwhm,xlat,xlon,ngeom,nconv,nav,wave,angles,spec,error
   ;free_lun, lun
    
   ;;
   ;;openw,lun,'fmerror.dat',/get_lun	 
   ;;fm_w=[5.0,600.,600.,1100.,1100.,1200.,1200.,1370.,1370.,1500.]
   ;;fmerrors=fltarr(2,n_elements(fm_w))
   ;;fmerrors[0,*]=fm_w
   ;;fmerrors[1,*]=replicate(0.5e-9,n_elements(fm_w))
   ;;fmerrors[1,0:1]=2.0e-9 ; FP1 error
   ;;
   ;;
   ;;k=where(wave ge 1290. and wave le 1310.)
   ;;mwave=mean(spec(k))
   ;;print,mwave
   ;;fmerrors[1,6:7]=min([1e-10,0.05*mwave])
   ;;
   ;;
   ;;printf,lun,n_elements(fm_w)
   ;;printf,lun,fmerrors
   ;;free_lun, lun
   ;;
   ;;
   ;;
   ;;openr,lun,spxfile,/get_lun
   ;;zreadspx,lun,fwhm,xlat,xlon,ngeom,nconv,nav,wave,angles,spec,error
   ;;free_lun, lun
; **************************************

    ; Obtain a .raw file
    if (subpre gt 0 or subapr ge 1) then getraw_sub,lat,searchdir,prefile
    if (subpre eq 0 and subapr eq 1) then raw2apr_0_sub,prefile,prffile,clen,top_Terr,parah2_err
        
    cd,'..'
        
endfor


print,'Nemesis Run Prepped, Upload to HPC'


openw,1,'submitjob'
printf,1,'#!/bin/bash'
printf,1,'#'
printf,1,'#PBS -N Nemesis'
printf,1,'#PBS -l walltime=00:60:00'
printf,1,'#PBS -l vmem=4gb'
;printf,1,'#PBS -m bea'
;printf,1,'#PBS -M lnf2@le.ac.uk'
printf,1,'#PBS -l nodes=1:ppn=1'
txt=strcompress('1-'+string(nspx),/remove_all)
printf,1,'#PBS -t ',txt
printf,1,'export PATH=~/bin/ifort:$PATH'
printf,1,'cd $PBS_O_WORKDIR'
printf,1,'inputdir=core_${PBS_ARRAYID}'
printf,1,'cd $inputdir'
printf,1,'Nemesis < nemesis.nam > log_${PBS_ARRAYID}'
close,1

end
