# 3. Od katalógu k platforme: vývoj, inštitúcie a súčasný ekosystém online zbierok

## *Preface*

Táto kapitola mapuje, ako sa z evidenčných systémov stali online zbierky — a prečo sa mnohé z nich dodnes správajú skôr ako databázy než ako priestory prirodzene podporujúce súvislé čítanie a rozprávanie. Nejde o vyčerpávajúcu históriu digitalizácie; skôr o orientačnú mapu technológií, štandardov a inštitucionálnych rozhodnutí, ktoré podmieňujú dnešné rozhrania.

Najprv načrtáva pred-digitálne evidenčné praxe a prechod k databázam, potom infraštruktúry (štandardy, repozitáre, autority, otvorené dáta) a vybrané svetové príklady, na ktorých je viditeľné napätie medzi katalogizačnou logikou a návštevníckou skúsenosťou. Druhá polovica kapitoly sa sústreďuje na československý kontext — najmä na CEDVU a jeho digitalizáciu — a na vznik Webu umenia ako projektu, ktorý vyrástol z dátovej kontinuity aj z praktickej potreby sprístupňovať zbierky inak než len cez „záznam“.

Kapitola zároveň vytvára rámec pre ďalšie časti práce, kde sa k otázke naratívu, rozhraní a experimentálneho dizajnu vraciam z perspektívy dlhodobej praxe v lab.SNG.

## 3.1 Korene a predpoklady digitalizácie

> “Database and narrative are natural enemies.”
> — Lev Manovich, *The Language of New Media* [@manovich_language_new_media_2001]

Týmto často citovaným výrokom Manovich pomenúva základné napätie digitálnych médií: databázy umožňujú presné triedenie, filtrovanie a kombinovanie údajov, samy osebe však negarantujú vznik zmysluplného alebo súvislého príbehu [@manovich_language_new_media_2001]. Podobne kriticky upozorňuje Fiona Cameron, že metadáta nemožno chápať ako neutrálne či objektívne zrkadlenie zbierkových predmetov. Naopak, vznikajú prostredníctvom konkrétnych odborných, inštitucionálnych a historicky podmienených rozhodnutí – čo je považované za relevantné, ako je objekt pomenovaný, do akej kategórie je zaradený a aké vzťahy sú medzi objektmi vôbec artikulované [@cameron_digital_futures_politics_heritage_2007; @cameron_beyond_cult_replicant_2007].

V tejto kapitole preto uvažujem o online zbierkach ako o výsledku dvoch navzájom prepojených rovín. Prvou sú historické evidenčné návyky, ktoré formovali spôsoby opisu, klasifikácie a hierarchizácie diel ešte pred ich digitalizáciou. Druhou sú dizajnové a rozhranové rozhodnutia, prostredníctvom ktorých sa tieto údaje sprístupňujú publiku a nadobúdajú konkrétnu podobu používateľskej skúsenosti. Odborná diskusia v tejto oblasti pritom nie je jednotná. Jedna jej časť sa sústreďuje najmä na pomenovanie problémov vyplývajúcich z databázovej logiky kultúrnych platforiem – od narušenia naratívnej kontinuity až po algoritmickú plošnosť a homogenizáciu skúsenosti [@manovich_language_new_media_2001; @chayka_filterworld_2024]. Iná línia diskusie sa orientuje skôr na hľadanie alternatívnych spôsobov sprostredkovania zbierok, napríklad prostredníctvom konceptu „generous interfaces“, ktoré zdôrazňujú vizuálne odhaľovanie štruktúr zbierky namiesto dominantného vyhľadávania [@whitelaw_generous_interfaces_2015], alebo cez dôraz na návštevnícku skúsenosť pri navrhovaní digitálnych a imerzívnych výstav [@popoli_derda_developing_experiences_2021].

Digitálna transformácia múzeí a galérií však nevznikla ako náhly alebo radikálny zlom. Išlo skôr o postupný proces, ktorý nadviazal na dlhodobé tradície evidencie, správy a organizácie zbierok [@parry_recoding_museum_2007]. Spôsoby, akými dnes online zbierky fungujú a ako sú ich rozhrania navrhnuté, sú preto výrazne ovplyvnené predstavami o diele, poriadku a odbornom poznaní, ktoré sa formovali v analógovej a ranodigitálnej ére [@hooper_greenhill_shaping_knowledge_1992; @cameron_kenderdine_theorizing_digital_cultural_heritage_2007]. Táto kapitola preto načrtáva historické a metodologické pozadie, ktoré umožňuje lepšie porozumieť nielen súčasným limitom online zbierok, ale aj rámcom, v ktorých sa dnes uvažuje o ich ďalšom vývoji a interpretácii.

### 3.1.1 Pred-digitálne evidenčné praxe: stabilita, štandardy a obmedzenia

Pred-digitálna evidencia fungovala ako stabilný, prevažne interný nástroj: mala zabezpečiť identifikáciu, porovnateľnosť údajov a možnosť odborných rešerší, nie sprostredkovať interpretáciu alebo „príbeh“ diel. Pravidlá popisu boli zámerne faktické a uniformné — overené praxou, no zároveň viazané na fyzické prostredie kartoték a archívov, kde každá aktualizácia znamenala manuálny zásah a prístup k údajom bol prirodzene limitovaný miestom.

V slovenskom prostredí sa tento model spojil aj s centralizáciou: v SNG sa od 70. rokov budoval papierový *systém dokumentačných kariet* (centrálna kartotéka), ktorý od roku 1979 slúžil ako spoločný referenčný súpis diel v galériách (a v danom období aj v múzeách). Detailnejší priebeh a jeho dôsledky pre neskorší digitálny vývoj rozoberám v časti 3.4.1.

Ako uvádzajú *Bahurinská a Bohumelová*, základné kritériá pre vytváranie záznamov o zbierkových predmetoch sa zásadne nemenili celé desaťročia a boli overené dlhodobou praxou [@bahurinska_bohumelova_evidence_kapitola_nd]. Práve táto kontinuita zabezpečila, že neskorší prepis do databáz nebol „vymýšľaním od nuly“, ale formalizáciou už existujúcich odborných návykov.

Nasledujúca fotografia zachytáva fyzickú podobu papierovej kartotéky v Slovenskej národnej galérii, ktorá dodnes existuje a v obmedzenej miere sa stále používa ako referenčný archív.

