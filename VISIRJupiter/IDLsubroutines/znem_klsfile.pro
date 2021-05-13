pro znem_klsfile,root,resol,instr,hamm


klsfile=strcompress(root + '.kls',/remove_all)
openw,lun,klsfile,/get_lun


if instr eq 'jiram' then begin

printf,lun,'/data/nemesis/specdata/ktables/jiram/ktab_4/ch3d.kta'
printf,lun,'/data/nemesis/specdata/ktables/jiram/ktab_8/h2o.kta'
printf,lun,'/data/nemesis/specdata/ktables/jiram/ktab_9/co.kta'
printf,lun,'/data/nemesis/specdata/ktables/jiram/ktab_7/ash3.kta'
printf,lun,'/data/nemesis/specdata/ktables/jiram/ktab_2/ph3.kta'
printf,lun,'/data/nemesis/specdata/ktables/jiram/ktab_5/ch4_13C.kta'
printf,lun,'/data/nemesis/specdata/ktables/jiram/ktab_6/co2.kta'
printf,lun,'/data/nemesis/specdata/ktables/jiram/ktab_10/ch4.kta'
printf,lun,'/data/nemesis/specdata/ktables/jiram/ktab_3/nh3_all.kta'
printf,lun,'/data/nemesis/specdata/ktables/jiram/ktab_1/geh4.kta'

endif


if instr eq 'miri_mrs3' then begin

;printf,lun,'/data/nemesis/specdata/ktables/miri/mrs/ktab_1/ch4.kta'
;printf,lun,'/data/nemesis/specdata/ktables/miri/mrs/ktab_2/ch4.kta'
;printf,lun,'/data/nemesis/specdata/ktables/miri/mrs/ktab_3/ch4.kta'
printf,lun,'/data/nemesis/specdata/ktables/miri/mrs/ktab_4/ch4.kta'
;printf,lun,'/data/nemesis/specdata/ktables/miri/mrs/ktab_5/ch4.kta'
;printf,lun,'/data/nemesis/specdata/ktables/miri/mrs/ktab_6/ch4.kta'
;printf,lun,'/data/nemesis/specdata/ktables/miri/mrs/ktab_7/ch4.kta'
;printf,lun,'/data/nemesis/specdata/ktables/miri/mrs/ktab_8/ch4.kta'
;printf,lun,'/data/nemesis/specdata/ktables/miri/mrs/ktab_9/ch4.kta'
;printf,lun,'/data/nemesis/specdata/ktables/miri/mrs/ktab_10/ch4.kta'
;printf,lun,'/data/nemesis/specdata/ktables/miri/mrs/ktab_11/ch4.kta'
;printf,lun,'/data/nemesis/specdata/ktables/miri/mrs/ktab_12/ch4.kta'
printf,lun,'/data/nemesis/specdata/ktables/miri/mrs2/jwstmrs3_c2h2.kta'  
printf,lun,'/data/nemesis/specdata/ktables/miri/mrs2/jwstmrs3_c2h6.kta'  
printf,lun,'/data/nemesis/specdata/ktables/miri/mrs2/jwstmrs3_ch4_13C.kta'  
;printf,lun,'/data/nemesis/specdata/ktables/miri/mrs2/jwstmrs3_nh3_all.kta'
printf,lun,'/data/nemesis/specdata/ktables/miri/mrs2/jwstmrs3_c2h4.kta'  
printf,lun,'/data/nemesis/specdata/ktables/miri/mrs2/jwstmrs3_ch3d.kta'  
printf,lun,'/data/nemesis/specdata/ktables/miri/mrs2/jwstmrs3_h2.kta'	    
;printf,lun,'/data/nemesis/specdata/ktables/miri/mrs2/jwstmrs3_ph3.kta'


endif

if (resol eq 0.5 and instr eq 'cirs' and hamm eq 0) then begin
;	;printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/c2h2ONE_5-1500_0pt5.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/c2h2ZERO_5-1500_0pt5.kta'
;	;printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/c2h2TWO_5-1500_0pt5.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/c2h6ZERO_5-1500_0pt5.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/c2h6ZERO_5-1500_0pt5.kta'
;	;printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/c2h6TWO_5-1500_0pt5.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/ph3ZERO_5-1500_0pt5.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/nh3ZERO_5-1500_0pt5.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/ch4ONE_5-1500_0pt5.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/ch4THREE_5-1500_0pt5.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/ch4TWO_5-1500_0pt5.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/c2h4ZERO_5-1500_0pt5.kta'
;
;	;printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/c2h6_titan_with_nu6/c2h6ZERO_5-1500_0pt5.kta'

;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/c2h2_saturn/c2h2ZERO_5-1500_0pt5.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/c2h4_saturn/c2h4ZERO_5-1500_0pt5.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/c2h6_saturn_va07/c2h6ZERO_5-1500_0pt5.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/c3h4scl/c3h4ZERO_5-1500_0pt5.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/c3h8/c3h8ZERO_5-1500_0pt5.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/c4h2_jolly/c4h2ZERO_5-1500_0pt5.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/ch4_ONE_saturnFIRU/ch4ONE_5-1500_0pt5.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/ch4_THREE_saturnFIRU/ch4THREE_5-1500_0pt5.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/ch4_TWO_saturnFIRU/ch4TWO_5-1500_0pt5.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/nh3_saturn/nh3ZERO_5-1500_0pt5.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/ph3_saturn/ph3ZERO_5-1500_0pt5.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/h2/h2_0.5/h2.kta'


printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/compsit/ktab_1/ph3.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/compsit/ktab_2/nh3_all.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/compsit/ktab_3/c2h6.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/compsit/ktab_4/c2h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/compsit/ktab_5/c2h4.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/compsit/ktab_6/ch4.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/compsit/ktab_7/ch3d.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/compsit/ktab_8/ch4_13C.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/compsit/ktab_9/h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/compsit/ktab_10/c4h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/compsit/ktab_11/c3h4.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/compsit/ktab_12/co2.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/compsit/ktab_13/c3h8.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/compsit/ktab_14/hcn.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/compsit/ktab_15/c6h6.kta'


endif

