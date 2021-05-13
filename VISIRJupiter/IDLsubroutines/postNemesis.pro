; ####################################################
; ####################################################
; ##############       Post NEMESIS ##################
; ####################################################
; ####################################################

obs=''

print,'Enter observation name'
read,obs

ans=''
print,'Save All? [y/n]'
read,ans

root='nemesis'
;instr='cirs'
savfh2=0
savraw=0
savaer=0
saveps=1
if ans eq 'n' then savall=0
if ans eq 'y' then savall=1



; Generate top-level directories to save outputs.
spawn,'mkdir mrefiles'
spawn,'mkdir prffiles'
spawn,'mkdir logfiles'
if savfh2 eq 1 then spawn,'mkdir fh2files'
if savraw eq 1 then spawn,'mkdir rawfiles'
if savaer eq 1 then spawn,'mkdir aerfiles'
if saveps eq 1 then spawn,'mkdir epsfiles'

spawn,'ls -d core*',list

for icore=0,n_elements(list)-1 do begin
    res=strsplit(list[icore],'_/',/extract)
    j=res[1]

    ; Set up the names of files to be saved
    mre=strcompress('mrefiles/'+string(obs)+'_'+string(j)+'.mre',/remove_all)
    prf=strcompress('prffiles/'+string(obs)+'_'+string(j)+'.prf',/remove_all)
    log=strcompress('logfiles/'+string(obs)+'_'+string(j)+'.log',/remove_all)
    fh2=strcompress('fh2files/'+string(obs)+'_'+string(j)+'.fh2',/remove_all)
    raw=strcompress('rawfiles/'+string(obs)+'_'+string(j)+'.raw',/remove_all)
    aer=strcompress('aerfiles/'+string(obs)+'_'+string(j)+'.aer',/remove_all)
    eps=strcompress('epsfiles/'+string(obs)+'_'+string(j)+'.eps',/remove_all)
    
    ; Automatically save the mre, prf and log files.
    r=file_test(list[icore]+'/nemesis.mre')
    if r eq 0 then goto,next
    nl=file_lines(list[icore]+'/nemesis.mre')
    if nl le 1 then goto,next
    
   ; t=file_lines(strcompress('Nemesis.e3052914-'+string(j),/remove_all))
   ; if t ge 1 then goto,next
    
    
    
    
    if r eq 1 and nl gt 1 then spawn,'\cp '+list[icore]+'/nemesis.mre '+mre
    spawn,'\cp '+list[icore]+'/nemesis.prf '+prf
    cd,list[icore]
    spawn,'grep chisq log_* > tmp.dat'    
    spawn,'grep Elapsed log_* > tmp2.dat'
    spawn,'cat logfile tmp.dat tmp2.dat > nemesis.log'
    
    ; Generate plots and save if desired.
    if saveps eq 1 then begin
        zscanmre_gb,root
        ;if instr eq 'mirsi' or instr eq 'mirlin' $
        ;    or instr eq 'comics' or instr eq 'visir' then zscanmre_gb,root
        ;if instr eq 'exo' then zscanmre_exo,root
    endif
    
    ;if synth eq 1 or savspx eq 1 then begin
    ;    spxoutfile=strcompress(string(obs)+'_'+string(ioff)+'.spx',/remove_all)
    ;    noise=1
    ;    fwerr=0
    ;    znem_mre2spx,noise,root,spxoutfile,fwerr
    ;endif
    
    
    cd,'..'
    spawn,'\cp '+list[icore]+'/nemesis.log '+log
    
    if savfh2 eq 1 then spawn,'\cp '+list[icore]+'/parah2.prf '+fh2
    if savaer eq 1 then spawn,'\cp '+list[icore]+'/aerosol.prf '+aer
    if savraw eq 1 then spawn,'\cp '+list[icore]+'/nemesis.raw '+raw
    if saveps eq 1 then spawn,'\cp '+list[icore]+'/nemesis.ps '+eps

    next:
    ; Clean out the directories once files have been saved.
    close,/all
    if savall ne 1 then spawn,'\rm -r '+list[icore]
    if savall ne 1 then print,'Deleted: '+list[icore]
    
endfor

print,'Nemesis run CLEANED!'

end