![Centrálny katalóg v Slovenskej národnej galérii.
Kartotéka s dokumentačnými lístkami, budovaná od roku 1979, zachytáva evidenciu diel galérií (a v danom období aj múzeí).
Fyzický katalóg sa dodnes používa ako referenčný archív.
Foto: autor, 13. august 2015.](figures/fig-3-1-centralny-katalog-kartoteka-sng-2015.png){#fig:centralny-katalog}

Podľa pamätníckeho svedectva Jany Bahurinskej išlo v čase vzniku o riešenie bez blízkej analógie v okolitých krajinách: štátom poverená centrálna evidencia diel výtvarného umenia mala pokrývať celé územie a presadiť porovnateľný popis naprieč inštitúciami. Tento dôraz na poriadok a kompatibilitu zároveň formoval *kultúrny model práce s dielom*: objekt sa chápe ako stabilná jednotka a informácie o ňom ako súbor faktov uložených v pevne definovaných formátoch. Aktualizácia údajov a interpretácia (t. j. „čo to znamená“) boli v praxi oddelené – evidencia mala primárne udržiavať poriadok a umožniť identifikáciu, nie vytvárať významy [@hooper_greenhill_shaping_knowledge_1992].

### 3.1.2 Prechod k databázam: formovanie dátovej ontológie

S nástupom výpočtovej techniky v 90. rokoch sa analógová evidencia začala transformovať do elektronickej podoby. V slovenskom kontexte ide najmä o konverziu dokumentačných kariet do systému *Micro CDS/ISIS*, ktorá si vyžadovala rozsiahle zjednotenie údajov a vytvorenie novej formalizovanej štruktúry [@unesco_micro_cds_isis_1990s].

Tento prepis bol viac než mechanická digitalizácia. Znamenal prechod k *dátovej ontológii* — súboru kategórií, polí a pravidiel, ktoré definujú, čo je možné o diele zaznamenať.
V priebehu týchto rokov vznikol *Štandard pre popis diel výtvarného umenia*, ktorý bol navrhnutý pre potreby CEDVU a reflektoval odporúčania CIDOC–ICOM [@bahurinska_stadandard_pre_popis_2002].
Neskôr bola táto štruktúra doplnená o legislatívny rámec vo forme *Vyhlášky č. 523/2009 Z. z.*, ktorá v nadväznosti na Zákon o múzeách a galériách (2009) presne definuje povinné atribúty pri evidencii zbierkových predmetov.

Dátová ontológia má vplyv, ktorý presahuje čisto technickú rovinu:
určuje, čo sa považuje za relevantný údaj, aké informácie sa priebežne zhromažďujú a aké kontexty sa do záznamov nedostanú. To, čo systém neumožňuje zaznamenať, sa v dlhodobom horizonte vytráca z profesionálnej práce aj z dostupných rozhraní.

V 90. rokoch však databázy stále plnili výlučne internú funkciu. Systémy ako CEDVU či pokusy o prvé elektronické katalógy boli určené pre odborníkov, nie pre verejnosť.
Ich úlohou bolo zefektívniť správu zbierok, nie sprostredkovať vizuálny alebo interpretačný zážitok.

Dôležité je uvedomiť si, že mnohé súčasné digitálne platformy – vrátane tých, ktoré dnes fungujú online – zdedili túto evidenčnú logiku.
Parametre, ktoré dnes určujú možnosti vyhľadávania, facetingu či vizualizácie, sú často priamo odvodené od rozhodnutí, ktoré vznikli počas retrospektívneho prepisu dokumentačných kariet.

### 3.1.3 Teoretické rámce: múzeum ako informačný a dátový systém

V rovnakom období, v ktorom sa postupne digitalizuje evidencia zbierok, sa začína meniť aj teoretické chápanie múzea ako inštitúcie. Tento posun však nemožno chápať ako jednotný ani lineárny. V priebehu 18. a 19. storočia múzeá plnili rozličné, často protichodné spoločenské funkcie – od reprezentácie politickej moci a imperiálneho poriadku, cez prezentáciu aristokratického vkusu a koloniálneho bohatstva, až po formovanie národných identít a výchovno-edukačných naratívov. Artefakty v zbierkach tak neboli len nositeľmi estetickej či historickej hodnoty, ale aj súčasťou širších príbehov o autorite, kontinuitách a hierarchiách poznania.

V druhej polovici 20. storočia sa k týmto funkciám postupne pridáva reflexia múzea ako verejnej služby a pamäťovej inštitúcie, ktorej úlohou nie je len uchovávanie objektov, ale aj sprostredkovanie poznania v širšom spoločenskom kontexte. V diskusiách o digitálnom kultúrnom dedičstve sa preto pozornosť presúva od „samotného objektu“ k tomu, v akom systéme informácií objekt existuje – ako je opísaný, prepojený, sprístupnený a znovu použitý [@cameron_kenderdine_theorizing_digital_cultural_heritage_2007]. Podobný posun – ešte pred masovým nástupom internetu – pomenovali aj George F. MacDonald a Stephen Alsford, keď navrhli chápať múzeum ako informačnú službu pre spoločnosť, nielen ako sklad artefaktov:

> “Today there is a growing appreciation in the museum world that museums do not exist primarily to service their collections of material heritage, but rather to serve society by helping provide the knowledge its members need to survive and progress.” [@macdonald_alsford_museum_information_utility_1991, p. 305]

Múzeum sa tak v teoretickej reflexii prestáva chápať výlučne ako súbor artefaktov a začína byť čítané ako informačný systém, ktorého fungovanie je založené na tokoch dát, kategorizáciách a sprostredkovateľských mechanizmoch. Tento rámec však nadobúda odlišné významy v rôznych geografických a historických kontextoch. V prípade Slovenska a inštitúcií, ako je Slovenská národná galéria, je vznik zbierok úzko spätý s povojnovým obdobím, znárodňovaním majetku aristokracie a cirkvi, ako aj s cieľavedomým budovaním reprezentatívnej kolekcie moderného a súčasného umenia. Zbierka tak od svojho začiatku nesie stopy politických, majetkových a ideologických rozhodnutí, ktoré predchádzajú akejkoľvek digitálnej transformácii.

![Martin Benka – Dúha (Po búrke), 1918. Prvé evidované dielo v zbierke Slovenskej národnej galérie (SNG, O 1).](figures/fig-3-1-benka-duha-po-burke-1918-sng-o1.jpg){#fig:benka-o1}

Symbolickým príkladom je už samotné prvé evidované dielo zbierky Slovenskej národnej galérie – obraz Martina Benku *Dúha (Po búrke)* z roku 1918 –, ktoré možno čítať ako vizuálny nositeľ národotvorného a ideového rámca, v ktorom sa inštitúcia formovala. Tento príklad neslúži ako kunsthistorická analýza diela, ale ako ilustrácia toho, že zbierka nikdy nevzniká ako neutrálna množina objektov; vždy je výsledkom konkrétnych historických a spoločenských priorít.

Kľúčovým mediálnym rámcom pre pochopenie neskoršej digitalizácie je v tomto kontexte aj téza Leva Manovicha o databáze ako kultúrnej forme. Databáza nahrádza naratív tým, že usporadúva objekty podľa atribútov, nie podľa významových súvislostí. Tento posun je pre múzejný sektor obzvlášť relevantný: múzeá tradične pracovali s príbehom, kontextom a interpretáciou, zatiaľ čo databázy pracujú s položkami, kategóriami a filtrami. Tieto dva princípy nie sú automaticky v konflikte, no ich súžitie je napäté. Databázová logika podporuje rozklad objektu na časti a vlastnosti, zatiaľ čo kurátorská logika sa snaží vytvárať súvislosti a významové celky. Práve toto napätie otvára otázku, ktorá sa v ďalších častiach práce ukáže ako centrálna: ako možno z databázovej štruktúry znovu vytvárať skúsenosť, ktorá má naratívny alebo interpretačný charakter.

### 3.1.4 Premena odborných rolí: kurátor, dokumentátor, vývojár

Digitalizácia múzejných zbierok nepriniesla len nové technológie, ale zásadne zmenila aj rozdelenie odborných rolí a zodpovedností.
Kurátor ostáva dôležitým aktérom interpretácie, no v online prostredí už nie je jediným nositeľom významu. Podoba digitálnej zbierky vzniká v spolupráci viacerých profesií, z ktorých každá vstupuje do procesu iným spôsobom:

* dokumentačné profesie rozhodujú o presnosti, štruktúre a konzistentnosti údajov,
* vývojové a informačno-architektonické roly navrhujú dátové modely, polia, väzby a procesy,
* dizajnérske roly určujú, ako sa tieto údaje zobrazujú, triedia a sprístupňujú používateľom.

V online zbierkach je toto prepojenie viditeľné oveľa výraznejšie než v tradičných katalógoch.
Ak je databáza verejne prístupná, každý technický detail – názvy polí, spôsob facetovania, radenie výsledkov vyhľadávania či použité autority – má priamy vplyv na to, ako je zbierka čítaná a interpretovaná. Technická infraštruktúra sa tak stáva súčasťou kurátorského rámca.

V tomto zmysle možno hovoriť o dizajnérovi dátovej infraštruktúry ako o *tichom spoluautorovi naratívu zbierky*.
Technické rozhodnutia určujú, ktoré vzťahy medzi dielami sú vôbec viditeľné, aké spojenia systém podporuje a čo naopak zostáva skryté alebo nedostupné. Nejde pritom o neutralitu systému, ale o sériu konkrétnych rozhodnutí, ktoré majú dlhodobý interpretačný dosah.

Na tento aspekt upozorňuje aj *Fiona Cameron*, ktorá v súvislosti s digitálnymi múzejnými zbierkami píše:

> “Digital records are not neutral representations of objects, but are actively constructed through institutional, technical and cultural choices that shape what can be known about them.”
[@cameron_beyond_cult_replicant_2007, p. 54]

Digitálne metadáta podľa Cameron nevznikajú ako transparentný prepis objektu, ale ako sprostredkovaná forma poznania (*mediated knowledge*), formovaná technickými, organizačnými a inštitucionálnymi rozhodnutiami. Každé doplnenie, úprava alebo preusporiadanie metadát preto mení rámec, v ktorom bude dielo neskôr čítané odborníkmi, výskumníkmi či verejnosťou. Evidencia v tomto zmysle nie je len administratívnym úkonom, ale významotvorným aktom, ktorý priamo formuje podobu digitálneho kultúrneho dedičstva.

Toto rozšírenie odborných rolí má zásadný vplyv aj na vývoj digitálnych platforiem, ktoré v múzeách a galériách vznikajú (vrátane Web umenia). Digitálne zbierky nie sú výsledkom práce jednej profesie, ale kolektívnym produktom spolupráce rôznych expertíz. Porozumenie týmto vzťahom je kľúčové najmä preto, že technické rozhodnutia sa v online prostredí okamžite premietajú do verejného rozhrania – a tým sa stávajú súčasťou príbehu, ktorý zbierka rozpráva.

### 3.1.5 Záver: dedičstvo evidencie ako rámec súčasných výziev

Táto kapitola ukazuje, že súčasné digitálne zbierky nie sú neutrálnym produktom nových technológií, ale vyrastajú z dlhodobo formovaných evidenčných praxí a dátových štruktúr. Tie vznikali v období, keď sa od evidencie očakávala predovšetkým presnosť, kontrola a interná použiteľnosť pre odbornú prácu, nie sprostredkovanie zážitku, interpretácie alebo plynulého čítania zbierky smerom k verejnosti. Online platformy preto v mnohých prípadoch preberajú formu a logiku, ktoré boli navrhnuté pre katalogizačné a administratívne účely, a až sekundárne sú adaptované na potreby širšieho publika.

Napätie medzi pôvodným účelom týchto štruktúr a ich dnešným používaním v online prostredí sa následne prejavuje v sérii problémov, ktoré sú pre digitálne zbierky typické. Patria medzi ne fragmentárnosť údajov, dominancia vyhľadávania nad objavovaním, slabá prepojenosť jednotlivých objektov, ako aj absencia zreteľnej kurátorskej vrstvy, ktorá by sprostredkovala širší kontext. Výsledkom je strata naratívnej kontinuity, v ktorej sú diela prezentované ako izolované položky namiesto súčastí významových celkov.

Porozumenie tejto genealogii je preto kľúčové pre ďalšie uvažovanie o možnostiach rozvoja online zbierok. Ukazuje, že snaha o prechod k rozprávačským alebo interpretačne bohatším rozhraniam nemôže spočívať len v technických úpravách alebo v práci s aktuálnymi dátami. Nevyhnutne zahŕňa aj reflexiu historického dedičstva evidenčných systémov, ktoré tieto technológie formovali a naďalej podmieňujú spôsob, akým digitálne zbierky fungujú a komunikujú význam.

## 3.2 Prvé digitálne iniciatívy a infraštruktúry

Digitalizácia zbierok v 90. rokoch a prvej dekáde 21. storočia vznikala v prostredí, kde boli technické aj politické podmienky radikálne odlišné od dnešných. Nasledujúce podkapitoly mapujú vznik kľúčových infraštruktúr, ktoré formovali podobu online zbierok – od európskej agregácie po prvé repozitáre a štandardy interoperability. Zameriavam sa pritom na tie iniciatívy, ktoré ovplyvnili nielen technickú správu zbierok, ale aj spôsob, akým sa zbierkové dáta začali prezentovať, prepájať a sprístupňovať mimo úzkeho odborného prostredia.

### 3.2.1 Europeana a vznik európskeho rámca

Europeana nevznikla ako technický experiment, ale ako výsledok kultúrnej politiky Európskej únie. Jej vznik nadväzuje na projekty MINERVA, MICHAEL a snahy o koordináciu zdigitalizovaného kultúrneho dedičstva na úrovni európskych národných knižníc a pamäťových inštitúcií v rámci CENL (Conference of European National Librarians). Ako uvádza Jill Cousins, prvá výkonná riaditeľka Europeany, cieľom nebolo vytvoriť ďalší centrálny portál, ale vytvoriť spôsob, akým môžu kultúrne zdroje voľne cirkulovať medzi inštitúciami a krajinami [@cousins_europeana_2009].

Zásadným krokom v tomto procese bol vznik Europeana Data Model (EDM), ktorý zaviedol koncept agregácie a prepojených dát [@gradmann_edm_2011]. EDM umožnil, aby múzejné, galerijné a archívne objekty existovali v rámci jedného modelu bez straty vlastnej identity a pôvodu, čo predstavovalo významný posun oproti skorším rámcom, ktoré sa snažili rôznorodé dáta zjednotiť do jednej pevnej štruktúry.

Prostredníctvom EDM Europeana vytvorila spoločný dátový rámec pre kultúrne dedičstvo v Európskej únii, ktorý umožnil interoperabilitu medzi inštitúciami s odlišnými internými systémami. Súčasťou tohto rámca sa stali aj mechanizmy automatizovaného zberu dát, najmä prostredníctvom protokolu OAI-PMH, ktoré umožnili pravidelné a škálovateľné preberanie metadát od národných a tematických agregátorov. Zároveň Europeana fungovala ako politický a inštitucionálny argument pre sprístupňovanie kultúrnych zdrojov, keďže otvorené dáta a ich zdieľanie začali byť chápané ako súčasť verejnej služby financovanej z verejných zdrojov.

Od prvej verzie portálu v roku 2008 sa Europeana postupne vyvinula z prezentačného webu na dátovú infraštruktúru, ktorá dnes definuje technické a metodologické podmienky interoperability kultúrnych zbierok naprieč Európou [@terras_europeana_2015].

### 3.2.2 Štandardizácia: LIDO, Dublin Core, OAI-PMH

Prvá dekáda digitalizácie kultúrneho dedičstva bola do veľkej miery prácou so štandardmi metadát a prenosových protokolov. V múzejno-galérijnom prostredí pritom nešlo len o „technickú hygienu“, ale o predpoklad interoperability: ak majú dáta cestovať medzi systémami, agregátormi a verejnými rozhraniami, musia mať dohodnutú štruktúru a minimálny spoločný význam. Medzinárodným referenčným rámcom pre tieto snahy sú štandardy ICOM–CIDOC, ktoré od 90. rokov formujú prístupy k modelovaniu múzejných dát, ich interoperabilite a dlhodobej udržateľnosti.

V európskom a národnom agregáčnom kontexte sa ako prakticky rozhodujúca ukázala kombinácia troch vrstiev: exportná schéma bohatších múzejných metadát (*LIDO*), minimalistická schéma pre „najnižšie spoločné minimum“ (*Dublin Core*) a mechanizmus zberu dát (*OAI-PMH*). *LIDO* je navrhnuté pre opis múzejných objektov a používa sa ako štandard pre export do Europeany a národných agregátorov; jeho výhodou je šírka a schopnosť uniesť komplexný popis, slabinou vyššia miera abstrakcie, pretože ide o kompromis medzi „interpretatívnymi“ a „transakčnými“ potrebami múzeí [@coburn_lido_2010]. *Dublin Core* vznikol pôvodne ako základný popisný systém pre heterogénne digitálne zdroje [@weibel_dc_1998] a v múzejnom prostredí často funguje ako „núdzová“ interoperabilná vrstva: umožní jednoduché harvestovanie, no zároveň redukuje bohaté metadáta na niekoľko všeobecných polí.

Samotný prenos dát v agregácii sa dlhodobo opiera o *OAI-PMH*, ktoré Van de Sompel a Lagoze pôvodne navrhli pre akademické repozitáre, no rýchlo sa stalo základom pre Europeanu aj národné digitálne knižnice [@vandesompel_lagoze_oai_pmh_2002]. V praxi práve cez *OAI-PMH* dokáže Web umenia harvestovať údaje z ISG-CEDVU (a rovnako aj od iných poskytovateľov), pričom záznamy o dielach prichádzajú v LIDO alebo Dublin Core a autority sú publikované ako samostatné záznamy v štandarde ULAN. Tento „štandardový“ základ je dôvod, prečo môže byť harvester navrhnutý univerzálnejšie: nie je viazaný na jeden konkrétny interný systém, ale na dohodnuté rozhranie a mapovanie polí, ktoré sa opakuje u rôznych providerov.

Štandardy pôsobia na prvý pohľad nezáživne — sú to pravidlá, obmedzenia a formálne schémy — no v agregácii robia prácu, ktorú by sa dalo nazvať aj formou „kultúrnej diplomacie“. Umožňujú, aby sa inštitúcie s rôznymi dejinami katalogizácie a rôznymi lokálnymi praktikami dokázali rýchlo dohodnúť aspoň na tom, čo znamená základný opis objektu, ako sa dá preniesť a čo sa pri prenose nesmie stratiť. V ďalších častiach kapitoly sa ukáže, že online sprístupnenie nestojí len na samotných dátach, ale na tom, či dokážu prechádzať medzi vrstvami infraštruktúry bez straty významu a bez rozpadu na izolované záznamy.

### 3.2.3 Repozitáre: Fedora Commons, DSpace a digitálne knižnice

Repozitáre predstavovali technologický krok medzi „internou databázou“ a online zbierkou: umožnili spravovať viacero reprezentácií jedného objektu (súbor, metadáta, odvodeniny), verziovať ich a sprístupňovať ich rôznym aplikáciám. V praxi tým oddelili dve veci, ktoré sa v starších systémoch často miešali: ukladanie a správu digitálneho objektu na jednej strane a prezentačné vrstvy (weby, agregátory, API) na strane druhej.

V kultúrnych a akademických inštitúciách sa v tejto oblasti presadili najmä platformy typu *Fedora Commons* a *DSpace*. Fedora zaviedla koncept *komplexného digitálneho objektu*, dôraz na oddelenie dátového modelu od aplikácie a robustné verziovanie [@lagoze_fedora_2006]. DSpace sa naopak často používal ako „hotovejší“ repozitárový rámec pre publikovanie a prevádzku inštitucionálnych knižničných repozitárov. V oboch prípadoch je však dôležitý spoločný posun: repozitár nevzniká ako jednorazová webová aplikácia, ale ako infraštruktúra dlhodobej uchovateľnosti a prenositeľnosti dát medzi rôznymi prezentačnými vrstvami.

### 3.2.4 Autoritatívne zoznamy: ULAN, AAT, VIAF

Authority files vznikli v kontexte snahy o normalizáciu názvov a identít v múzejnom a knižničnom prostredí.

* *ULAN (Union List of Artist Names)* – Getty, od 1980s
* *AAT (Art & Architecture Thesaurus)* – Getty, od 1990s
* *VIAF (Virtual International Authority File)* – OCLC, 2003–

Ich úlohou je riešiť problém variantných zápisov a poskytnúť stabilné identifikátory pre osoby, miesta, témy a koncepty.

Ako upozorňuje Baca, authority files nie sú len technické riešenia: definujú, čo je v kultúrnom systéme evidovateľné, pomenovateľné a prepojiteľné [@baca_introduction_to_metadata_2016].

V kontexte múzejných zbierok sa tento rámec prejavuje veľmi konkrétne. Autoritatívne zoznamy spoluurčujú, ktoré kategórie a pojmy v systéme vôbec existujú a môžu byť použité pri opise diel. Zároveň definujú, akým spôsobom je možné diela navzájom prepájať, či už v rámci lokálnych databáz, alebo na úrovni nadnárodných agregátorov, ako je Europeana. Tým, že stabilizujú pomenovania a vzťahy medzi entitami, umožňujú čitateľnosť zbierky ako siete súvislostí, no zároveň predurčujú, aké typy naratívnych línií môžu byť z dostupných dát rekonštruované a ktoré zostávajú mimo dosahu systému.

### 3.2.5 Otvorené dáta a API: posun k platformovému mysleniu

Po roku 2010 sa digitalizácia kultúrneho dedičstva začala posúvať od samotného „zverejňovania“ k otázkam použiteľnosti: za akých podmienok sa dá s dátami pracovať, či sú znovupoužiteľné a technicky prístupné. Digitalizácia sa tak mení z publikačnej aktivity na infraštruktúrnu — nejde už len o to, *čo* je online, ale *ako* sa to dá ďalej čítať, kombinovať a zdieľať.

Tento posun súvisí s hnutím *OpenGLAM* [@openglam_principles_2018] a s praktickým zavádzaním jasných právnych označení. Nástroje ako *Creative Commons* či *RightsStatements.org* pomohli znížiť právnu neistotu, ktorá bránila znovupoužitiu digitalizovaných diel, a ukázali, že „otvorenosť“ je spektrum rozhodnutí — od opatrného sprístupnenia náhľadov až po plnohodnotné otvorenie vysokokvalitných dát [@valeonti_how_open_openglam_2019].

Z praxe lab.SNG viem, že otvorenosť je aj právno-komunikačná disciplína. Pri dielach vo verejnej doméne sme pôvodne používali licencie Creative Commons, no po konzultácii s *Creative Commons Slovensko* sme prešli na označenie statusu *Public Domain Mark 1.0* [@cc_public_domain_mark_1_0; @cc_slovakia]. Na Webe umenia sa toto označenie uvádza pri dielach, kde s tým materská galéria súhlasila [@webumenia_informacie].

Významný praktický posun prinieslo zavádzanie *API* — aplikačných rozhraní, ktoré umožnili, aby zbierka fungovala ako platforma. Ako uvádza Chan na príklade *Cooper Hewitt Museum*, API mení vzťah k zbierke: od prezerania k experimentu, vizualizácii a tvorbe nových aplikácií [@chan_api_2015]. Zároveň tým do sprístupňovania vstupujú technické pravidlá (vyhľadávanie, radenie, filtrovanie), ktoré majú priamy vplyv na to, aké súvislosti sa v dátach stávajú viditeľnými — a tým aj na to, kde sa v online zbierkach dá (alebo nedá) pracovať s naratívom.


## 3.3 Vývoj a prax vo svetovom kontexte

Digitálne zbierky sa v posledných dvoch dekádach formovali v rôznych geografických, technologických aj inštitucionálnych podmienkach. Napriek tejto diverzite vzniklo niekoľko projektov, ktoré zásadným spôsobom ovplyvnili premýšľanie o tom, čo môže online zbierka byť: či len reprezentáciou fyzickej kolekcie, alebo samostatným kultúrnym priestorom. Nasledujúce príklady nepredstavujú opis svetovej produkcie v úplnosti, ale výber kľúčových iniciatív, ktoré posunuli diskusiu o digitálnych zbierkach dopredu a vytvorili rámce, s ktorými sa stretáva aj slovenská prax.

### 3.3.1 Canadian Heritage Information Network (CHIN): národná infraštruktúra ako dlhodobý rámec

Jedným z najstarších a systematicky budovaných príkladov národnej infraštruktúry pre evidenciu a digitalizáciu kultúrneho dedičstva je Canadian Heritage Information Network (CHIN) v Kanade. Sieť vznikla už v roku 1972 ako iniciatíva federálnej vlády s cieľom podporiť múzeá a galérie pri štandardizácii dokumentácie, zdieľaní údajov a zavádzaní výpočtovej techniky do správy zbierok.

CHIN predstavuje výnimočný príklad toho, ako možno digitalizáciu chápať nie ako izolovaný technologický projekt, ale ako dlhodobú verejnú infraštruktúru. Už v 70. a 80. rokoch zohrával CHIN úlohu metodického centra: poskytoval odporúčania k dátovým štruktúram, podporoval školenia múzejných pracovníkov a vytváral spoločné rámce pre evidenciu zbierkových predmetov naprieč inštitúciami. V tomto zmysle sa CHIN stal jedným z prvých pokusov systematicky prepojiť múzejnú dokumentáciu, štandardy a výpočtovú techniku na národnej úrovni.

Dôležitým aspektom CHIN je aj jeho kontinuita. Na rozdiel od mnohých projektov, ktoré vznikli ako časovo ohraničené grantové iniciatívy, CHIN funguje desaťročia ako stabilná inštitucionálna opora pre múzejný sektor. Tento model umožnil postupný prechod od analógovej evidencie k databázovým systémom bez radikálnych zlomov, pričom sa zachovala odborná kontrola nad významom a kvalitou údajov.

Z pohľadu tejto dizertačnej práce je CHIN zaujímavý najmä ako kontrast k európskemu vývoju, kde sa národné riešenia často formovali neskôr alebo fragmentovane. Kanadský príklad ukazuje, že centralizovaná infraštruktúra nemusí viesť k uniformite obsahu, ale môže vytvoriť spoločný základ, na ktorom jednotlivé inštitúcie rozvíjajú vlastné interpretačné a prezentačné stratégie. Zároveň však potvrdzuje širší trend, ktorý sa objavuje aj v iných kontextoch: silný dôraz na evidenciu, štandardy a interoperabilitu vytvára robustné databázy, no naratívna vrstva zostáva často mimo primárneho záujmu týchto systémov.

### 3.3.2 Rijksmuseum: otvorenie zbierky ako verejnej služby

Rijksmuseum patrilo medzi prvé európske inštitúcie, ktoré digitalizáciu spojili s dôsledným otvorením zbierky. V roku 2012 sprístupnilo tisíce diel vo verejnej doméne vrátane vysokokvalitných reprodukcií, čo sa v európskom kontexte často označuje za prelomový moment otvoreného prístupu [@kapsalis_impact_open_access_2016]. Otvorenie tu nebolo chápané ako „strata kontroly“, ale ako rozšírenie verejnej služby: umožniť, aby zbierkové objekty cirkulovali v nových vzdelávacích a tvorivých kontextoch.

Služba *Rijksstudio* zároveň ukázala, že digitálne rozhranie môže podporovať aktívne používanie zbierky — tvorbu vlastných kolekcií, výrezov a vizuálnych interpretácií [@van_der_zee_rijksstudio_2013]. Vysoké rozlíšenie tu nefunguje len ako technický benefit, ale ako kurátorská voľba: detail umožňuje čítanie diel cez materiál, techniku či ikonografiu a posúva digitálnu skúsenosť od „náhľadu“ k práci s obrazom.

Za dôležitý sa dá považovať aj posun v chápaní publika. Ako zaznelo v internej komunikácii Rijksmusea a v odbornej diskusii, návštevníkom nie je len človek v budove, ale aj ten, kto vstupuje do kontaktu so zbierkou online — princíp, ktorý sa v skratke sumarizuje ako *“Always open online”* [@culture_geek_conference_2019]. Pre túto prácu je Rijksmuseum referenciou najmä preto, že spája otvorenosť dát s rozhraním, ktoré podporuje tvorivú a interpretačnú prácu so zbierkou.

### 3.3.3 Cooper Hewitt Labs: rozhranie ako výskum

Cooper Hewitt Smithsonian Design Museum je zaujímavé tým, že digitálnu prácu chápalo ako spoločný priestor kurátorského a technického uvažovania. V rokoch 2011–2015 tu pod vedením *Seb Chan* a *Aaron Cope* vzniklo interné laboratórium Cooper Hewitt Labs, ktoré fungovalo ako výskumno-vývojová jednotka v rámci múzea — výskum založený na iterácii, testovaní a práci „v prevádzke“ [@chan_api_2015].

Jedným zo zásadných výstupov bolo *Object API*, ktoré sprístupnilo zbierku ako dátovú vrstvu. Cooper Hewitt tak posunulo web z pozície „hlavného rozhrania“ na jednu z aplikácií postavených nad API, čo umožnilo rýchle experimentovanie s novými typmi rozhraní [@cope_everything_miscellaneous_2014]. Medzi známymi príkladmi je *Color Browser*, ktorý sprístupňuje zbierku cez vizuálne kvality (farbu) namiesto taxonomických kategórií a tým otvára inú logiku objavovania [@chan_api_2015].

Kľúčová bola aj transparentnosť procesu: publikovanie kódov, dátových modelov, poznámok a slepých uličiek. Tento étos otvoreného zdieľania (*“sharing is caring”*) posúval experimenty z interného know-how do odbornej diskusie a vytváral podmienky pre prenos praxe medzi inštitúciami [@van_kemenade_making_working_open_2016; @sanderhoff_sharing_caring_openness_2014]. Práve tento model — rozhranie ako výskum a dokumentovaný proces — je dôležitou referenciou aj pre kontext lab.SNG.

### 3.3.4 Science Museum Group: viditeľnosť ako kurátorská otázka

Science Museum Group upozornila na menej reflektovaný problém digitálnych zbierok: *nerovnomernú viditeľnosť objektov*. Experiment *Never Been Seen* vznikol ako pokus narušiť hierarchiu pozornosti, ktorá nevzniká len vo fyzických expozíciách, ale aj v samotných procesoch digitalizácie, v kvalite metadát a v logike online katalógov. Autori projektu tým pripomínajú, že digitalizácia často nevedome reprodukuje tradičné kurátorské výbery: ikonické alebo často vystavované objekty sa sprístupňujú skôr, zatiaľ čo veľká časť zbierok zostáva nezdigitalizovaná, nedostatočne opísaná alebo prakticky neviditeľná [@smg_neverbeenseen_blog].

Táto nerovnováha má priamy dopad na to, aký „obraz zbierky“ online rozhranie sprostredkuje. Naratív zbierky sa netvorí len z toho, *čo* inštitúcia vlastní, ale aj z toho, *čo* je dostupné, vyhľadateľné a interpretovateľné. Viditeľnosť sa tak stáva výsledkom priorít a obmedzení (kurátorských aj technických), nie automatickým dôsledkom publikovania.

Mechanizmus, ktorým *Never Been Seen* pracuje s „chvostom“ a hierarchiami pozornosti, rozoberám detailnejšie v časti 5.2.

### 3.3.5 ACMI: kurátorstvo, technológia a návštevnícka skúsenosť

Australian Centre for the Moving Image (ACMI) v posledných rokoch rozvinulo prístup, ktorý systematicky prepája fyzický výstavný priestor s digitálnymi nástrojmi a infraštruktúrou. Ako opisuje *Seb Chan*, ACMI pracuje s princípom *visitor-centred design*, v ktorom kurátorská práca zahŕňa nielen výber a interpretáciu objektov, ale aj návrh technických systémov, rozhraní a interakcií, ktoré formujú celkovú návštevnícku skúsenosť [@chan_acmi_renewal_lens_2020].

Jedným z kľúčových prvkov tohto prístupu je zariadenie *The Lens*, ktoré umožňuje návštevníkom „zbierať“ digitálne reprezentácie objektov priamo počas pohybu v expozícii a následne sa k nim vracať aj po odchode z múzea. The Lens tak nefunguje ako samostatná aplikácia, ale ako súčasť prepojeného systému, ktorý spája fyzickú návštevu s osobným digitálnym priestorom používateľa.

Seb Chan v reflexii prvých týždňov fungovania projektu zdôrazňuje, že ide nielen o nástroj pre návštevníkov, ale aj o spôsob, ako inštitúcia začína premýšľať o dátach a interakciách, ktoré počas návštevy vznikajú:

> *“Moving through the galleries visitors use the Lens to collect what they are interested in to take home and, if they are interested, look at later. […] The Lens and the data it generates is not neutral.”*
> (Chan, 2021)

Tento dôraz na „zbieranie“ objektov počas pohybu v priestore posúva ťažisko z centrálne organizovaného katalógu na *individuálnu trajektóriu návštevníka*. Digitálna zbierka tu nevzniká ako autoritatívny výber inštitúcie, ale ako osobný záznam skúsenosti, ku ktorému sa možno opakovane vracať a ktorý nadväzuje na fyzický zážitok z výstavy.

Práve tento princíp sa stal dôležitým referenčným bodom aj pre neskoršie experimenty v prostredí SNG, najmä pri návrhu aplikácie *Atlas SNG*. Myšlienka, že návštevník si môže počas prehliadky vytvárať vlastnú digitálnu stopu – a pokračovať v nej aj mimo galérie – tu funguje ako prirodzené rozšírenie výstavnej skúsenosti, nie ako paralelný digitálny produkt.

ACMI je v tomto kontexte zaujímavé aj tým, že digitálne nástroje nevystupujú ako dodatočná „vrstva“ nad fyzickou expozíciou, ale ako jej integrálna súčasť. Digitálne a fyzické prostredie sa tu vzájomne podmieňujú a spoločne formujú kurátorský rámec aj návštevnícku skúsenosť – čo predstavuje dôležitý posun v chápaní digitálnych zbierok ako aktívnej súčasti múzejnej praxe.

### 3.3.6 Otvorené vývojové prístupy v Tate, MoMA a ďalších inštitúciách

Viaceré inštitúcie — Tate, MoMA, Walker Art Center, či The Getty — pracujú systematicky s otvoreným publikovaním kódu, dátových modelov a dokumentácie.
MoMA sprístupňuje svoje dátové sady a schémy na GitHube [@moma_github_data_project_2015], Tate zverejňuje podrobné metodiky digitalizácie a workflowy výstavných projektov [@tate_digital_transformation_reports_2017] a Walker Art Center vyvíjal open-source publikačné platformy, ktoré ovplyvnili celý múzejno-publikačný ekosystém [@walker_open_source_publishing_2008_2015].

Tieto prístupy ukazujú, že digitálne kurátorstvo nie je iba otázkou výsledného webu, ale aj transparentnosti procesov, ktoré k nemu vedú. Jadrom týchto iniciatív je vedomie, že technická infraštruktúra je súčasťou kultúrneho dedičstva, nie len jeho servisnou vrstvou.

### 3.3.7 Artsy: rozhranie, vzťahy a otvorený vývoj mimo inštitúcií

Popri verejných múzeách a galériách zohrávali v rovnakom období významnú úlohu aj digitálne platformy vznikajúce mimo inštitucionálneho rámca. Jedným z najviditeľnejších príkladov je *Artsy*, komerčná online platforma zameraná na sprostredkovanie súčasného umenia, galérií, aukčných domov a umeleckých veľtrhov. Artsy funguje ako agregátor dát z rôznych zdrojov – vrátane komerčných galérií aj verejných inštitúcií – ktoré prepája v jednotnom rozhraní určenom primárne na objavovanie a sledovanie umenia.

Z pohľadu digitálneho kurátorstva bol Artsy v čase svojho vzniku zaujímavý najmä tým, že presunul dôraz z tradičnej katalogizácie na *vzťahy, asociácie a používateľské správanie*. Rozhranie umožňovalo používateľom „sledovať“ obľúbených autorov, umelecké smery či inštitúcie a na tomto základe objavovať ďalšie prepojené mená a diela. Objavovanie umenia tu neprebiehalo prostredníctvom pevne daných taxonómií, ale cez sieť prepojení, odporúčaní a osobných preferencií.

V kontexte tejto kapitoly je Artsy dôležité aj ako príklad platformy, ktorá veľmi skoro pracovala s rozhraním ako *implicitným kurátorským nástrojom*. Spôsob zobrazovania, radenia a prepájania diel vytváral súbory vzťahov, ktoré fungovali ako nepriame naratívy o súčasnom umení – bez jedného centrálneho výkladu, no s množstvom paralelných interpretačných ciest. Tento prístup mal výrazný ohlas a ovplyvnil očakávania publika voči digitálnym rozhraniam pracujúcim s umeleckými dátami.

Osobitnú pozornosť si zaslúži aj vývojárska kultúra Artsy. Vtedajší vedúci vývoja *Daniel Doubrovkine* (známy ako DBlock) v eseji *Becoming Open Source by Default* formuloval postoj, ktorý presahuje technickú rovinu licencovania a dotýka sa samotného spôsobu práce s kultúrnymi dátami:

> “We believe that if we’re building software to help people understand and discover art, then the work we do should be open, shareable, and reusable by others.”
> — Doubrovkine, 2015 [@doubrovkine_open_source_2015]

Otvorený prístup tu nie je chápaný len ako praktické riešenie, ale ako hodnotový rámec, ktorý zahŕňa transparentnosť rozhodnutí, zdieľanie procesu a možnosť, aby sa k vývoju mohli vzťahovať aj aktéri mimo pôvodného tímu. Tento postoj je pozoruhodný najmä v porovnaní s inštitucionálnymi príkladmi opísanými v predchádzajúcich podkapitolách. Kým múzeá ako Tate, MoMA či Walker Art Center otvárali svoje dáta a kód ako súčasť verejnej misie, Artsy k podobným princípom dospelo z prostredia komerčnej technologickej platformy.

Pre túto prácu je Artsy relevantné predovšetkým ako *externý referenčný bod*, ktorý v rovnakom čase ukázal, že rozhranie, práca so vzťahmi a otvorený vývoj môžu zásadne ovplyvniť spôsob, akým ľudia umenie objavujú a interpretujú online. Skúsenosť Artsy zároveň naznačuje, že niektoré inovácie v oblasti používateľskej skúsenosti a práce s dátami vznikali mimo múzeí – a až následne začali rezonovať aj v inštitucionálnom kontexte.

### 3.3.8 Syntéza: digitálne zbierky ako infraštruktúry významu

Uvedené príklady ukazujú, že digitálne zbierky sa postupne prestávajú chápať ako statické katalógy a čoraz častejšie fungujú ako platformy, ktoré umožňujú rôzne spôsoby čítania, prepájania a interpretácie objektov. Nejde o jednu „správnu“ formu prezentácie, ale o to, či rozhranie vytvára podmienky pre vznik rozmanitých interpretačných ciest.

Rozhranie pritom nie je neutrálna vrstva. Spôsob, akým sú objekty radené, filtrované, prepojované alebo zvýrazňované, priamo ovplyvňuje, aké vzťahy sa dajú v zbierke objaviť — a ktoré naopak zostanú skryté. Technológia (databázy, API, vyhľadávanie, vizualizácie) tu vstupuje do interpretácie ako aktívny sprostredkovateľ, nie len ako nástroj.

Táto kapitola preto posúva dôraz od otázky „koľko diel je online“ k otázke „aké typy porozumenia rozhranie umožňuje“. Práve tým sa otvára most k československému kontextu, kde sa digitalizácia vyvíjala iným tempom a pod inými tlakmi, no napokon viedla k prekvapivo robustnej infraštruktúre.


## 3.4 Československý kontext

### 3.4.0 Úvod: Špecifiká vývoja, ktorý sa nedá importovať

Digitálne sprístupňovanie zbierok umenia na Slovensku a v Česku sa formovalo v prostredí, ktoré sa výrazne odlišovalo od západoeurópskych múzeí. Vývoj bol prerušovaný politickými zásahmi, limitmi infraštruktúry a neskôr aj turbulenciami transformácie po roku 1989. Neznamená to „slabšiu“ digitálnu kultúru, skôr odlišnú a nerovnomernú — s vlastnými paradoxmi a nečakanými kontinuitami.

Jednou z téz tejto kapitoly je, že práve historická vrstvenosť a lokálne kompromisy vytvorili základ infraštruktúry, na ktorej dnes stojí Web umenia. Preto má zmysel československý príbeh načrtnúť osobitne: od analógovej centrálnej evidencie, cez predinternetovú digitalizáciu až po vznik online rozhraní.

### 3.4.1 Normalizačné korene CEDVU (1970s–1990s)

#### 3.4.1.1 Impulz štátu a potreba centrálneho prehľadu

Vznik Centrálnej evidencie diel výtvarného umenia (CEDVU) v 70. rokoch nadviazal na širší tlak na štandardizáciu evidencie a na potrebu centrálneho prehľadu nad zbierkovými fondmi v podmienkach normalizácie. Nešlo o digitálny projekt, ale o *inštitucionálny rámec, ktorý mal zjednotiť opis a umožniť porovnateľný súpis zbierkových diel* naprieč galériami (a vtedy aj ďalšími pamäťovými inštitúciami).

Kľúčovým nástrojom sa stal *Centrálny katalóg* so štandardizovaným odborným popisom a obrazovou dokumentáciou. Táto kombinácia textu a obrazu nastavila praktickú „dvojkoľajnosť“ evidencie, ktorá sa neskôr preniesla aj do digitálnych systémov: údaje slúžia na identifikáciu a kontrolu, no vizuálna stopa zostáva nevyhnutná pre reálnu prácu s dielom. Podľa spomienok Jany Bahurinskej práve táto skúsenosť podporovala argument, že centrálna evidencia nemá byť iba textovým zoznamom, ale má udržiavať aj obrazovú vrstvu.

#### 3.4.1.2 Analógová kartotéka ako priestor práce a poznania

Dnešný používateľ digitálnych zbierok si len ťažko predstaví materiálnu náročnosť práce s analógovou dokumentáciou. V SNG sa od 70. rokov budoval papierový *systém dokumentačných kariet* (centrálna kartotéka), v ktorom každý záznam pozostával z dokumentačnej karty (popis diela) a priloženej fotografie (často čiernobielej). Obrazová zložka sa dopĺňala priebežne a ostávala súčasťou evidenčnej logiky aj pri neskorších technologických zmenách.

Kartotéka bola *priestorom práce*, nie len úložiskom informácií: slúžila na overovanie údajov, porovnávanie záznamov a návraty k starším zápisom. Dôležité je, že kartotéka nezanikla s príchodom databáz. Podľa spomienok Bahurinskej sa digitálna evidencia dlho správala ako vrstva “nad” kartotékou: staršie ručne písané kartičky zostávali v zásuvkách a nové záznamy sa do kartotéky dopĺňali aj formou tlače z elektronického systému. Tento súbeh je čitateľný aj materiálne — vedľa “kartónových” kariet sa objavujú tlačené lístky. Kartotéka tak pretrvávala ako paralelná referenčná a kontrolná vrstva, nie ako nostalgický artefakt. 

Ak sa na tento vývoj pozrieme ako na kontinuálnu dátovú líniu, dá sa zhrnúť ako sled prepojených vrstiev: *kartotéka → Micro CDS/ISIS → ISG-CEDVU → Web umenia*. Táto kontinuita je dôležitá najmä preto, že vysvetľuje, prečo bolo možné neskôr publikovať (a postupne rozvíjať) verejné rozhranie bez úplného “reštartu” evidencie: online projekty zdedili štruktúru polí, terminológiu aj praktické kompromisy starších systémov, ktoré pôvodne vznikali pre internú odbornú prácu.

### 3.4.1.3 Predinternetová digitalizácia: Micro CDS/ISIS a prvé databázy

V 90. rokoch sa v Slovenskej národnej galérii pristúpilo k systematickému prepísaniu údajov z papierových dokumentačných kariet do elektronickej podoby. Kľúčovú rolu v tomto procese zohral systém Micro CDS/ISIS, distribuovaný organizáciou UNESCO. Softvér bol pre galérie a múzeá dostupný bezplatne, čo bolo v podmienkach postsocialistických inštitúcií zásadné: umožnil začať s elektronickou evidenciou bez investícií do licenčne náročných riešení.

Micro CDS/ISIS bol pôvodne navrhnutý pre potreby knižníc, no práve vďaka tomu bol na svoju dobu mimoriadne dobre vybavený nástrojmi na vyhľadávanie. Fungoval plne offline, najprv ako lokálna PC verzia, neskôr aj v sieťovej podobe. Podľa Bahurinskej sa *CDS/ISIS* paralelne používal aj v knižnici SNG (v upravenej podobe), čo zvyšovalo lokálnu kompetenciu pracovať so systémom a jeho logikou. 

Samotný prepis bol výrazne kolektívnym a pedagogickým projektom. Na prepise dokumentačných kariet sa podieľali študenti dejín umenia, knihovedy a Vysokej školy výtvarných umení, ktorí údaje prepisovali brigádnicky na úkolové mzdy. Podľa spomienok Bahurinskej sa popri tom vyvinul interný režim odovzdávania a kontroly: dáta sa priebežne sťahovali, kontrolovali a centrálne zhromažďovali ešte v “predsieťovej” logistike (diskety, centrálne úložisko).
Z tejto skúsenosti zároveň vyplýva krehkosť raného digitálu: pri zlyhaní úložiska išlo o krízový moment, no podľa autorizovanej korekcie sa dáta podarilo zachrániť expertmi v zahraničí (nebolo potrebné rekonštruovať databázu z diskiet). 

Dôležitým momentom je aj to, že CDS/ISIS nebol len interným nástrojom SNG. Podľa Bahurinskej sa lokálne databázy distribuovali aj do regionálnych galérií, ktoré v nich pracovali, opravovali a dopĺňali údaje; aktualizácie prebiehali periodicky a boli závislé od metodickej podpory a školení. Už v 90. rokoch sa tak popri centrálnej databáze formovala aj sieťová prax, ktorá predznamenala neskorší model klientov napojených na centrálne riešenie. 

Elektronická evidencia v prostredí Micro CDS/ISIS ešte nepredstavovala “digitálne zbierky” v dnešnom zmysle slova. Išlo o interný nástroj bez verejného rozhrania; jeho význam nespočíval v prezentácii, ale v zmene operability dát — údaje sa stali strojovo spracovateľnými a presúvateľnými v jednotnej štruktúre. V praxi navyše táto vrstva pretrvala dlhšie, než by naznačovalo “90s” datovanie: podľa Bahurinskej sa s *ISIS* pracovalo až do polovice 2000s, pričom ako zlomový bod spomína rok 2005. 

### 3.4.2 ISG-CEDVU: štandardizácia a profesionalizácia (2000s)

Po dlhom období analógovej evidencie a prvej elektronickej vrstvy v Micro CDS/ISIS priniesla prvá dekáda 21. storočia zásadnú zmenu. Slovenská národná galéria začala budovať *ISG-CEDVU*, moderný informačný systém galérií, ktorý mal umožniť jednotnú, profesionálnu a dlhodobo udržateľnú evidenciu diel výtvarného umenia na národnej úrovni. Hoci legislatívne poverenie existovalo už od 70. rokov, až teraz sa vytvorili technické a organizačné podmienky na to, aby sa evidencia stala skutočnou infraštruktúrou.

#### Od kartotéky k digitálnemu jadru

Základom novej platformy bola databáza údajov, ktorá vznikla v 90. rokoch prepisom analógových dokumentačných kariet do Micro CDS/ISIS. Samotný prepis neprebiehal ako interná administratívna činnosť galérie, ale ako rozsiahly externý projekt, na ktorom sa za honoráre podieľali najmä študenti dejín umenia, knihovedy a Vysokej školy výtvarných umení. Ich úlohou bolo manuálne prepísať obsah kartotékových lístkov do elektronickej podoby.

Na túto fázu však bezprostredne nadväzovala odborná práca pracovníkov oddelenia CEDVU, ktorí zabezpečovali kontrolu, verifikáciu a zjednocovanie údajov. Ako opisujú Bohumelová a Kusá, pôvodné dokumentačné kartičky obsahovali veľké množstvo nesúrodých a neštandardizovaných informácií — rozdielne poradie mien autorov, rôzne spôsoby zápisu dátumov, nejednotné uvádzanie rozmerov, techník či názvov diel. Prepis kartotéky do elektronickej podoby preto neznamenal jednoduchý transfer existujúcich záznamov, ale vyžadoval systematické rozhodovanie o tom, ktoré údaje sú relevantné, ako majú byť zapísané a v akej podobe budú ďalej použiteľné v databázovom systéme [@bohumelova_ritual_muzea_digitalnom_2015, s. 39–41].

Elektronická databáza tak nevznikala ako pasívny odraz analógovej evidencie, ale ako postupne kultivovaný dátový korpus, v ktorom bolo potrebné analogické nepresnosti aktívne identifikovať, riešiť a nahrádzať jednotnými pravidlami popisu. Tento proces zároveň predznamenal neskoršie chápanie evidencie nie ako statického záznamu, ale ako infraštruktúry, ktorá umožňuje ďalšie spracovanie, prepojovanie a sprístupňovanie zbierkových údajov v digitálnom prostredí.

Ešte pred samotným prechodom na ISG-CEDVU prebehla intenzívna harmonizácia dát, zameraná najmä na zjednocovanie terminológie, autorít a tezaurických hesiel. Podľa spomienok Bahurinskej sa významná časť prípravy týkala práve „vyhľadávacích slovníkov“ v *ISIS* (tezaury a autority), ktoré bolo potrebné prečistiť a zjednotiť tak, aby migrácia preniesla čo najviac významu, nie len text.

Napriek tejto príprave bol samotný prenos dát z prostredia Micro CDS/ISIS do CEDVU technicky aj metodicky komplikovaný, čo potvrdzuje, že išlo o transformáciu medzi dvoma rozdielnymi generáciami evidenčných systémov, nie o jednoduchý import. Bahurinská spomína „deň D“ konverzie ako moment, keď sa ukázali limity mapovania dát a časť problémov sa do ďalšej prevádzky preniesla ako dlhodobé „artefakty“ (napr. chybné znaky či nekonzistentne skonvertované položky), ktoré sa neskôr pripomínali aj pri automatizovaných spracovaniach a exportoch.

Práve vďaka tomuto viacstupňovému procesu — manuálnemu prepisu, odbornej kontrole, systematickej harmonizácii a náročnej migrácii — však vzniklo digitálne jadro evidencie, na ktorom dnes stojí Centralizovaný katalóg diel. Elektronická evidencia vytvorená v Micro CDS/ISIS sa tak nestala len prechodným riešením, ale zásadnou infraštruktúrnou vrstvou, ktorá umožnila kontinuitu dát pri prechode na CEDVU a neskôr aj ich využitie v online projektoch.

#### Normy, ktorým rozumie celá krajina

Vstup do 2000s si vyžiadal nielen nový softvér, ale aj aktualizáciu metodických zásad. SNG preto pripravila publikáciu *Pravidlá katalogizácie umeleckých diel*, ktorá systematicky definovala povinné a voliteľné polia, spôsob zapisovania údajov, autoritné termíny aj metodiku práce s atribúciami, dielami bez autora či zložitými prípadmi ikonografie [@ondrejcekova_pravidla_katalogizacie_1979].
Na rozdiel od skorších predpisov išlo o text vytvorený s vedomím, že údaje budú spracovávané digitálne, prenášané medzi inštitúciami a pravdepodobne aj zdieľané mimo odborného prostredia. Podkladom boli medzinárodné odporúčania CIDOC–ICOM aj skúsenosti pracoviska CEDVU z 90. rokov.

#### Vznik centralizovaného systému

Nové rozhranie ISG-CEDVU umožnilo po prvý raz pracovať so spoločnou databázou na jednom serveri. Regionálne galérie sa do nej pripájali pomocou klientských aplikácií a zdieľali rovnaký systém polí, rovnaké pravidlá a rovnaké autority. V praktickej rovine to nadviazalo na predchádzajúcu sieťovú prax z *ISIS* (lokálne databázy, aktualizácie, metodická podpora), ale posunulo ju do režimu centrálne riadenej infraštruktúry.

Do vývoja a nasadenia sa premietala aj dodávateľská kontinuita: podľa spomienok Bahurinskej vznikol najprv prototyp pripravovaný v prostredí IBM, pričom finálna implementácia (resp. ďalší vývoj) bola realizovaná dodávateľom EEA.
V rámci interného tímu zohrávali dôležitú rolu aj konkrétne kompetencie: Vladimír Hergott sa spája najmä s kontrolou správnosti zápisu údajov v ISG-CEDVU, s manažovaním pravidiel sieťovej prevádzky a so školeniami pracovníkov galérií; Michal Čudrnák s formuláciou špecifikácií a vývojovými debatami v období prípravy systému.

Zmena architektúry mala aj praktické dôsledky: odstránila lokálne rozdiely, ktoré vznikali v izolovaných systémoch, a umožnila školenia, metodickú podporu a pravidelné revízie. Evidencia sa stala spoločnou úlohou, nie len súborom samostatných praktík.

#### Predpoklad pre verejné sprístupnenie

Keď bol ISG-CEDVU plne v prevádzke, objavil sa nový, dovtedy nepredstaviteľný scenár. Ak sa galérie dokázali pripájať k centrálnej databáze na diaľku a pracovať s rovnakým súborom údajov, znamenalo to, že popisné dáta existujú v podobe, ktorú možno automaticky exportovať.
V tejto chvíli sa otvorila otázka, ktorá neskôr povedie k vzniku Webu umenia: *môže mať verejnosť prístup aspoň k časti údajov, ktoré sa dovtedy považovali za interné?*
Nebolo to výsledkom strategického plánovania, ale prirodzený dôsledok každodennej práce s novým systémom. Pracovníci, ktorí dovtedy evidenciu vnímali ako komunikačný nástroj medzi kurátormi, dokumentátormi a depozitom, zrazu videli, že dáta možno automaticky zdieľať, aktualizovať a publikovať.

#### Dualita, ktorá pretrvala

Aj po zavedení ISG-CEDVU ostala analógová kartotéka zachovaná ako oficiálny výstup evidencie — nie z nostalgie, ale z kombinácie potreby trvalého záznamu a inštitucionálnej praxe. Nové kartičky sa tlačia priamo z dát uložených v ISG-CEDVU, čím sa fyzický katalóg ďalej dopĺňa. V praxi tak vznikol stav, v ktorom *analógová a digitálna evidencia existujú paralelne*. Staršie kartičky sú svedectvom o vývoji popisu diel v 70. a 80. rokoch, novšie predstavujú tlačovú verziu súčasnej databázy. Tento súbeh dvoch médií umožňuje pozorovať kontinuitu aj diskontinuity v uvažovaní o dielach — od ručne písaných lístkov až po digitálne autority.

Centralizovaný katalóg diel, aký dnes poskytuje SNG, je výsledkom niekoľkých vrstiev evidencie — od kartotéky cez Micro CDS/ISIS a CEDVU až po dnešné publikované rozhranie, ktoré sprístupňuje údaje verejnosti v prehľadnej a vyhľadávateľnej forme.

### 3.4.3 Slovakiana ako paralelná cesta (2013–2015)

Slovakiana vznikla ako národný projekt realizovaný v rámci operačných programov, s ambíciou vytvoriť centrálny agregátor digitálneho kultúrneho dedičstva na Slovensku. Jej koncepcia vychádzala z mandátu štátu a mala výrazne „top-down“ charakter – bola navrhnutá ako jednotná infraštruktúra s vyšším rozpočtom a s povinnosťou zahrnúť široké spektrum pamäťových inštitúcií, od knižníc a archívov až po múzeá a galérie. Tento rámec určoval nielen technické parametre projektu, ale aj spôsob jeho riadenia a tempa implementácie.

Z pohľadu galérií priniesla Slovakiana viacero konkrétnych prínosov. Predovšetkým vytvorila jednotný technický rámec pre prípravu a odovzdávanie dát do Europeany, čím zjednodušila proces zapojenia slovenských inštitúcií do európskeho prostredia. Zároveň ponúkala stabilnú infraštruktúru pre centrálnu prezentáciu kultúrneho dedičstva, ktorá bola dlhodobo udržiavaná a inštitucionálne garantovaná. V neposlednom rade prispela k zvýšeniu viditeľnosti slovenského kultúrneho obsahu v medzinárodnom kontexte, najmä prostredníctvom jeho sprostredkovania na európskej úrovni.

Slovakiana však vznikala paralelne s Webom umenia, ktorý predstavoval zásadne odlišný typ iniciatívy. Kým Slovakiana bola budovaná zhora ako centralizovaný národný projekt, Web umenia vznikal zdola, vychádzajúc z konkrétnych potrieb Slovenskej národnej galérie a jej práce so zbierkami. Tento „bottom-up“ prístup umožňoval rýchlejšie experimentovanie, flexibilnejšie reagovanie na interné potreby inštitúcie a intenzívnejšie prepojenie technického vývoja s kurátorským a výskumným kontextom. Paralelná existencia oboch projektov tak ilustruje dve rozdielne cesty digitalizácie kultúrneho dedičstva, ktoré sa v danom období na Slovensku rozvíjali vedľa seba, bez priameho zlúčenia, no s čiastočne prekryvnými cieľmi.


### 3.4.4 Český kontext: Artlist.cz a CEAD.space

Tieto české projekty neboli priamymi technologickými predlohami Web umenia, ale významným spôsobom *formovali predstavu o tom, čo môže digitálna platforma pre umenie byť* – aký typ obsahu ponúka, akú mieru autority si nárokuje a akým spôsobom sprostredkúva vzťahy medzi dielami, autormi a historickým kontextom.

V českom prostredí sa v priebehu 2000s a 2010s objavili platformy, ktoré možno chápať ako paralelné k vývoju v SNG – nie z hľadiska technickej architektúry, ale *typologicky a koncepčne*. Dva z nich sú pre túto prácu obzvlášť relevantné: *Artlist.cz* a *CEAD.space*.

#### Artlist.cz

Projekt Umeleckoprůmyslového musea v Prahe bol od začiatku koncipovaný ako *kurátorsko-encyklopedická databáza* zameraná na výtvarné umenie v Česku. Obsahuje autorské heslá, biografie, základné bibliografie a prepojenia na diela a inštitúcie. Na rozdiel od čisto evidenčných systémov pracuje s jasne formulovaným hlasom a odbornou autoritou – databáza tu nevystupuje ako neutrálne úložisko, ale ako nástroj odborného sprostredkovania.

Pre slovenský kontext – a neskôr aj pre návrh Web umenia – bol Artlist dôležitý najmä z hľadiska *používateľského rozhrania a práce s autoritami*. Jednoduchý a zrozumiteľný zoznam autorov, prehľadné triedenie a možnosť filtrovania podľa abecedy predstavovali funkčný štandard, ktorý sa ukázal ako mimoriadne robustný a čitateľný. Práve tento typ rozhrania – bez nadbytočných vizuálnych alebo technických vrstiev – sa stal jedným z priamych referenčných bodov pri návrhu autoritných záznamov a navigácie v prostredí Web umenia.

Artlist tým zároveň demonštroval, že aj relatívne jednoduchá databázová štruktúra môže fungovať ako silný nástroj orientácie v umeleckom poli, pokiaľ je podporená konzistentnou terminológiou, jasnou informačnou architektúrou a odbornou redakčnou kontrolou.

#### CEAD.space

Projekt *CEAD.space* (Central European Art Database), realizovaný Centrom súčasného umenia DOX, predstavuje odlišný, no komplementárny prístup. CEAD bol koncipovaný ako *archívno-výskumná platforma* so zameraním na stredoeurópske umenie druhej polovice 20. storočia, s dôrazom na konceptuálne, intermediálne a akčné formy tvorby.

Na rozdiel od Artlistu, ktorý buduje encyklopedickú autoritu, CEAD pracuje s *výberovým tematickým rámcom*. Zameriava sa na konkrétny historický a geografický kontext a cielene agreguje dáta z viacerých inštitúcií, archívov a súkromných zbierok. Diela sú tu čítané nie izolovane, ale vo vzťahoch – ako súčasť spoločného kultúrneho a politického prostredia strednej Európy.

Pre SNG bol CEAD dôležitý aj z hľadiska priamej odbornej výmeny. V roku 2015 sa uskutočnilo kolokvium k projektu CEAD v Olomouci, na ktorom sa zúčastnili aj pracovníci SNG. Na projekte sa podieľal aj *Dušan Barok*, ktorého práca s digitálnymi archívmi a publikačnými stratégiami rezonuje aj v ďalších častiach tejto dizertácie.

Z technologického hľadiska je zaujímavé, že CEAD využíva open-source systém *CollectiveAccess*, čo umožnilo flexibilnú prácu s rôznorodými typmi objektov, dokumentov a vzťahov. Tento aspekt bol dôležitý nie ako konkrétna technologická predloha, ale ako dôkaz, že otvorené nástroje dokážu podporiť komplexné výskumné a archívne projekty aj mimo veľkých národných inštitúcií.

### 3.4.5 Dvojkoľajnosť digitálnej transformácie: paralelné projekty, odlišné logiky

Jednou z charakteristík slovenského vývoja digitálnych zbierok je paralelné vznikanie dvoch typov projektov, ktoré sledovali odlišné ciele a fungovali v rozdielnych organizačných logikách. Na jednej strane stáli národné agregátorové iniciatívy, orientované na štandardizáciu, centralizáciu a reprezentáciu kultúrneho dedičstva na úrovni štátu. Na druhej strane vznikali inštitucionálne projekty, viazané na konkrétne zbierky a potreby jednotlivých organizácií, s dôrazom na experimentovanie a postupný vývoj.

Tento paralelizmus neviedol k jednoduchej duplicite riešení, ale skôr k vzniku viacvrstvového prostredia, v ktorom bolo možné sledovať rozdielne prístupy k práci so zbierkami. Zatiaľ čo agregátorové projekty kládli dôraz na plošnú reprezentáciu a interoperabilitu dát, inštitucionálne iniciatívy sa mohli sústrediť na interpretačnú hĺbku, flexibilitu rozhrania a hľadanie vlastného jazyka sprístupňovania. Rozdiely medzi agregáciou a interpretáciou, medzi štandardizáciou a flexibilitou, sa tak neprejavovali ako protikladné stratégie, ale ako paralelné odpovede na rozdielne typy potrieb.

V tomto kontexte mohol Web umenia vznikať relatívne organicky, ako projekt vyrastajúci „odspodu“ z konkrétnej inštitucionálnej praxe. Absencia silného projektového rámca a nižšia miera programovej zaviazanosti vytvárali priestor pre iteráciu, experimentovanie a postupné vyzrievanie rozhrania aj dátových rozhodnutí. Skúsenosť z prostredia SNG naznačuje, že práve tento typ pracovných podmienok umožňuje, aby sa digitálne riešenia formovali ako dlhodobejší proces, a nie ako jednorazový výstup viazaný na projektové obdobie.

### 3.4.6 Vznik lab.SNG (2010–2015): in-house ako stratégia {#sec:labsng-vznik}

#### 3.4.6.1 Prečo in-house?

Jednou z dôležitých čŕt slovenského príbehu je rozhodnutie SNG vytvoriť *vlastný interný tím vývoja*.
Toto riešenie nebolo typické — väčšina galérií v Európe využívala externé dodávateľské firmy.

Dôvody boli najmä tri: potrebná blízkosť ku kurátorom (aby vývojári rozumeli praxi interpretácie a práce so zbierkami), uchovávanie know-how priamo v inštitúcii (digitálne projekty potrebujú dlhú kontinuitu) a napokon inšpirácie zo sveta (Cooper Hewitt Labs, Rijksmuseum, Brooklyn Museum), ktoré ukazovali, že aj v kultúrnej inštitúcii môže fungovať výskumno-vývojové prostredie.

#### 3.4.6.2 Prvé experimenty: SoundWalk a mikrostránky

Vznik lab.SNG nebol administratívnym rozhodnutím, ale *postupným formovaním praxe*.
Prvým projektom bola mobilná aplikácia SoundWalk pre Kaštieľ Strážky, ktorej produkcia ukázala, ako potrebná je koordinácia kurátorov, pedagogiky, editorov a vývojárov.

Nasledovali „mikrostránky“ pre výstavy — prototypové prostredia, kde sme testovali harvesting dát z CEDVU, mapové zobrazenia diel, časové osi, prácu s vysokým rozlíšením aj vyhľadávanie.

Vývoj bol iteratívny, experimentálny a často priamo viazaný na konkrétne kurátorské zadania. Ako som postupne zisťoval, tento proces nebol len technologický: menil spôsob, akým inštitúcia premýšľa o digitálnom obsahu.

Osobitnú rolu v tejto fáze zohral prototyp k výstave *Dve krajiny* (<https://dvekrajiny.sng.sk>), ktorý mimochodom dodnes beží ako samostatný web. Vznikol v situácii, keď ešte nebolo samozrejmé, že SNG „má na to“ nahradiť existujúcu verziu Webu umenia vlastným vývojom; prototyp preto slúžil aj ako praktický argument dovnútra inštitúcie. Od začiatku sa vyvíjal s ambíciou, aby sa stal základom budúceho Webu umenia: implementovali sa v ňom kľúčové vlastnosti ako fazetové filtrovanie, kolekcie a katalógové prehliadanie.

Už vtedy sme riešili aj import dát cez OAI-PMH; interný importér sme volali „*spice harvester*“ (v repozitári je aj obrázok: <https://github.com/SlovakNationalGallery/webumenia.sk/blob/main/public/images/spice_harvester.jpg>). Dôležitejšie než interný názov je fakt, že tým vznikol opakovateľný most medzi evidenciou a verejným rozhraním.

Pri importovaní väčších setov diel prototyp rýchlo narážal na limity výkonu relačnej databázy, najmä pri kombinácii filtrovania a fulltextu. Práve tu sa začal rodiť plán nasadiť *Elasticsearch* ako vyhľadávaciu vrstvu; tejto téme sa vraciam v kapitole 4.

#### 3.4.6.3 Zrodenie novej verzie Web umenia

Nová verzia Web umenia (spustená v roku 2016) bola výsledkom uvedomenia, že nestačí „zobraziť dáta“. Potrebné bolo prepájať diela do kontextu, pracovať s vizuálnymi vzťahmi, rozprávať kurátorské príbehy a vytvárať používateľsky prívetivé rozhranie.

Web umenia bol — a naďalej je — *laboratórnym projektom*, v ktorom architektúra, dizajn a kurátorstvo spolu vytvárajú nový druh naratívneho priestoru. Podrobnejšie sa k tomu vraciam v časti 3.5, kde ťažisko lab.SNG rámujem priamo cez vývoj Webu umenia.

### 3.4.7 Zhrnutie: slovenský príbeh ako paradox a výhoda

Slovenský vývoj digitálnych zbierok je pozoruhodný tým, že kombinuje tri vrstvy, ktoré sa inde v Európe bežne nevyskytujú pohromade:

1. *historicky silná centrálna evidencia*,
2. *národná agregátorská platforma*,
3. *inštitucionálne laboratórium so schopnosťou in-house vývoja*.

Tieto vrstvy vznikali nezávisle, z odlišných dôvodov, s rôznymi motiváciami — no práve ich prepojenie vytvorilo základ pre výskum a inovácie, ktoré by inde neboli samozrejmé.

Z dnešného pohľadu je fascinujúce, že mnohé z toho, čo sa ukazuje ako kľúčové pre digitálne kurátorstvo (štandardizované metadáta, stabilné identifikátory, jednotné slovníky, kvalitná evidencia), vzniklo ešte v období, keď cieľom nebola digitálna interpretácia, ale *administratívna dôslednosť*.

Je to paradox dejín:
*to, čo vzniklo v období normlizácie, dnes umožňuje otvorenosť, experimentovanie a kreatívny výskum*.

Príbeh Web umenia tak nie je len príbehom technologického projektu, ale aj príbehom kultúrnej pamäte, ktorá sa — niekedy nečakane — ukazuje ako moderná infraštruktúra pre digitálny vek.

## 3.5 Príbeh Web umenia

Vznik Web umenia často pôsobí ako prirodzené pokračovanie CEDVU: ak existuje centrálna databáza, zdá sa logické sprístupniť ju. Historická realita je však odlišná. Web umenia nevznikol ako súčasť strategických plánov SNG či ministerstva, ani ako „front-end“ k novému informačnému systému. Bol výsledkom dvoch síl, ktoré sa stretli v správnej chvíli: technologickej pripravenosti ISG-CEDVU a potreby hľadať spôsob, ako prezentovať zbierky v prostredí, ktoré sa rýchlo menilo.

![Transformácia reprezentácie jedného zbierkového diela v digitálnom prostredí Slovenskej národnej galérie.
Sekvencia zobrazuje postupný prechod od analógovej evidencie k rozhraním orientovaným na obraz a interakciu:
(A) kartotékový lístok v centrálnom katalógu (cca 1979),
(B) záznam v systéme Micro CDS/ISIS (1992),
(C) záznam v systéme CEDVU (2013),
(D) detail diela na pôvodnej verzii webumenia.sk (2014),
(E) detail diela na súčasnej verzii webumenia.sk (2018),
(F) detail diela v režime priblíženia prostredníctvom IIIF (IIPImage + OpenSeadragon).](figures/fig-3-5-webumenia-transformacia-diela.png){#fig-3-5-webumenia-transformacia-diela}


### 3.5.1 Od CEDVU k prvému webu (2010): spontánny začiatok

Keď Slovenská národná galéria okolo rokov 2008–2010 dokončovala prvé rozsiahle digitalizačné cykly (najmä maliarstvo 19. a 20. storočia), stávalo sa čoraz zreteľnejším, že digitálne reprodukcie a popisné údaje uložené v interných systémoch neplnia celý svoj potenciál. Digitalizácia bola primárne orientovaná na dokumentáciu, odbornú prácu a tlačové výstupy; verejnosť k týmto dátam nemala priamy prístup, hoci dopyt po informáciách o zbierkach postupne narastal.

Zároveň pretrvával organizačný model, v ktorom bolo CEDVU fyzicky dostupné len v centrálnej budove SNG. Existovalo samostatné pracovisko, ktoré vybavovalo žiadosti o výpisy z evidencie – pre odborníkov, inštitúcie aj verejnosť. Hoci boli údaje už v tom čase vedené digitálne, ich distribúcia prebiehala offline: regionálne galérie zasielali aktualizácie do centra na disketách a prístup k dátam bol viazaný na fyzickú prítomnosť alebo sprostredkovanú komunikáciu. Tento spôsob práce bol funkčný, no čoraz menej udržateľný.

V rovnakom období prebiehal v SNG vývoj nového rozhrania ISG-CEDVU a prvé experimenty s prehliadaním digitalizovaných diel v elektronickej podobe. Prepojenie týchto línií však nebolo výsledkom strategického plánu. Myšlienka sprístupniť dáta verejnosti prostredníctvom webu vznikla skôr ako *praktická reakcia na existujúci stav* – ako snaha zjednodušiť prístup k údajom, ktoré už boli centralizované a technicky spracované.

V momente, keď sa ukázalo, že dáta možno exportovať a zobrazovať mimo interného systému, otázka už neznela *či* ich sprístupniť, ale *akým spôsobom*. Prvá verzia webu preto vznikla ako prototyp, nie ako hotový produkt. Mala minimalistickú podobu, jednoduché detailové stránky a základné vyhľadávanie. Napriek tomu priniesla zásadnú zmenu v praxi: po prvýkrát bolo možné prezerať diela SNG aj regionálnych galérií na jednom mieste, s jednotnou štruktúrou metadát a rovnakou logikou popisu.

Spätným pohľadom možno povedať, že Web umenia vznikol skôr z *prevádzkovej potreby a presvedčenia o zmysluplnosti otvorenia dát* než z formálneho poverenia. Práve táto okolnosť mu umožnila fungovať ako experimentálny projekt, ktorý nevychádzal z hotovej stratégie, ale z každodennej práce s infraštruktúrou a z testovania možností, ktoré existujúce dáta postupne ponúkali.

![Spustenie novej verzie webumenia.sk (11. 6. 2015): pozvánka na uvedenie (vľavo) a tlačová konferencia k spusteniu (vpravo).](figures/fig-3-0-webumenia-launch-diptych.jpg){#fig:webumenia-launch-2015 width=100%}

### 3.5.2 Technologické pozadie: Fedora Commons a prvé integračné pokusy

Ak prvotný impulz Webu umenia vyrástol z evidenčnej praxe, jeho technologické zázemie sa začalo formovať už v odlišnom režime digitálnej produkcie. Projekt Digitálna galéria (2012–2015) priniesol masívnu vlnu digitalizácie a zároveň zásadné rozhodnutie: vybudovať repozitár digitálnych objektov na báze *Fedora Commons* — teda oddeliť ukladanie a správu súborov od katalogačného systému.

V tejto architektúre zostal ISG-CEDVU primárnym miestom katalogizácie, zatiaľ čo Fedora sa stala úložiskom digitálnych objektov (reprodukcie, odvodeniny, technické a prevádzkové metadáta), ktoré bolo možné kontrolovane publikovať smerom von. Prakticky to znamenalo stabilnejší životný cyklus reprodukcií (kvalita, verzie, odvodeniny pre rôzne použitia) a jasnejšie vzťahy medzi „záznamom o diele“ a jeho digitálnymi reprezentáciami.

Zároveň sa tým otvoril priestor pre programové prístupy: ak sú digitálne objekty spravované repozitárom a vystavené cez rozhrania, dajú sa nad nimi stavať ďalšie aplikácie, vizualizácie a experimenty s prepojeniami. Pre túto prácu je podstatné, že nejde len o technický komfort, ale o predpoklad pre neskoršie skúmanie naratívnych vrstiev: bez stabilnej infraštruktúry objektov a ich väzieb sa „príbehové“ rozhrania menia na jednorazové prezentácie bez možnosti údržby a opakovania.

### 3.5.3 Zmena paradigmy: od evidencie k rozhraniu

Prvé roky Webu umenia ukázali, že evidencia a prezentácia nie sú v online prostredí dve oddelené praxe. Hoci sa v inštitucionálnom rámci často chápu ako rozdielne oblasti – katalogizácia ako odborná, „technická“ činnosť a prezentácia ako komunikačná alebo edukačná vrstva – digitálna platforma tieto hranice prakticky ruší. Údaje, ktoré vznikajú pre interné potreby správy zbierok, sa v momente publikovania stávajú súčasťou verejného rozhrania a tým aj verejnej interpretácie.

V digitálnej platforme prestáva byť dielo len evidenčným objektom. Stáva sa *vstupným bodom do systému vzťahov*, rozhraním, cez ktoré používateľ číta zbierku ako celok. Už samotná voľba, ktoré polia z ISG-CEDVU sa zobrazia na verejnej stránke a v akom poradí, vytvára hierarchiu významov. Iný dôraz kladie systém, ktorý zvýrazní autorstvo a datovanie, iný ten, ktorý pracuje s témami, geografickým pôvodom či vizuálnou podobnosťou diel.

Tento posun sa ešte výraznejšie prejavil v momente, keď do Webu umenia začali pribúdať nové vrstvy rozhrania: detailné zoomy, tematické kolekcie, fulltextové vyhľadávanie, časové osi alebo mapové zobrazenia. Každý z týchto nástrojov nepredstavoval len „funkciu navyše“, ale *nový spôsob čítania zbierky*. Rozhranie začalo aktívne určovať, aké súvislosti sú viditeľné, aké zostávajú skryté a aké sa vôbec nedajú v danom systéme artikulovať.

V tejto fáze sa pre mňa stalo čoraz zreteľnejším, že digitálna platforma nefunguje ako neutrálne „okno“ do databázy. Naopak, ide o *autonómny priestor*, ktorý produkuje vlastné významy. Tento pohľad korešponduje s argumentáciou *Fiony Cameron*, ktorá opisuje digitálne metadáta a evidenčné systémy ako formu *mediated knowledge* – sprostredkovaného poznania, vznikajúceho sériou inštitucionálnych, technických a dizajnových rozhodnutí. Digitálny popis podľa nej nikdy nie je transparentným odrazom objektu, ale stabilizovanou interpretáciou, ktorá niektoré významy posilňuje a iné vylučuje. [@cameron_beyond_cult_replicant_2007, p. 173-189]

Podobne *Lev Manovich* upozorňuje, že rozhrania digitálnych systémov nie sú len vizuálnym obalom dát, ale aktívnou kultúrnou formou, ktorá určuje, ako možno s obsahom pracovať, čo možno porovnávať a čo zostáva mimo zorného poľa. V tomto zmysle rozhranie neprekladá databázu do zrozumiteľnej podoby, ale vytvára z databázy konkrétny naratívny potenciál [@manovich_language_new_media_2001].

Tieto teoretické východiská spätne osvetľujú praktickú skúsenosť s vývojom Webu umenia. Dizajn rozhrania – často vnímaný ako technická alebo estetická úloha – sa ukázal byť formou kurátorstva, ktorá má porovnateľný vplyv na význam ako tradičný kurátorský výklad. Rozhranie síce vystupuje ako neutrálne, no v skutočnosti rozhoduje o tom, čo je v zbierke čitateľné, čo je dohľadateľné a čo zostáva na okraji pozornosti.

Táto zmena paradigmy – od evidencie k rozhraniu – sa stala jedným z kľúčových východísk ďalšieho vývoja Webu umenia. Ukázala, že práca s digitálnymi zbierkami nie je len otázkou správnosti údajov, ale aj otázkou zodpovednosti za spôsoby, akými sú tieto údaje sprístupňované, prepájané a interpretované v online priestore.

### 3.5.4 Web umenia ako laboratórium: iterácia, dialóg a vývoj v reálnom čase

Okolo roku 2013–2014 sa vývoj Webu umenia prelial do širšieho experimentálneho rámca. Z iniciatívy Michala Čudrnáka vznikol *lab.SNG* — najprv ako neformálna skupina ľudí pracujúcich „bokom popri oficiálnych úlohách“, neskôr ako stabilizovanejšia vnútorná platforma.
Inšpirácia prichádzala aj zo zahraničia: Cooper Hewitt Labs, tým okolo Seba Chana v ACMI či Rijksstudio ukazovali, že technologický vývoj môže byť súčasťou galerijnej kultúry, nie službou, ktorú si inštitúcia objednáva.

To, čo bolo pre lab.SNG špecifické, bola jeho blízkosť ku kurátorským a edičným tímom. Náš stôl bol fyzicky pár metrov od depozitárov a kancelárií odborných pracovníkov, čo znamenalo, že pri každom rozhodnutí — od zobrazovania techník po tvorbu filtrov — prebiehal dialóg.
Táto bezprostrednosť sa premietla aj do samotného rozhrania: funkcie Webu umenia nevznikali v izolácii, ale v kontexte výstav, zbierkových revízií, akvizičných debát či spätnej väzby od pedagógov a návštevníkov.

Za dôležitý „dôkazový“ moment vnímam prototyp *Dve krajiny* [@dvekrajiny_sng_2014]: bol to konkrétny prípad, kde sa dalo v praxi ukázať, že nová verzia Webu umenia nie je len otázkou grafiky, ale najmä dátovej a interakčnej architektúry (filtrovanie, kolekcie, import, spôsob prehliadania katalógu). Zároveň sa na ňom rýchlo ukázalo, že aj infraštruktúra má svoje limity — a že pri určitej mierke treba uvažovať o vyhľadávacej vrstve ako o samostatnom systéme.

Výsledkom bola postupná transformácia Webu umenia z katalógu na platformu:
nielen pre prezeranie, ale pre skúmanie, hra­nie, prepájanie a v niektorých prípadoch aj pre rozprávanie (Príbehy umenia).

### 3.5.5 Prelomové momenty: API, open access a nový dizajn

Z technického hľadiska možno označiť tri momenty za rozhodujúce.

Zverejnenie API umožnilo otvoriť dáta externým developerom, študentom či výskumníkom. Zbierka sa tým stala nielen prístupnou, ale aj „použiteľnou“ — čo v akademickej oblasti znamenalo zásadnú zmenu.

Prechod na open access (voľné diela vo voľnej licencií, prístupné na stiahnutie) bol reakciou na medzinárodné trendy, najmä Rijksmuseum, ale aj výsledkom praktickej skúsenosti: ľudia si už aj tak sťahovali obrázky cez rôzne neoficiálne spôsoby. Legitimácia tejto praxe bola prirodzeným krokom.

Nová verzia Web umenia (cca 2015–2016) prepojila tieto vrstvy do jedného rozhrania. Už to nebola „stránka s databázou“, ale ekosystém, ktorý vedel zobrazovať tisíce diel na rôznych úrovniach granularity — od detailu obrazu po mapu kultúrnych súvislostí.

### 3.5.6 Čo Web umenia zmenil: metadáta ako naratív a platforma ako aktér

Tým, že Web umenia začal uvažovať o rozhraní ako o priestore interpretácie, posunul diskusiu o digitálnych zbierkach na inú rovinu. Zbierka tu prestáva fungovať ako statický súbor jednotlivých diel a nadobúda podobu dynamickej konštrukcie, v ktorej sa význam formuje priamo v procese sprístupňovania. Metadáta v tomto kontexte neplnia len opisnú alebo evidenčnú funkciu, ale podieľajú sa na vytváraní príbehov o dielach a ich vzájomných vzťahoch. Spôsoby vyhľadávania a prehliadania zároveň aktívne konštruujú prepojenia, prostredníctvom ktorých je zbierka čitateľná, zatiaľ čo dizajn rozhrania sprostredkováva odborné rozhodnutia, ktoré by v tradičnom múzejnom prostredí zostávali skryté. Technický vývoj sa tak prirodzene stáva súčasťou interpretačného procesu.

V tomto nastavení sa ukazuje, že digitálne platformy nezviditeľňujú len samotné diela, ale aj vnútornú logiku ich výberu, spôsob katalogizácie, mieru konzistentnosti opisov či rozhodnutia, ktoré na prvý pohľad pôsobia marginálne – napríklad poradie zobrazovaných polí alebo výber vzťahov, ktoré sú používateľovi ponúknuté ako primárne. Digitálne rozhranie tu funguje ako interpretácia nie preto, že by bolo explicitne koncipované ako kurátorský výklad, ale preto, že pôsobí ako technický aktér so svojimi vlastnými obmedzeniami, možnosťami a predpokladmi, ktoré spoluurčujú výslednú podobu naratívu.

![Web umenia ako rozhranie (nie len katalóg): úvodná stránka ako *discovery* vstup (vľavo) a „Čo je Web umenia?“ ako vysvetľujúca infraštruktúrna vrstva projektu (vpravo).](figures/fig-3-0-webumenia-home-about-diptych.jpg){#fig:webumenia-home-about width=100%}

### 3.5.7 Záver: Web umenia ako produkt aj symptóm

Keď sa dnes pozeráme na Web umenia, môže pôsobiť ako prirodzená súčasť sveta online zbierok. V skutočnosti je však výsledkom veľmi špecifickej konštelácie: normalizačná kartotéka → ručný prepis do Micro CDS/ISIS → centralizácia ISG-CEDVU → digitalizačný boom 2010s → experimentálny tím lab.SNG → medzinárodné open-access impulzy.

Až kombinácia týchto vrstiev umožnila vznik platformy, ktorá dokáže byť súčasne databázou, výskumným nástrojom, rozhraním a — do istej miery — aj rozprávačom.

V tomto zmysle je Web umenia nielen produktom slovenského vývoja, ale aj jeho zrkadlom.
Je výsledkom série rozhodnutí, ktoré sa pôvodne netýkali naratívov, ale infraštruktúry, organizácie práce a každodennej evidencie. A zároveň je symptómom širšieho posunu: od múzea ako strážcu k múzeu ako aktívnemu účastníkovi digitálnych kultúrnych procesov.

## 3.6 Súčasné tendencie a smerovanie: od sprístupňovania k interpretácii

Ak prvé dve dekády digitalizácie patrili infraštruktúre — skenerom, databázam a workflowom — posledné roky posúvajú dôraz k interpretácii. Online zbierky sa prestávajú chápať len ako „digitálne katalógy“ a čoraz viac ako rozhrania, ktoré aktívne spoluutvárajú to, čo je v zbierke viditeľné, porovnateľné a zmysluplné. Otázka naratívu sa preto vracia v novej podobe: nie ako doplnok k dátam, ale ako problém dizajnu, zodpovednosti a moci rozhraní.

### 3.6.1 Nová zodpovednosť rozhraní

Digitálne platformy dnes preberajú časť úloh, ktoré boli v tradičnom múzejnom prostredí prirodzene spájané s kurátorskou a editorskou prácou. Radenie výsledkov vyhľadávania, automatizované odporúčania, vizuálne podobnosti či tematické výbery nefungujú len ako technické pomôcky orientácie, ale ako mechanizmy, ktoré nenápadne formujú významové súvislosti medzi dielami. Vznikajú tak implicitné interpretácie, ktoré nie sú výsledkom jedného autorského gesta, ale kombináciou dátových štruktúr, algoritmov a dizajnových rozhodnutí.

V tomto prostredí už nie je možné jednoznačne oddeľovať technické riešenia od odborného významu. Ako upozorňuje Fiona Cameron, digitálne prostredia nevystupujú len ako neutrálne nosiče obsahu, ale aktívne spoluvytvárajú povahu zbierkových objektov. V jednom zo svojich textov píše, že v digitálnych systémoch sa objekty stávajú „nestabilnými entitami“, ktorých význam, hranice a identita sa menia v závislosti od kontextu, v ktorom sú sprístupnené:

> “Digital objects are not fixed or stable entities; their meanings and relationships are continually reconfigured through the systems, interfaces and networks in which they are embedded.” [@cameron_kenderdine_theorizing_digital_cultural_heritage_2007]

Cameron tým poukazuje na ontologickú dynamiku digitálnych zbierok: to, čím objekt „je“, sa neodvíja len od jeho materiálnej podoby alebo odborného popisu, ale aj od informačného systému, v ktorom sa nachádza, od väzieb, ktoré mu sú priradené, a od spôsobov, akými s ním môže používateľ vstupovať do vzťahu. Rozhranie sa tak stáva miestom, kde sa tieto významy neustále preusporadúvajú a aktualizujú.

V praxi to znamená, že každý mechanizmus rozhrania – či už ide o automatické tagovanie, podobnostné algoritmy, časové osi alebo mapové vizualizácie – vstupuje do kultúrneho príbehu zbierky. Neplní iba navigačnú funkciu, ale zároveň rámcuje interpretáciu tým, že zvýrazňuje určité vzťahy a iné ponecháva v pozadí. Zodpovednosť za podobu digitálnej zbierky sa tak presúva od jednotlivých aktérov k samotnej platforme, ktorá sa stáva jedným z kľúčových činiteľov formovania významu.

### 3.6.2 Kurátor ako vývojár, vývojár ako kurátor

Digitálne prostredia postupne narúšajú tradičné rozdelenie odborných rolí, ktoré bolo v múzejných inštitúciách dlhodobo stabilné. Kurátorská práca v tomto kontexte už neznamená iba výber diel a formulovanie interpretačných textov, ale zahŕňa aj rozhodovanie o dátových modeloch, digitálnych reprezentáciách a mechanizmoch, prostredníctvom ktorých je zbierka sprístupnená. Ide o rozhodnutia, ktoré ovplyvňujú, aké typy vzťahov môžu v systéme vzniknúť, ktoré zostávajú neviditeľné a ktoré nie je možné vôbec artikulovať [@cameron_museum_collections_documentation_2010].

Uvažovanie o týchto posunoch je možné presnejšie ukotviť prostredníctvom kritiky digitálnych reprezentácií, ktorú rozvíja Johanna Drucker. V texte *Humanities Approaches to Graphical Display* upozorňuje, že digitálne modely a vizualizácie sú založené na epistemologických predpokladoch, ktoré nie sú neutrálne ani univerzálne. Ako píše:

> “The fundamental epistemological assumptions are at odds with humanistic method.
> The humanities are committed to the concept of knowledge as interpretation, and the
> apprehension of the phenomena of the physical, social, cultural world is through
> constructed and constitutive acts, not mechanistic or naturalistic realist representations
> of pre-existing or self-evident information.”
> [@drucker_humanities_approaches_2011, p. 6]

Z tohto pohľadu nemožno digitálne rozhrania chápať ako technickú vrstvu oddelenú od odborného uvažovania. Spôsob, akým sú dáta štruktúrované, vizualizované a sprístupnené, priamo ovplyvňuje, aké formy poznania a interpretácie sú v systéme možné, a aké zostávajú mimo jeho rámca. Technické rozhodnutia sa tak nevyhnutne stávajú súčasťou interpretačného procesu, aj keď nie sú formulované ako kurátorské gestá.

Na druhej strane tým vývojári a dizajnéri prestávajú vystupovať len ako technická podpora odborného procesu. Ich rozhodnutia – od návrhu dátových polí a väzieb, cez algoritmy radenia, až po vizuálnu hierarchiu rozhrania – majú dôsledky pre to, ako je zbierka čitateľná. Určujú, ktoré informácie sú v rozhraní centrálne, ktoré sú upozadené a aké súvislosti sa používateľovi ponúkajú ako samozrejmé, zatiaľ čo iné zostávajú implicitné alebo úplne skryté.

V ideálnom prípade sa medzi týmito profesiami nevytvára hybridná rola v zmysle univerzálneho jednotlivca, ale skôr hybridná expertíza na úrovni tímu. Ide o schopnosť uvažovať digitálne rozhranie ako kultúrny a interpretačný priestor, nie iba ako funkčnú službu pre sprístupnenie dát. Tento spôsob práce sa postupne etabloval v inštitúciách ako ACMI, Tate, Cooper Hewitt či SFMOMA Labs. V slovenskom prostredí predstavoval lab.SNG jedno z prvých miest, kde sa podobný typ interdisciplinárnej praxe stal súčasťou každodennej činnosti, a nie len ojedinelým experimentom.

### 3.6.3 Nové výzvy: etika algoritmov, personalizácia, serendipity

S narastajúcim množstvom dostupných dát a s rozvojom pokročilých nástrojov, ako sú metódy počítačového videnia, spracovanie prirodzeného jazyka či strojové učenie, sa v prostredí online zbierok čoraz výraznejšie objavuje napätie medzi personalizáciou a serendipitou (náhodilosťou). Personalizované rozhrania prispôsobujú obsah jednotlivým používateľom na základe ich správania, preferencií alebo predchádzajúcich interakcií, zatiaľ čo serendipita umožňuje objavovanie nečakaných vzťahov a súvislostí, ktoré by cielene zvolená navigácia nemusela nikdy sprostredkovať.

Práve serendipita sa v kontexte zbierok ukazuje ako dôležitá, pretože zbierky samy o sebe nesú špecifickú historickú a inštitucionálnu logiku. Sú výsledkom dejín akvizícií, hodnotových preferencií, odborných rozhodnutí a predstáv o tom, čo má byť uchované a sprístupnené. Personalizované mechanizmy môžu túto logiku nenápadne prepisovať tým, že niektoré diela systematicky posúvajú na okraj, iné zvýrazňujú, alebo potvrdzujú existujúce vzorce a predsudky namiesto ich narúšania.

S tým úzko súvisí otázka transparentnosti algoritmov, ktoré tieto mechanizmy poháňajú. Ak platforma odporúča „podobné“ diela, zostáva často nejasné, na základe akých kritérií je podobnosť definovaná. Môže ísť o vizuálne znaky, tematické príbuznosti, formálne vlastnosti, historický kontext alebo o kombináciu viacerých faktorov. Spôsob, akým sú tieto kritériá zvolené a vážené, však zásadne ovplyvňuje výslednú podobu odporúčaní a tým aj to, aké príbehy o zbierke sú používateľovi sprostredkované.

Táto diskusia sa tak dotýka samotnej podstaty naratívnej vrstvy v digitálnych zbierkach. Digitálne rozhranie nevytvára príbeh v tradičnom zmysle lineárneho textu, ale prostredníctvom siete ciest, filtrov, vzťahov a návratností, ktoré používateľovi umožňuje sledovať. Práve v napätí medzi personalizáciou a serendipitou sa preto rozhoduje o tom, či digitálna zbierka podporuje otvorené objavovanie a nové interpretácie, alebo či sa postupne uzatvára do predvídateľných a opakujúcich sa vzorcov čítania.

### 3.6.4 Kontextualizácia ako kľúčový problém

Ak je dnes niečo všeobecne uznávanou slabinou online zbierok, je to *nekontinuálna naratívnosť*.
Digitálne rozhrania excelujú v šírke, ale bojujú s hĺbkou.
Ponúkajú státisíce objektov, ale len málo z nich zasadzujú do zmysluplných kontextov.

Preto sa vo svete presadzuje trend „interpretácie ako služby“ — nie ako exteriérového textu či katalógu, ale ako integrálnej vrstvy digitálneho systému.
Príklady sú rôzne: Rijksstudio Stories, SFMOMA’s Send Me SFMOMA, projekty ACMI, ale aj kurátorsky vedené kolekcie Tate či tematické prehliadky v MoMA.

Všetky pracujú s rovnakou ambíciou:
vrátiť rozhraniu schopnosť vytvárať *vzťahy*, nielen *záznamy*.

### 3.6.5 Prepojenie na výskumnú otázku: digitálne rozhranie ako naratívna technológia

V kontexte tejto kapitoly sa vraciame k ústrednej myšlienke celej dizertačnej práce:
digitálne zbierky často trpia stratou naratívnej vrstvy, pretože sú dedičmi databázového myslenia.

Databáza uchováva, rozhranie sprístupňuje — ale ani jedno z toho samo osebe neinterpretuje.
To, čo vzniká medzi nimi, je priestor neistoty:
priestor, kde sa významy môžu utvárať, strácať alebo fragmentovať.

Keďže rozhranie je dnes hlavným médiom zbierky, práve ono preberá rolu rozprávača.
Nie textového, ale topologického: rozpráva vzťahmi, filtrami, výbermi, dynamikou prezerania a nelineárnou logikou.

Súčasné tendencie — tlak na kontextualizáciu, hybridné kurátorsko-technické prístupy, transparentné algoritmy, podporu serendipity — sú reakciou na tento problém.
Ukazujú, že naratív nie je dodatok; je to spôsob, ako digitálna zbierka nadobúda význam.

V tomto rámci sa ukazuje, že problém naratívu v digitálnych zbierkach nemožno uchopiť ako otázku dodatočného obsahu, ale ako otázku samotného fungovania rozhrania. Nejde teda o to, ako do digitálnych zbierok „pridať“ naratív vo forme ďalších textových vrstiev, ale o to, akým spôsobom môže naratív vznikať prostredníctvom samotného rozhrania. Otázkou sa stáva, ako navrhovať digitálne systémy tak, aby podporovali vzťahové čítanie zbierky, umožňovali orientáciu bez lineárneho výkladu a zároveň neredukovali význam na náhodný súbor dátových spojení. Digitálne rozhranie tu vystupuje ako technológia rozprávania, ktorá nepracuje s príbehom v tradičnom zmysle, ale s konfiguráciou možností, cez ktoré sa význam postupne skladá.