if (resol eq 0.5 and instr eq 'cirs' and hamm eq 1) then begin
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/ktables_ng20h/ch4_1/ch4_1.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/ktables_ng20h/ch4_2/ch4_2.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/ktables_ng20h/ch4_3/ch4_3.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/ktables_ng20h/ph3/ph3.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/ktables_ng20h/nh3/nh3.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/ktables_ng20h/c2h2/c2h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/ktables_ng20h/c2h6/c2h6.kta'
endif

if (resol eq 2.0) then begin
printf,lun,'/data/nemesis/specdata/ktables/jupiter_jul2012/c2h2/c2h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/jupiter_jul2012/ash3/ash3.kta'
printf,lun,'/data/nemesis/specdata/ktables/jupiter_jul2012/ph3/ph3.kta'
printf,lun,'/data/nemesis/specdata/ktables/jupiter_jul2012/c2h6/c2h6.kta'
printf,lun,'/data/nemesis/specdata/ktables/jupiter_jul2012/ch4/ch4.kta'
printf,lun,'/data/nemesis/specdata/ktables/jupiter_jul2012/nh3/nh3.kta'
endif
 



if (resol eq 2.5 and instr eq 'cirs') then begin
;	printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/c2h2ZERO_5-1500_2pt5.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/c2h4ZERO_5-1500_2pt5.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/c2h6ZERO_5-1500_2pt5.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/ch4ONE_5-1500_2pt5.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/ch4THREE_5-1500_2pt5.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/ch4TWO_5-1500_2pt5.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/nh3ZERO_5-1500_2pt5.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/ph3ZERO_5-1500_2pt5.kta'


;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/c2h2_saturn/c2h2ZERO_5-1500_2pt5.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/c2h4_saturn/c2h4ZERO_5-1500_2pt5.kta'
;   ;printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/c2h6_saturn/c2h6ZERO_5-1500_2pt5.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/c2h6_dilauro2011/c2h6ZERO_5-1500_2pt5.kta'
;   ;printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/c2h6_saturn_va07/c2h6ZERO_5-1500_2pt5.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/c3h4/c3h4ZERO_5-1500_2pt5.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/c3h8/c3h8ZERO_5-1500_2pt5.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/c4h2_jolly/c4h2ZERO_5-1500_2pt5.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/ch4_ONE_saturn/ch4ONE_5-1500_2pt5.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/ch4_THREE_saturn/ch4THREE_5-1500_2pt5.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/ch4_TWO_saturn/ch4TWO_5-1500_2pt5.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/nh3_saturn/nh3ZERO_5-1500_2pt5.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/ph3_saturn/ph3ZERO_5-1500_2pt5.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/h2/h2_2.5/h2.kta'




printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/mirmap/ktab_1/ph3.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/mirmap/ktab_2/nh3_all.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/mirmap/ktab_3/c2h6.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/mirmap/ktab_4/c2h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/mirmap/ktab_5/c2h4.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/mirmap/ktab_6/ch4.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/mirmap/ktab_7/ch3d.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/mirmap/ktab_8/ch4_13C.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/mirmap/ktab_9/h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/mirmap/ktab_10/c4h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/mirmap/ktab_11/c3h4.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/mirmap/ktab_12/co2.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/mirmap/ktab_13/c3h8.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/mirmap/ktab_14/hcn.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/mirmap/ktab_15/c6h6.kta'
;printf,lun,'/data/nemesis/specdata/specdata/ktables/cirs/saturn_nov2017/mirmap/ktab_16/ch4_all.kta'



endif
if (resol eq 15.0 and instr eq 'cirs') then begin
;printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/c2h2ZERO_10-1500_13pt5.kta'
;printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/c2h4ZERO_10-1500_13pt5.kta'
;printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/c2h6ZERO_10-1500_13pt5.kta'
;printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/ch4ONE_10-1500_13pt5.kta'
;printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/ch4THREE_10-1500_13pt5.kta'
;printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/ch4TWO_10-1500_13pt5.kta'
;printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/nh3ZERO_10-1500_13pt5.kta'
;printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/ph3ZERO_10-1500_13pt5.kta'

;  printf,lun,'/data/nemesis/specdata/specdata/ktables/cirs/sat13pt5/c2h2/c2h2.kta'
;  printf,lun,'/data/nemesis/specdata/specdata/ktables/cirs/sat13pt5/ch3d/ch3d.kta'
;  printf,lun,'/data/nemesis/specdata/specdata/ktables/cirs/sat13pt5/ph3/ph3.kta'
;  printf,lun,'/data/nemesis/specdata/specdata/ktables/cirs/sat13pt5/13ch4/13ch4.kta'
;  printf,lun,'/data/nemesis/specdata/specdata/ktables/cirs/sat13pt5/ch4/ch4.kta'
;  printf,lun,'/data/nemesis/specdata/specdata/ktables/cirs/sat13pt5/c2h6/c2h6.kta'
;  printf,lun,'/data/nemesis/specdata/specdata/ktables/cirs/sat13pt5/ch4_all/ch4.kta'
;  printf,lun,'/data/nemesis/specdata/specdata/ktables/cirs/sat13pt5/nh3/nh3.kta'


;printf,lun,'home/jupiter/plan/fletcher/ktables/cirs/saturn_feb2009/c2h2_saturn/c2h2ZERO_10-1500_13pt5.kta'
;printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/c2h4_saturn/c2h4ZERO_10-1500_13pt5.kta'
;printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/c2h6_saturn_va07/c2h6ZERO_10-1500_13pt5.kta'
;printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/c3h4/c3h4ZERO_10-1500_13pt5.kta'
;printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/c3h8/c3h8ZERO_10-1500_13pt5.kta'
;printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/c4h2_jolly/c4h2ZERO_10-1500_13pt5.kta'
;printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/ch4_ONE_saturn/ch4ONE_10-1500_13pt5.kta'
;printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/ch4_THREE_saturn/ch4THREE_10-1500_13pt5.kta'
;printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/ch4_TWO_saturn/ch4TWO_10-1500_13pt5.kta'
;printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/nh3_saturn/nh3ZERO_10-1500_13pt5.kta'
;printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/ph3_saturn/ph3ZERO_10-1500_13pt5.kta'


