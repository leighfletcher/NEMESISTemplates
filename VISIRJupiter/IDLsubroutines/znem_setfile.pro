pro znem_setfile,iplanet,root,iscat,sun,layht,laytyp


;laytyp followed by an integer specifying the layering type.
;0=split by equal changes in pressure over layers 
;1=split by equal changes in log pressure over layers
;2=split by equal changes in height over layers 
;3=split by equal changes in path length at layang over layers

setfile=strcompress(root+'.set',/remove_all)


if iplanet eq 5 then dist=5.2
if iplanet eq 6 then dist=9.546
if iplanet eq 11 then dist=9.546 ; Titan
if iplanet eq 7 then dist=19.2
if iplanet eq 8 then dist=30.0
if iplanet eq 13 then dist=0.045



file=strcompress(root+'.ref',/remove_all)

;readprf,file,iplanet,latitude,ngas,npro,M,idiso,height,press,temp,vmrs

zreadref,file,iform,nlat,nplanet,xlat,npro,ngas,molwt,idiso,height,$
press,temp,vmr

ref=value_locate(height,layht)



openw,1,setfile
printf,1,'*********************************************************'			  
printf,1,' Number of zenith angles :  5 			   '
printf,1,'  0.165278957666387       0.327539761183898     	   '
printf,1,'  0.477924949810444       0.292042683679684     	   '
printf,1,'  0.738773865105505       0.224889342063117     	   '
printf,1,'  0.919533908166459       0.133305990851069     	   '
printf,1,'   1.00000000000000       2.222222222222220E-002	   '
printf,1,' Number of fourier components :  1			   '
printf,1,' Number of azimuth angles for fourier analysis : 100	   '
printf,1,' Sunlight on(1) or off(0) : ',sun
printf,1,' Distance from Sun (AU) : ',dist
printf,1,' Lower boundary cond. Thermal(0) Lambert(1) :',iscat
printf,1,' Ground albedo :   0.000				   '
printf,1,' Surface temperature : ',temp[ref]
printf,1,'*********************************************************'			  
printf,1,' Alt. at base of bot.layer (not limb) : ',layht
printf,1,' Number of atm layers :  ',npro
printf,1,' Layer type :  ',laytyp
printf,1,' Layer integration :  1				   '
printf,1,'*********************************************************' 
close,1
return
end