;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/firmap/ktab_10/co2.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/firmap/ktab_11/c3h8.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/firmap/ktab_12/hcn.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/firmap/ktab_1/ph3.kta'
;   ;printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/firmap/ktab_2/nh3_all.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/firmap/ktab_3/c2h6.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/firmap/ktab_4/c2h2.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/firmap/ktab_5/c2h4.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/firmap/ktab_6/ch4_all.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/firmap/ktab_7/h2.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/firmap/ktab_8/c4h2.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_nov2017/firmap/ktab_9/c3h4.kta'


printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_aug2020/firmap/ktab_7/h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_aug2020/firmap/ktab_4/c2h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_aug2020/firmap/ktab_5/c2h4.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_aug2020/firmap/ktab_12/hcn.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_aug2020/firmap/ktab_1/ph3.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_aug2020/firmap/ktab_8/c4h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_aug2020/firmap/ktab_11/c3h8.kta'
;printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_aug2020/firmap/ktab_6/ch4_all.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_aug2020/firmap/ktab_3/c2h6.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_aug2020/firmap/ktab_9/c3h4.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_aug2020/firmap/ktab_10/co2.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_aug2020/firmap/ktab_2/nh3_all.kta'

printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_aug2020/firmap/methane/ch4.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_aug2020/firmap/methane/ch3d.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_aug2020/firmap/methane/ch4_13C.kta'
















endif

if resol eq 10.0 and instr eq 'cirs' then begin
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/10pt0/c2h2ONE_5-1500_10pt0.kta' 
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/10pt0/c2h2TWO_5-1500_10pt0.kta' 
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/10pt0/c2h2ZERO_5-1500_10pt0.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/10pt0/c2h4ZERO_5-1500_10pt0.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/10pt0/c2h6ONE_5-1500_10pt0.kta' 
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/10pt0/c2h6TWO_5-1500_10pt0.kta' 
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/10pt0/c2h6ZERO_5-1500_10pt0.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/10pt0/c3h4ZERO_5-1500_10pt0.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/10pt0/c3h8ZERO_5-1500_10pt0.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/10pt0/c4h2ZERO_5-1500_10pt0.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/10pt0/ch4ONE_5-1500_10pt0.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/10pt0/ch4THREE_5-1500_10pt0.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/10pt0/ch4TWO_5-1500_10pt0.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/10pt0/nh3ZERO_5-1500_10pt0.kta'
printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_feb2009/10pt0/ph3ZERO_5-1500_10pt0.kta'
endif


if (resol eq 4.3 and instr eq 'iris' and hamm eq 0) then begin
;printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/ch4ONE_5-1500_2pt5.kta'
; Ktables created for Titan but should be good here to start with....
printf,lun,'/data/nemesis/specdata/ktables/iris/c2h2/c2h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/iris/c2h4/c2h4.kta'
printf,lun,'/data/nemesis/specdata/ktables/iris/c4h2/c4h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/iris/c2h6/c2h6.kta'
printf,lun,'/data/nemesis/specdata/ktables/iris/ch4_1/ch4_1.kta'
printf,lun,'/data/nemesis/specdata/ktables/iris/ch4_2/ch4_2.kta'
printf,lun,'/data/nemesis/specdata/ktables/iris/ch4_3/ch4_3.kta'
printf,lun,'/data/nemesis/specdata/ktables/iris/c3h4/c3h4.kta'
endif
if (instr eq 'iris' and (hamm eq 1 or resol eq 0.0)) then begin
;printf,lun,'/data/nemesis/specdata/ktables/cirs/saturn_oct2006/ch4ONE_5-1500_2pt5.kta'
; Ktables created for Titan but should be good here to start with....

printf,lun,'/data/nemesis/specdata/ktables/iris/2012may_hamming/c2h2/c2h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/iris/2012may_hamming/c2h4/c2h4.kta'
printf,lun,'/data/nemesis/specdata/ktables/iris/2012may_hamming/c2h6/c2h6.kta'
printf,lun,'/data/nemesis/specdata/ktables/iris/2012may_hamming/ch4/ch4.kta'
printf,lun,'/data/nemesis/specdata/ktables/iris/2012may_hamming/nh3/nh3.kta'
printf,lun,'/data/nemesis/specdata/ktables/iris/2012may_hamming/ph3/ph3.kta'
printf,lun,'/data/nemesis/specdata/ktables/iris/2012may_hamming/ch3d/ch3d.kta'
printf,lun,'/data/nemesis/specdata/ktables/iris/2012may_hamming/13ch4/13ch4.kta'




endif
if (resol eq 0.025 and instr eq 'vims') then begin
printf,lun,'/data/nemesis/specdata/ktables/vims_feb07/nh3/nh3.kta'
printf,lun,'/data/nemesis/specdata/ktables/vims_feb07/ph3/ph3.kta'
printf,lun,'/data/nemesis/specdata/ktables/vims_feb07/co/co.kta'
printf,lun,'/data/nemesis/specdata/ktables/vims_feb07/h2o/h2o.kta'
printf,lun,'/data/nemesis/specdata/ktables/vims_feb07/ash3/ash3.kta'
printf,lun,'/data/nemesis/specdata/ktables/vims_feb07/geh4/geh4.kta'
printf,lun,'/data/nemesis/specdata/ktables/vims_feb07/ch4_2/ch4_2.kta'
printf,lun,'/data/nemesis/specdata/ktables/vims_feb07/ch4_3/ch4_3.kta'
printf,lun,'/data/nemesis/specdata/ktables/vims_feb07/ch4_1/ch4_1.kta'
endif

if (resol eq 0.016 and instr eq 'vims') then begin
printf,lun,'/data/nemesis/specdata/ktables/vims_aug08/nh3.kta'
printf,lun,'/data/nemesis/specdata/ktables/vims_aug08/ph3.kta'
printf,lun,'/data/nemesis/specdata/ktables/vims_aug08/co.kta'
printf,lun,'/data/nemesis/specdata/ktables/vims_aug08/h2o.kta'
printf,lun,'/data/nemesis/specdata/ktables/vims_aug08/ash3.kta'
printf,lun,'/data/nemesis/specdata/ktables/vims_aug08/geh4.kta'
printf,lun,'/data/nemesis/specdata/ktables/vims_aug08/ch4.kta'
printf,lun,'/data/nemesis/specdata/ktables/vims_aug08/13ch4.kta'
printf,lun,'/data/nemesis/specdata/ktables/vims_aug08/ch3d.kta'

endif

if (resol eq 0.025 and instr eq 'nims') then begin

printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/hires/ash3_40025_52825.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/ash3_30125_52625.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/ash3_09125_15125.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/ash3_15125_25125.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/ash3_25125_30125.kta'
printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/hires/ch3d_40025_52825.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/ch3d_09125_15125.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/ch3d_15125_25125.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/ch3d_25125_30125.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/ch3d_30125_52625.kta'
printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/hires/ch4_40025_52825.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/band/ch4_10875_30125_b.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/ch4_09125_15125.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/ch4_15125_25125.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/ch4_25125_30125.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/ch4_30125_52625.kta'
printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/hires/co_40025_52825.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/co_09125_15125.kta''
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/co_15125_25125.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/co_25125_30125.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/co_30125_52625.kta'
printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/hires/geh4_40025_52825.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/geh4_09125_15125.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/geh4_15125_25125.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/geh4_25125_30125.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/geh4_30125_52625.kta'
printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/hires/h2o_40025_52825.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/h2o_09125_15125.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/h2o_15125_25125.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/h2o_25125_30125.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/h2o_30125_52625.kta'
printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/hires/nh3_40025_52825.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/band/nh3_09375_24625_b.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/band/nh3_27875_33125_b.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/nh3_09125_15125.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/nh3_15125_25125.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/nh3_25125_30125.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/nh3_30125_52625.kta'
printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/hires/ph3_40025_52825.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/ph3_09125_15125.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/ph3_15125_25125.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/ph3_25125_30125.kta'
;printf,lun,'/data/nemesis/specdata/ktables/nims_mar97/lite/ph3_30125_52625.kta'
endif



if (instr eq 'mirsi' or instr eq 'mirlin') then begin
    
  printf,lun,'/data/nemesis/specdata/ktables/mirsi/mirsi_2017nov/ktab_4/c2h2.kta'
  printf,lun,'/data/nemesis/specdata/ktables/mirsi/mirsi_2017nov/ktab_1/ph3.kta'
  printf,lun,'/data/nemesis/specdata/ktables/mirsi/mirsi_2017nov/ktab_6/c2h4.kta'
  printf,lun,'/data/nemesis/specdata/ktables/mirsi/mirsi_2017nov/ktab_5/c2h6.kta'
  printf,lun,'/data/nemesis/specdata/ktables/mirsi/mirsi_2017nov/ktab_3/ch4_all.kta'
  printf,lun,'/data/nemesis/specdata/ktables/mirsi/mirsi_2017nov/ktab_2/nh3_all.kta'
    
    
endif
; COMICS
if (instr eq 'comics') then begin
    printf,lun,'/data/nemesis/specdata/ktables/comics/comics_2019/ktab_6/nh3_all.kta'
    printf,lun,'/data/nemesis/specdata/ktables/comics/comics_2019/ktab_5/ph3.kta'
    printf,lun,'/data/nemesis/specdata/ktables/comics/comics_2019/ktab_4/c2h4.kta'
    printf,lun,'/data/nemesis/specdata/ktables/comics/comics_2019/ktab_2/c2h6.kta'
    printf,lun,'/data/nemesis/specdata/ktables/comics/comics_2019/ktab_1/ch4_all.kta'
    printf,lun,'/data/nemesis/specdata/ktables/comics/comics_2019/ktab_3/c2h2.kta'
endif							    
; VISIR
;if (instr eq 'visir') then begin
;    printf,lun,'/data/nemesis/specdata/ktables/visir/visir_c2h2.kta'
;    printf,lun,'/data/nemesis/specdata/ktables/visir/visir_c2h6.kta'
;    printf,lun,'/data/nemesis/specdata/ktables/visir/visir_ch4.kta'
;    printf,lun,'/data/nemesis/specdata/ktables/visir/visir_nh3.kta'
;    printf,lun,'/data/nemesis/specdata/ktables/visir/visir_ph3.kta'
;endif
;if (instr eq 'visir2') then begin
;    printf,lun,'/data/nemesis/specdata/ktables/visir_oct2009/visir_c2h2.kta'
;    printf,lun,'/data/nemesis/specdata/ktables/visir_oct2009/visir_c2h6.kta'
;    printf,lun,'/data/nemesis/specdata/ktables/visir_oct2009/visir_ch4.kta'
;    printf,lun,'/data/nemesis/specdata/ktables/visir_oct2009/visir_nh3.kta'
;    printf,lun,'/data/nemesis/specdata/ktables/visir_oct2009/visir_ph3.kta'
;endif
if (instr eq 'visir') then begin
;    printf,lun,'/data/nemesis/specdata/ktables/visir/visir_img_2012/ch4.kta'
;    printf,lun,'/data/nemesis/specdata/ktables/visir/visir_img_2012/c2h2.kta'
;    printf,lun,'/data/nemesis/specdata/ktables/visir/visir_img_2012/c2h4.kta'
;    printf,lun,'/data/nemesis/specdata/ktables/visir/visir_img_2012/c2h6.kta'
;    printf,lun,'/data/nemesis/specdata/ktables/visir/visir_img_2012/ph3.kta'
;    printf,lun,'/data/nemesis/specdata/ktables/visir/visir_img_2012/nh3.kta'


printf,lun,'/data/nemesis/specdata/ktables/visir/visir_img_2018/ktab_3/c2h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/visir/visir_img_2018/ktab_1/ch4_all.kta'
printf,lun,'/data/nemesis/specdata/ktables/visir/visir_img_2018/ktab_5/ph3.kta'
printf,lun,'/data/nemesis/specdata/ktables/visir/visir_img_2018/ktab_2/c2h6.kta'
printf,lun,'/data/nemesis/specdata/ktables/visir/visir_img_2018/ktab_4/c2h4.kta'
printf,lun,'/data/nemesis/specdata/ktables/visir/visir_img_2018/ktab_6/nh3_all.kta'


endif

if (instr eq 'visir_comics') then begin
    printf,lun,'/data/nemesis/specdata/ktables/visir_comics/visir_c2h2.kta'
    printf,lun,'/data/nemesis/specdata/ktables/visir_comics/visir_c2h6.kta'
    printf,lun,'/data/nemesis/specdata/ktables/visir_comics/visir_ch4.kta'
    printf,lun,'/data/nemesis/specdata/ktables/visir_comics/visir_nh3.kta'
    printf,lun,'/data/nemesis/specdata/ktables/visir_comics/visir_ph3.kta'
endif

if (instr eq 'michelle') then begin
    printf,lun,'/data/nemesis/specdata/ktables/michelle/michelle_2019/ktab_5/c2h2.kta'
    printf,lun,'/data/nemesis/specdata/ktables/michelle/michelle_2019/ktab_2/ph3.kta'
    printf,lun,'/data/nemesis/specdata/ktables/michelle/michelle_2019/ktab_6/c2h4.kta'
    printf,lun,'/data/nemesis/specdata/ktables/michelle/michelle_2019/ktab_4/c2h6.kta'
    printf,lun,'/data/nemesis/specdata/ktables/michelle/michelle_2019/ktab_15/ch4_all.kta'
    printf,lun,'/data/nemesis/specdata/ktables/michelle/michelle_2019/ktab_3/nh3_all.kta'

    
endif
if (instr eq 'lws') then begin    
 printf,lun,'/data/nemesis/specdata/ktables/lws_dec2010/kecklws_ch4.kta'
 printf,lun,'/data/nemesis/specdata/ktables/lws_dec2010/kecklws_13ch4.kta'
 printf,lun,'/data/nemesis/specdata/ktables/lws_dec2010/kecklws_ch3d.kta'
 printf,lun,'/data/nemesis/specdata/ktables/lws_dec2010/kecklws_ph3.kta'
 printf,lun,'/data/nemesis/specdata/ktables/lws_dec2010/kecklws_nh3.kta'
 printf,lun,'/data/nemesis/specdata/ktables/lws_dec2010/kecklws_c2h2.kta'
 printf,lun,'/data/nemesis/specdata/ktables/lws_dec2010/kecklws_c2h6.kta'
 printf,lun,'/data/nemesis/specdata/ktables/lws_dec2010/kecklws_c2h4.kta'

endif
if (instr eq 'trecs') then begin    
 printf,lun,'/data/nemesis/specdata/ktables/trecs_img_2012/ch4.kta'
 printf,lun,'/data/nemesis/specdata/ktables/trecs_img_2012/c2h2.kta'
 printf,lun,'/data/nemesis/specdata/ktables/trecs_img_2012/c2h6.kta'
 printf,lun,'/data/nemesis/specdata/ktables/trecs_img_2012/c2h4.kta'
 printf,lun,'/data/nemesis/specdata/ktables/trecs_img_2012/ph3.kta'
 printf,lun,'/data/nemesis/specdata/ktables/trecs_img_2012/nh3.kta'
endif

if (instr eq 'lws_spec') then begin    

printf,lun,'/data/nemesis/specdata/ktables/icegiant_lambda/lamb0.11um/c2h2/c2h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/icegiant_lambda/lamb0.11um/c2h4/c2h4.kta'
printf,lun,'/data/nemesis/specdata/ktables/icegiant_lambda/lamb0.11um/ch4_all/ch4_all.kta'
printf,lun,'/data/nemesis/specdata/ktables/icegiant_lambda/lamb0.11um/c2h6/c2h6.kta'

 
endif

if (instr eq 'spitzer') then begin    


   printf,lun,'/data/nemesis/specdata/ktables/spitzer/spitzer_SL/SL1_new/ktab_5/c2h2.kta'
   printf,lun,'/data/nemesis/specdata/ktables/spitzer/spitzer_SL/SL1_new/ktab_6/c2h4.kta'
   printf,lun,'/data/nemesis/specdata/ktables/spitzer/spitzer_SL/SL1_new/ktab_4/c2h6.kta'
   printf,lun,'/data/nemesis/specdata/ktables/spitzer/spitzer_SL/SL1_new/ktab_11/c3h4.kta'
   printf,lun,'/data/nemesis/specdata/ktables/spitzer/spitzer_SL/SL1_new/ktab_13/c3h8.kta'
   printf,lun,'/data/nemesis/specdata/ktables/spitzer/spitzer_SL/SL1_new/ktab_10/c4h2.kta'
   printf,lun,'/data/nemesis/specdata/ktables/spitzer/spitzer_SL/SL1_new/ktab_1/ch4.kta'
   printf,lun,'/data/nemesis/specdata/ktables/spitzer/spitzer_SL/SL1_new/ktab_8/ch4_13C.kta'
   printf,lun,'/data/nemesis/specdata/ktables/spitzer/spitzer_SL/SL1_new/ktab_3/nh3_all.kta'
   printf,lun,'/data/nemesis/specdata/ktables/spitzer/spitzer_SL/SL1_new/ktab_2/ph3.kta'
   printf,lun,'/data/nemesis/specdata/ktables/spitzer/spitzer_SL/SL1_new/ktab_9/h2.kta'
   printf,lun,'/data/nemesis/specdata/ktables/spitzer/spitzer_SL/SL1_new/ktab_12/co2.kta'
   printf,lun,'/data/nemesis/specdata/ktables/spitzer/spitzer_SL/SL1_new/ktab_7/ch3d.kta'
   printf,lun,'/data/nemesis/specdata/ktables/spitzer/spitzer_SL/SL1_new/ktab_14/c6h6.kta'

endif
if (instr eq 'spire') then begin    
 printf,lun,'/data/nemesis/specdata/ktables/spire/ph3/ph3.kta'
 printf,lun,'/data/nemesis/specdata/ktables/spire/ch4/ch4.kta'
 printf,lun,'/data/nemesis/specdata/ktables/spire/nh3/nh3.kta'

endif
if (instr eq 'forcast') then begin    
printf,lun,'/data/nemesis/specdata/ktables/sofia/forcast/forcast_ch4.kta'
printf,lun,'/data/nemesis/specdata/ktables/sofia/forcast/forcast_13ch4.kta'
printf,lun,'/data/nemesis/specdata/ktables/sofia/forcast/forcast_ch3d.kta'
printf,lun,'/data/nemesis/specdata/ktables/sofia/forcast/forcast_ph3.kta'
printf,lun,'/data/nemesis/specdata/ktables/sofia/forcast/forcast_nh3.kta'
printf,lun,'/data/nemesis/specdata/ktables/sofia/forcast/forcast_c2h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/sofia/forcast/forcast_c2h6.kta'
printf,lun,'/data/nemesis/specdata/ktables/sofia/forcast/forcast_h2o.kta'
endif



if (instr eq 'irshell') then begin

;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_1168.63/irshell_c2h2/c2h2.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_1168.63/irshell_c2h4/c2h4.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_1168.63/irshell_c2h6/c2h6.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_1168.63/irshell_ch3d/ch3d.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_1168.63/irshell_ch4_13/ch4_13.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_1168.63/irshell_ch4/ch4.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_1168.63/irshell_h2/h2.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_1168.63/irshell_hcn/hcn.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_1168.63/irshell_nh3/nh3.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_1168.63/irshell_ph3/ph3.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_1326.56/irshell_c2h2/c2h2.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_1326.56/irshell_c2h4/c2h4.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_1326.56/irshell_c2h6/c2h6.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_1326.56/irshell_ch3d/ch3d.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_1326.56/irshell_ch4_13/ch4_13.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_1326.56/irshell_ch4/ch4.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_1326.56/irshell_h2/h2.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_1326.56/irshell_hcn/hcn.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_1326.56/irshell_nh3/nh3.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_1326.56/irshell_ph3/ph3.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.008/irshell_c2h2/c2h2.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.008/irshell_c2h4/c2h4.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.008/irshell_c2h6/c2h6.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.008/irshell_ch3d/ch3d.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.008/irshell_ch4_13/ch4_13.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.008/irshell_ch4/ch4.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.008/irshell_h2/h2.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.008/irshell_hcn/hcn.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.008/irshell_nh3/nh3.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.008/irshell_ph3/ph3.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.493/irshell_c2h2/c2h2.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.493/irshell_c2h4/c2h4.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.493/irshell_c2h6/c2h6.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.493/irshell_ch3d/ch3d.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.493/irshell_ch4_13/ch4_13.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.493/irshell_ch4/ch4.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.493/irshell_h2/h2.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.493/irshell_hcn/hcn.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.493/irshell_nh3/nh3.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.493/irshell_ph3/ph3.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.898/irshell_c2h2/c2h2.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.898/irshell_c2h4/c2h4.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.898/irshell_c2h6/c2h6.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.898/irshell_ch3d/ch3d.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.898/irshell_ch4_13/ch4_13.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.898/irshell_ch4/ch4.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.898/irshell_h2/h2.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.898/irshell_hcn/hcn.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.898/irshell_nh3/nh3.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_586.898/irshell_ph3/ph3.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_729.860/irshell_c2h2/c2h2.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_729.860/irshell_c2h4/c2h4.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_729.860/irshell_c2h6/c2h6.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_729.860/irshell_ch3d/ch3d.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_729.860/irshell_ch4_13/ch4_13.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_729.860/irshell_ch4/ch4.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_729.860/irshell_h2/h2.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_729.860/irshell_hcn/hcn.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_729.860/irshell_nh3/nh3.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_729.860/irshell_ph3/ph3.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_732.397/irshell_c2h2/c2h2.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_732.397/irshell_c2h4/c2h4.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_732.397/irshell_c2h6/c2h6.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_732.397/irshell_ch3d/ch3d.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_732.397/irshell_ch4_13/ch4_13.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_732.397/irshell_ch4/ch4.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_732.397/irshell_h2/h2.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_732.397/irshell_hcn/hcn.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_732.397/irshell_nh3/nh3.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_732.397/irshell_ph3/ph3.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_814.989/irshell_c2h2/c2h2.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_814.989/irshell_c2h4/c2h4.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_814.989/irshell_c2h6/c2h6.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_814.989/irshell_ch3d/ch3d.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_814.989/irshell_ch4_13/ch4_13.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_814.989/irshell_ch4/ch4.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_814.989/irshell_h2/h2.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_814.989/irshell_hcn/hcn.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_814.989/irshell_nh3/nh3.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_814.989/irshell_ph3/ph3.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_815.011/irshell_c2h2/c2h2.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_815.011/irshell_c2h4/c2h4.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_815.011/irshell_c2h6/c2h6.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_815.011/irshell_ch3d/ch3d.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_815.011/irshell_ch4_13/ch4_13.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_815.011/irshell_ch4/ch4.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_815.011/irshell_h2/h2.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_815.011/irshell_hcn/hcn.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_815.011/irshell_nh3/nh3.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_815.011/irshell_ph3/ph3.kta'
       printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_949.074/irshell_c2h2/c2h2.kta'
       printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_949.074/irshell_c2h4/c2h4.kta'
       printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_949.074/irshell_c2h6/c2h6.kta'
       printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_949.074/irshell_ch3d/ch3d.kta'
       printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_949.074/irshell_ch4_13/ch4_13.kta'
       printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_949.074/irshell_ch4/ch4.kta'
       printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_949.074/irshell_h2/h2.kta'
       printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_949.074/irshell_hcn/hcn.kta'
       printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_949.074/irshell_nh3/nh3.kta'
       printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_949.074/irshell_ph3/ph3.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_951.890/irshell_c2h2/c2h2.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_951.890/irshell_c2h4/c2h4.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_951.890/irshell_c2h6/c2h6.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_951.890/irshell_ch3d/ch3d.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_951.890/irshell_ch4_13/ch4_13.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_951.890/irshell_ch4/ch4.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_951.890/irshell_h2/h2.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_951.890/irshell_hcn/hcn.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_951.890/irshell_nh3/nh3.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_951.890/irshell_ph3/ph3.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_954.769/irshell_c2h2/c2h2.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_954.769/irshell_c2h4/c2h4.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_954.769/irshell_c2h6/c2h6.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_954.769/irshell_ch3d/ch3d.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_954.769/irshell_ch4_13/ch4_13.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_954.769/irshell_ch4/ch4.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_954.769/irshell_h2/h2.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_954.769/irshell_hcn/hcn.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_954.769/irshell_nh3/nh3.kta'
;	printf,lun,'/data/nemesis/specdata/ktables/irshell/irshell_954.769/irshell_ph3/ph3.kta'
endif

if (instr eq 'texes901') then begin
;printf,lun,'/data/nemesis/specdata/specdata/GroundBased/texes2013/890-915cm/nh3.kta'
;printf,lun,'/data/nemesis/specdata/specdata/GroundBased/texes2013/890-915cm/ph3.kta'
;printf,lun,'/data/nemesis/specdata/specdata/GroundBased/texes2013/890-915cm/c2h6.kta'
;printf,lun,'/data/nemesis/specdata/specdata/GroundBased/texes2013/890-915cm/c2h2.kta'
;printf,lun,'/data/nemesis/specdata/specdata/GroundBased/texes2013/890-915cm/ch4.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/low901/ph3.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/low901/c2h6.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/low901/c2h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/low901/ch4.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/low901/13ch4.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/low901/ch3d.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/low901/nh3.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/low901/c2h4.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/low901/h2.kta'
endif
if (instr eq 'texes960') then begin

printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/low960/ph3.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/low960/c2h6.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/low960/c2h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/low960/ch4.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/low960/13ch4.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/low960/ch3d.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/low960/nh3.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/low960/c2h4.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/low960/h2.kta'
endif

if (instr eq 'texes819') then begin

printf,lun,'/home/lnf2/ktables/texes/texes2015/med819/ph3.kta'
printf,lun,'/home/lnf2/ktables/texes/texes2015/med819/c2h6.kta'
printf,lun,'/home/lnf2/ktables/texes/texes2015/med819/c2h2.kta'
printf,lun,'/home/lnf2/ktables/texes/texes2015/med819/ch4.kta'
printf,lun,'/home/lnf2/ktables/texes/texes2015/med819/13ch4.kta'
printf,lun,'/home/lnf2/ktables/texes/texes2015/med819/ch3d.kta'
printf,lun,'/home/lnf2/ktables/texes/texes2015/med819/nh3_14N.kta'
printf,lun,'/home/lnf2/ktables/texes/texes2015/med819/nh3_15N.kta'
printf,lun,'/home/lnf2/ktables/texes/texes2015/med819/c2h4.kta'
printf,lun,'/home/lnf2/ktables/texes/texes2015/med819/h2.kta'

;printf,lun,'/home/lnf2/ktables/texes/texes2015/combi4/ph3.kta'
;printf,lun,'/home/lnf2/ktables/texes/texes2015/combi4/c2h6.kta'
;printf,lun,'/home/lnf2/ktables/texes/texes2015/combi4/c2h2.kta'
;printf,lun,'/home/lnf2/ktables/texes/texes2015/combi4/ch4.kta'
;printf,lun,'/home/lnf2/ktables/texes/texes2015/combi4/13ch4.kta'
;printf,lun,'/home/lnf2/ktables/texes/texes2015/combi4/ch3d.kta'
;printf,lun,'/home/lnf2/ktables/texes/texes2015/combi4/nh3_14N.kta'
;printf,lun,'/home/lnf2/ktables/texes/texes2015/combi4/nh3_15N.kta'
;printf,lun,'/home/lnf2/ktables/texes/texes2015/combi4/c2h4.kta'
;printf,lun,'/home/lnf2/ktables/texes/texes2015/combi4/h2.kta'



endif

if (instr eq 'texes1161') then begin
;   printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/low1161/ktab_5/c2h2.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/low1161/ktab_4/c2h6.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/low1161/ktab_6/c2h4.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/low1161/ktab_9/ch4_13C.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/low1161/ktab_8/ch3d.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/low1161/ktab_3/nh3_15N.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/low1161/ktab_0/ph3.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/low1161/ktab_7/ch4.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/low1161/ktab_2/nh3_14N.kta'
;   printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/low1161/ktab_1/h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2017/low1165/ktab_10/h2.kta'      
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2017/low1165/ktab_3/nh3_15N.kta'	 
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2017/low1165/ktab_6/c2h4.kta'  
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2017/low1165/ktab_9/ch4_13C.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2017/low1165/ktab_1/ph3.kta'      
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2017/low1165/ktab_4/c2h6.kta' 
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2017/low1165/ktab_7/ch4.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2017/low1165/ktab_2/nh3_14N.kta'  
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2017/low1165/ktab_5/c2h2.kta' 
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2017/low1165/ktab_8/ch3d.kta'



endif

if (instr eq 'texes_combilow') then begin
 printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/combi_901_960_1161/ph3.kta'
 printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/combi_901_960_1161/c2h2.kta'
 printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/combi_901_960_1161/c2h6.kta'
 printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/combi_901_960_1161/ch4.kta'
 printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/combi_901_960_1161/13ch4.kta'
 printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/combi_901_960_1161/ch3d.kta'
 printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/combi_901_960_1161/nh3.kta'
 printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/combi_901_960_1161/c2h4.kta'
 printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/combi_901_960_1161/h2.kta'

endif
if (instr eq 'texes_combilow1') then begin
 printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/combi_901_960_1161/ph3.kta'
 printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/combi_901_960_1161/c2h2.kta'
 printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/combi_901_960_1161/c2h6.kta'
 printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/combi_901_960_1161/ch4.kta'
 printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/combi_901_960_1161/13ch4.kta'
 printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/combi_901_960_1161/ch3d.kta'
 printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/combi_901_960_1161/nh3_14N.kta'
 printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/combi_901_960_1161/nh3_15N.kta'
 printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/combi_901_960_1161/c2h4.kta'
 printf,lun,'/data/nemesis/specdata/ktables/texes/texes2014/combi_901_960_1161/h2.kta'

endif

if (instr eq 'texes_combi4') then begin
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/combi4/ph3.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/combi4/c2h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/combi4/c2h6.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/combi4/ch4.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/combi4/ch4_13C.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/combi4/ch3d.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/combi4/nh3_14N.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/combi4/c2h4.kta'
;printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/combi4/h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/combi4/nh3_15N.kta'


endif

if (instr eq 'texes_combi6') then begin
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/combi6/ph3.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/combi6/c2h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/combi6/c2h6.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/combi6/ch4.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/combi6/ch4_13C.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/combi6/ch3d.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/combi6/nh3_14N.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/combi6/c2h4.kta'
;printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/combi6/h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2015/combi6/nh3_15N.kta'


endif


if (instr eq 'texes_combi8') then begin
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2017/combi8/ph3.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2017/combi8/c2h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2017/combi8/c2h6.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2017/combi8/ch4.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2017/combi8/ch4_13C.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2017/combi8/ch3d.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2017/combi8/nh3_14N.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2017/combi8/c2h4.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2017/combi8/h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/texes/texes2017/combi8/nh3_15N.kta'


endif



if (instr eq 'exo') then begin
printf,lun,'/data/nemesis/specdata/ktables/exoplanet/jaemin/h2o_03300wv.kta'
printf,lun,'/data/nemesis/specdata/ktables/exoplanet/jaemin/co2_0330wv.kta'
printf,lun,'/data/nemesis/specdata/ktables/exoplanet/jaemin/co_03300wv.kta'
;printf,lun,'/home/oxpln99/plan/jaemin/ch4/ch4_10300wv.kta'
;printf,lun,'/home/oxpln99/plan/jaemin/NH3/nh3_03300wv.kta'
printf,lun,'/data/nemesis/specdata/ktables/exoplanet/jaemin/ch4_combi.kta'
;printf,lun,'/data/nemesis/specdata/ktables/exoplanet/nh3/nh3.kta'
;printf,lun,'/data/nemesis/specdata/ktables/exoplanet/hcn/hcn.kta'
;printf,lun,'/data/nemesis/specdata/ktables/exoplanet/c2h2/c2h2.kta'


;printf,lun,'/home/oxpln99/plan/jaemin/alkali/na_03300wv.kta'
;printf,lun,'/home/oxpln99/plan/jaemin/alkali/k_03300wv.kta'
;printf,lun,'/home/oxpln99/plan/jaemin/TiO/tio_03300wv.kta'
;printf,lun,'/home/oxpln99/plan/jaemin/VO/vo_0425wv.kta'



endif


if (instr eq 'muse') then begin
;printf,lun,'/data/nemesis/specdata/ktables/muse/ch4_irtfKXall3_04_10.kta'
printf,lun,'/data/nemesis/specdata/ktables/muse/ch4_dummy.kta'

;printf,lun,'/data/nemesis/specdata/ktables/muse/nh3_irtfXmod_04_10.kta'
;printf,lun,'/data/nemesis/specdata/ktables/muse/h2_irtf_04_10.kta'
endif

if instr eq 'combi_longterm_ng50' then begin

printf,lun,'/data/nemesis/specdata/ktables/MIRImaging/combi/combi_NG50/ktab_1/c2h6.kta'
printf,lun,'/data/nemesis/specdata/ktables/MIRImaging/combi/combi_NG50/ktab_2/c2h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/MIRImaging/combi/combi_NG50/ktab_3/c2h4.kta'
printf,lun,'/data/nemesis/specdata/ktables/MIRImaging/combi/combi_NG50/ktab_4/ph3.kta'
printf,lun,'/data/nemesis/specdata/ktables/MIRImaging/combi/combi_NG50/ktab_5/nh3_all.kta'
printf,lun,'/data/nemesis/specdata/ktables/MIRImaging/combi/combi_NG50/ktab_6/h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/MIRImaging/combi/combi_NG50/ktab_7/ch4.kta'
printf,lun,'/data/nemesis/specdata/ktables/MIRImaging/combi/combi_NG50/ktab_8/ch3d.kta'
printf,lun,'/data/nemesis/specdata/ktables/MIRImaging/combi/combi_NG50/ktab_9/ch4_13C.kta'

endif

if instr eq 'combi_longterm_ng100' then begin

printf,lun,'/data/nemesis/specdata/ktables/MIRImaging/combi/combi_NG100/ktab_1/c2h6.kta'
printf,lun,'/data/nemesis/specdata/ktables/MIRImaging/combi/combi_NG100/ktab_2/c2h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/MIRImaging/combi/combi_NG100/ktab_3/c2h4.kta'
printf,lun,'/data/nemesis/specdata/ktables/MIRImaging/combi/combi_NG100/ktab_4/ph3.kta'
printf,lun,'/data/nemesis/specdata/ktables/MIRImaging/combi/combi_NG100/ktab_5/nh3_all.kta'
printf,lun,'/data/nemesis/specdata/ktables/MIRImaging/combi/combi_NG100/ktab_6/h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/MIRImaging/combi/combi_NG100/ktab_7/ch4.kta'
printf,lun,'/data/nemesis/specdata/ktables/MIRImaging/combi/combi_NG100/ktab_8/ch3d.kta'
printf,lun,'/data/nemesis/specdata/ktables/MIRImaging/combi/combi_NG100/ktab_9/ch4_13C.kta'

endif

if instr eq 'combi_longterm_ng200' then begin

printf,lun,'/data/nemesis/specdata/ktables/MIRImaging/combi/combi_NG200/ktab_1/c2h6.kta'
printf,lun,'/data/nemesis/specdata/ktables/MIRImaging/combi/combi_NG200/ktab_2/c2h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/MIRImaging/combi/combi_NG200/ktab_3/c2h4.kta'
printf,lun,'/data/nemesis/specdata/ktables/MIRImaging/combi/combi_NG200/ktab_4/ph3.kta'
printf,lun,'/data/nemesis/specdata/ktables/MIRImaging/combi/combi_NG200/ktab_5/nh3_all.kta'
printf,lun,'/data/nemesis/specdata/ktables/MIRImaging/combi/combi_NG200/ktab_6/h2.kta'
printf,lun,'/data/nemesis/specdata/ktables/MIRImaging/combi/combi_NG200/ktab_7/ch4.kta'
printf,lun,'/data/nemesis/specdata/ktables/MIRImaging/combi/combi_NG200/ktab_8/ch3d.kta'
printf,lun,'/data/nemesis/specdata/ktables/MIRImaging/combi/combi_NG200/ktab_9/ch4_13C.kta'

endif
free_lun, lun

return

end
