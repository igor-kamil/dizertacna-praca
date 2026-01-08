# 3. Od katalógu k platforme: vývoj, inštitúcie a súčasný ekosystém online zbierok

## *Preface*

Táto kapitola slúži ako state of the art prehľad problematiky online zbierok umenia. Poskytuje rámec, v ktorom možno čítať súčasný stav digitálnych zbierok – od ich historických a technologických východísk až po konkrétne inštitucionálne riešenia v praxi. Jej cieľom je pomenovať hlavné tendencie, rozhodnutia a limity, ktoré formovali podobu online zbierok tak, ako ich poznáme dnes.

Kapitola sleduje vývoj v niekoľkých mierkach. Najprv sa vracia k pred-digitálnym evidenčným praktikám a k vzniku databáz, ktoré dodnes zásadne ovplyvňujú štruktúru múzejných dát. Následne mapuje vznik kľúčových infraštruktúr a štandardov, ktoré umožnili masové sprístupňovanie zbierok v online prostredí. V ďalšej časti predstavuje vybrané príklady zo svetového kontextu, na ktorých je možné sledovať rôzne prístupy k otvorenosti, rozhraniu a práci s publikom. Kapitola sa potom presúva do československého prostredia a napokon k detailnejšiemu pohľadu na Web umenia.

Dôležitým východiskom kapitoly je presvedčenie, že online zbierky nevznikajú vo vákuu. Sú výsledkom dlhodobého vývoja technológií, inštitucionálnych priorít a kurátorských modelov, ktoré sa navzájom ovplyvňujú. Práve preto je tu Web umenia čítaný nie ako izolovaný projekt, ale ako konkrétny use-case, ktorý vznikal v dialógu so svetovými trendmi aj lokálnymi obmedzeniami.

Zároveň je táto kapitola rámcom pre autorskú pozíciu práce. Príbeh Webu umenia je v nej sledovaný aj z perspektívy jeho vývoja v rámci lab.SNG, kde som sa na projekte dlhodobo podieľal. Táto skúsenosť umožňuje prepájať analytický pohľad „zvonku“ s praktickým porozumením „zvnútra“ – teda sledovať, ako sa abstraktné princípy digitalizácie, otvorených dát či rozhraní premietajú do reálnych rozhodnutí, kompromisov a iterácií.

Cieľom kapitoly nie je podať vyčerpávajúcu históriu digitalizácie, ale vytvoriť orientačnú mapu terénu, v ktorom sa pohybuje zvyšok dizertačnej práce. Ukazuje, prečo sa online zbierky v praxi správajú skôr ako databázy než ako priestory, ktoré by prirodzene podporovali rozprávanie a súvislé čítanie diel. Práve z tohto napätia vychádza aj táto práca: otázka naratívu tu nevystupuje ako abstraktný problém digitálnych zbierok, ale ako konkrétna skúsenosť a dlhodobá téma výskumu, ktorá sa formovala pri návrhu a vývoji Webu umenia. Kapitola tak vytvára východisko pre podrobnejšiu analýzu rozhraní, dát a experimentálnych prístupov, ku ktorým sa text postupne vracia v ďalších častiach práce.

## **3.1 Korene a predpoklady digitalizácie**

> “Database and narrative are natural enemies.”  
> — Lev Manovich, *The Language of New Media* [@manovich_language_new_media_2001]

Manovich týmto jednoduchým výrokom pomenúva základné napätie: databázy vedia veci presne triediť a filtrovať, ale samy od seba nevytvárajú súvislý príbeh [@manovich_language_new_media_2001]. Fiona Cameron zas pripomína, že metadáta nie sú „čistý prepis“ objektu – vznikajú cez konkrétne odborné rozhodnutia (čo zapísať, čo vynechať, ako pomenovať) [@cameron_digital_futures_politics_heritage_2007; @cameron_beyond_cult_replicant_2007]. V tejto kapitole preto beriem online zbierky ako výsledok dvoch vecí naraz: historických evidenčných návykov (ako sa diela opisovali) a dizajnových rozhodnutí (ako sa tieto údaje prezentujú ľuďom). Odborná diskusia pritom nie je jednotná: jedna línia pomenúva príčiny problému (napr. Manovich), druhá hľadá praktické dizajnové odpovede – napr. cez „generous interfaces“ [@whitelaw_generous_interfaces_2015] alebo cez prácu s návštevníckou skúsenosťou pri navrhovaní digitálnych/imerzívnych výstav [@popoli_derda_developing_experiences_2021].

Digitálna transformácia múzeí a galérií nevznikla ako radikálny zlom, ale ako postupný proces, ktorý nadviazal na dlhodobé tradície evidencie, správy a organizácie zbierok [@parry_recoding_museum_2007]. To, ako dnes vyzerajú online zbierky a ich rozhrania, je významne determinované tým, aké predstavy o diele, údajoch a poriadku sa formovali v analógovej a ranodigitálnej ére [@hooper_greenhill_shaping_knowledge_1992; @cameron_kenderdine_theorizing_digital_cultural_heritage_2007]. Kapitola preto načrtáva historické a metodologické pozadie, bez ktorého nie je možné porozumieť súčasným limitom ani možnostiam digitálnych zbierok.

### **3.1.1 Pred-digitálne evidenčné praxe: stabilita, štandardy a obmedzenia**

V Slovenskej národnej galérii sa od 70. rokov postupne budovala rozsiahla kartotéka – centrálny katalóg výtvarného umenia, v ktorom každý záznam pozostával z dokumentačnej karty s odborným popisom diela a z priloženej čiernobielej fotografie. Tento systém umožňoval jednotnú evidenciu, porovnateľnosť údajov a odborné rešerše naprieč inštitúciami ešte dlho pred nástupom digitálnych databáz. 

Ako uvádzajú **Bahurinská a Bohumelová**, základné kritériá pre vytváranie záznamov o zbierkových predmetoch sa zásadne nemenili celé desaťročia a boli overené dlhodobou praxou [@bahurinska_bohumelova_evidence_kapitola_nd]. Tieto štandardy boli zámerne faktické a uniformné — ich cieľom bolo zabezpečiť spoľahlivú identifikáciu diela, umožniť vyhľadávanie a podporiť odborný výskum.

V tejto ére bola evidencia predovšetkým **interným nástrojom**. Slúžila kurátorom, dokumentátorom, archivárom či reštaurátorom, a len okrajovo externým odborníkom. Sprístupnenie širokej verejnosti prakticky nebolo možné.
Každá zmena v údajoch vyžadovala manuálny zásah a aktualizácie boli časovo náročné. Rovnako prístup k informáciám bol fyzicky limitovaný: kto chcel overiť podrobnosti o predmete, musel fyzicky navštíviť archív alebo kartotéku inštitúcie.

V kontexte Slovenskej národnej galérie má vývoj evidencie zbierok špecifickú podobu. Jednotlivé galérie a múzeá na území Slovenska samozrejme viedli vlastnú evidenciu zbierkových predmetov už v predchádzajúcich desaťročiach, v súlade s vtedajšou múzejnou praxou. Zlomovým momentom však bol rok 1979, keď vznikol **centrálny katalóg výtvarného umenia**, ktorého cieľom bolo zjednotiť evidenčné údaje o všetkých zbierkových dielach v galériách (a v tom období aj o výtvarnom umení spravovanom múzeami).

Tento krok predstavoval unikátne systémové riešenie – centralizovaná evidencia na národnej úrovni nemala v tom čase priamu paralelu ani v okolitých krajinách a v podobnej podobe neexistuje dodnes ani v Českej republike.


Pred-digitálne praxe tak formovali nielen technickú stránku evidencie, ale aj **kultúrny model práce s dielom**. Dielo sa v nej spravidla chápalo ako stabilný objekt a informácie o ňom ako súbor faktov uložených v pevne definovaných formátoch. Aktualizácia údajov a interpretácia (t. j. „čo to znamená“) boli v praxi oddelené – evidencia mala primárne udržiavať poriadok a umožniť identifikáciu, nie vytvárať významy. Tento spôsob uvažovania zodpovedá širšiemu poznatku, že múzeá nevytvárajú len zbierky, ale aj systémy kategórií a poznania, cez ktoré sa objekty stávajú čitateľnými [@hooper_greenhill_shaping_knowledge_1992].

### **3.1.2 Prechod k databázam: formovanie dátovej ontológie**

S nástupom výpočtovej techniky v 90. rokoch sa analógová evidencia začala transformovať do elektronickej podoby. V slovenskom kontexte ide najmä o konverziu dokumentačných kariet do systému **micro CDS/ISIS**, ktorá si vyžadovala rozsiahle zjednotenie údajov a vytvorenie novej formalizovanej štruktúry [@unesco_micro_cds_isis_1990s].

Tento prepis bol viac než mechanická digitalizácia. Znamenal prechod k **dátovej ontológii** — súboru kategórií, polí a pravidiel, ktoré definujú, čo je možné o diele zaznamenať.
V priebehu týchto rokov vznikol **Štandard pre popis diel výtvarného umenia**, ktorý bol navrhnutý pre potreby CEDVU a reflektoval odporúčania CIDOC–ICOM [@bahurinska_stadandard_pre_popis_2002].
Neskôr bola táto štruktúra doplnená o legislatívny rámec vo forme **Vyhlášky č. 523/2009 Z. z.**, ktorá v nadväznosti na Zákon o múzeách a galériách (2009) presne definuje povinné atribúty pri evidencii zbierkových predmetov.

Dátová ontológia má vplyv, ktorý presahuje čisto technickú rovinu:
určuje, čo sa považuje za relevantný údaj, aké informácie sa priebežne zhromažďujú a aké kontexty sa do záznamov nedostanú. To, čo systém neumožňuje zaznamenať, sa v dlhodobom horizonte vytráca z profesionálnej práce aj z dostupných rozhraní.

V 90. rokoch však databázy stále plnili **výlučne internú funkciu**. Systémy ako CEDVU či pokusy o prvé elektronické katalógy boli určené pre odborníkov, nie pre verejnosť.
Ich úlohou bolo zefektívniť správu zbierok, nie sprostredkovať vizuálny alebo interpretačný zážitok.

Dôležité je uvedomiť si, že mnohé súčasné digitálne platformy – vrátane tých, ktoré dnes fungujú online – **zdedili túto evidenčnú logiku**.
Parametre, ktoré dnes určujú možnosti vyhľadávania, facetingu či vizualizácie, sú často priamo odvodené od rozhodnutí, ktoré vznikli počas retrospektívneho prepisu dokumentačných kariet.

### **3.1.3 Teoretické rámce: múzeum ako informačný a dátový systém**

V rovnakom období, v ktorom sa digitalizuje evidencia, sa začína meniť aj teoretické chápanie múzea. V diskusiách o digitálnom kultúrnom dedičstve sa pozornosť postupne presúva od „samotného objektu“ k tomu, **v akom systéme informácií objekt existuje** – ako je opísaný, prepojený, sprístupnený a znovu použitý [@cameron_kenderdine_theorizing_digital_cultural_heritage_2007]. Podobný posun – ešte pred masovým internetom – pomenovali aj George F. MacDonald a Stephen Alsford, keď navrhli chápať múzeum ako informačnú službu pre spoločnosť, nielen ako sklad artefaktov:

> “Today there is a growing appreciation in the museum world that museums do not exist primarily to service their collections of material heritage, but rather to serve society by helping provide the knowledge its members need to survive and progress.” [@macdonald_alsford_museum_information_utility_1991, p. 305]

Múzeum sa tak prestáva chápať len ako súbor artefaktov a začína byť čítané ako **informačný systém**, ktorého základom je tok dát – a teda aj rozhodnutia o tom, čo sa eviduje, ako sa to pomenúva a akými cestami sa k tomu vie dostať používateľ.

Kľúčovým mediamickým rámcom je v tomto kontexte aj Lev Manovich a jeho téza o databáze ako kultúrnej forme. Databáza nahrádza naratív tým, že usporadúva objekty podľa atribútov, nie podľa významových súvislostí. Tento posun je pre múzejný sektor obzvlášť relevantný:
múzeá tradične pracovali s príbehom, kontextom a interpretáciou; databázy pracujú s položkami, kategóriami a filtrami.

Tieto dva princípy nie sú automaticky v konflikte, ale ich súžitie je napäté.
Databázová logika podporuje rozklad objektu na časti, zatiaľ čo kurátorská logika sa snaží vytvárať súvislosti.
Kapitola 3.1 tým otvára otázku, ktorá sa neskôr ukáže ako centrálna:
ako možno z databázovej štruktúry znova vyrobiť naratívnu štruktúru?

### **3.1.4 Premena odborných rolí: kurátor, dokumentátor, vývojár**

Digitalizácia múzejných zbierok nepriniesla len nové technológie, ale zásadne zmenila aj rozdelenie odborných rolí a zodpovedností.
Kurátor ostáva dôležitým aktérom interpretácie, no v online prostredí už nie je jediným nositeľom významu. Podoba digitálnej zbierky vzniká v spolupráci viacerých profesií, z ktorých každá vstupuje do procesu iným spôsobom:

* **dokumentátori** rozhodujú o presnosti, štruktúre a konzistentnosti údajov,
* **vývojári a informační architekti** navrhujú dátové modely, polia, väzby a procesy,
* **dizajnéri rozhraní** určujú, ako sa tieto údaje zobrazujú, triedia a sprístupňujú používateľom.

V online zbierkach je toto prepojenie viditeľné oveľa výraznejšie než v tradičných katalógoch.
Ak je databáza verejne prístupná, každý technický detail – názvy polí, spôsob facetovania, radenie výsledkov vyhľadávania či použité autority – má priamy vplyv na to, ako je zbierka čítaná a interpretovaná. Technická infraštruktúra sa tak stáva súčasťou kurátorského rámca.

V tomto zmysle možno hovoriť o dizajnérovi dátovej infraštruktúry ako o **tichom spoluautorovi naratívu zbierky**.
Technické rozhodnutia určujú, ktoré vzťahy medzi dielami sú vôbec viditeľné, aké spojenia systém podporuje a čo naopak zostáva skryté alebo nedostupné. Nejde pritom o neutralitu systému, ale o sériu konkrétnych rozhodnutí, ktoré majú dlhodobý interpretačný dosah.

Na tento aspekt upozorňuje aj **Fiona Cameron**, ktorá v súvislosti s digitálnymi múzejnými zbierkami píše:

> “Digital records are not neutral representations of objects, but are actively constructed through institutional, technical and cultural choices that shape what can be known about them.”
[@cameron_beyond_cult_replicant_2007, p. 54]

Digitálne metadáta podľa Cameron nevznikajú ako transparentný prepis objektu, ale ako sprostredkovaná forma poznania (*mediated knowledge*), formovaná technickými, organizačnými a inštitucionálnymi rozhodnutiami. Každé doplnenie, úprava alebo preusporiadanie metadát preto mení rámec, v ktorom bude dielo neskôr čítané odborníkmi, výskumníkmi či verejnosťou. Evidencia v tomto zmysle nie je len administratívnym úkonom, ale významotvorným aktom, ktorý priamo formuje podobu digitálneho kultúrneho dedičstva.

Toto rozšírenie odborných rolí má zásadný vplyv aj na vývoj digitálnych platforiem, ktoré v múzeách a galériách vznikajú (vrátane Web umenia). Digitálne zbierky nie sú výsledkom práce jednej profesie, ale kolektívnym produktom spolupráce rôznych expertíz. Porozumenie týmto vzťahom je kľúčové najmä preto, že technické rozhodnutia sa v online prostredí okamžite premietajú do verejného rozhrania – a tým sa stávajú súčasťou príbehu, ktorý zbierka rozpráva.

### **3.1.5 Záver: dedičstvo evidencie ako rámec súčasných výziev**

Kapitola ukazuje, že súčasné digitálne zbierky sú vystavané na vrstve evidenčných praxí a dátových štruktúr, ktoré vznikli v období, keď sa od evidencie neočakávalo sprostredkovanie zážitku ani interpretácie.
Online platformy tak v mnohých prípadoch **zdedia formu, ktorá bola navrhnutá pre odbornú prácu, nie pre naratívne čítanie**.

Tento rozdiel medzi pôvodným účelom a dnešným používaním je jedným z hlavných zdrojov problémov, ktorým sa venuje táto dizertačná práca:

* fragmentárnosť údajov,
* dominancia vyhľadávania nad objavovaním,
* slabá prepojenosť objektov,
* absencia kurátorskej vrstvy,
* a z toho prameniaca **strata naratívnej kontinuity**.

Porozumenie tejto genealógii je preto kľúčové: ukazuje, že ak chceme prepracovať online zbierky smerom k rozprávačským rozhraniam, musíme pracovať nielen s dátami a technológiami, ale aj s historickým dedičstvom, ktoré tieto technológie podmieňuje.

## **3.2 Prvé digitálne iniciatívy a infraštruktúry**

Digitalizácia zbierok v 90. rokoch a prvej dekáde 21. storočia vznikala v prostredí, kde boli technické aj politické podmienky radikálne odlišné od dnešných. Nasledujúce podkapitoly mapujú vznik kľúčových infraštruktúr, ktoré formovali podobu online zbierok – od európskej agregácie po prvé repozitáre a štandardy interoperability.

### **3.2.1 Europeana a vznik európskeho rámca**

Europeana nevznikla ako technický experiment, ale ako výsledok kultúrnej politiky Európskej únie.
Jej vznik nadväzuje na projekty **MINERVA**, **MICHAEL** a koordináciu zdigitalizovaného dedičstva v rámci CENL (Conference of European National Librarians).
Ako uvádza Jill Cousins, prvá výkonná riaditeľka Europeany, cieľom nebolo vytvoriť nový portál, ale *„spôsob, akým môžu zdroje voľne cestovať medzi inštitúciami a krajinami“* [@cousins_europeana_2009].

Kľúčovým krokom bol vznik **Europeana Data Model (EDM)**, ktorý zaviedol koncept *agregácie* a *prepojených dát* [@gradmann_edm_2011]. EDM umožňuje, aby múzejné, galerijné a archívne objekty existovali v jednom modeli bez straty vlastnej identity — čo bol zásadný rozdiel oproti skorším rámcom, ktoré nútili dáta do jednej štruktúry.

Europeana tak vytvorila:

* spoločný dátový model pre kultúrne dedičstvo v EÚ (EDM),
* rámec pre automatizované harvestovanie cez OAI-PMH,
* politický argument pre sprístupňovanie kultúrnych zdrojov.

Od prvej verzie portálu (2008) sa Europeana vyvinula z prezentačného webu na **dátovú infraštruktúru**, ktorá definuje technickú interoperabilitu naprieč Európou [@terras_europeana_2015].

### **3.2.2 Štandardizácia: LIDO, Dublin Core, OAI-PMH**

Prvá dekáda digitalizácie bola založená na štandardizácii metadát.

Medzinárodným referenčným rámcom pre tieto snahy sú štandardy ICOM – CIDOC, ktoré od 90. rokov formujú teoretické aj praktické prístupy k modelovaniu múzejných dát, ich interoperabilite a dlhodobej udržateľnosti. Práve CIDOC konceptuálne ovplyvnil viaceré národné aj nadnárodné dátové modely využívané pri digitalizácii kultúrneho dedičstva.

V našom kontexte mali šecialne význam nasledovné štandardy: 

#### **LIDO (Lightweight Information Describing Objects)**

Vznikol pod CIDOC ICOM a publikoval ho G. Coburn a kol.
LIDO je určený pre múzejné objekty a dodnes sa používa ako štandard pre export dát do Europeany a národných agregátorov.

Výhoda LIDO spočíva v jeho komplexnosti; slabina v jeho abstrakcii. Ako uvádza Coburn, LIDO je kompromis medzi „interpretatívnymi“ a „transakčnými“ potrebami múzeí [@coburn_lido_2010].

#### **Dublin Core (DCMI, 1995–)**

Dublin Core bol pôvodne navrhnutý ako *„základný popisný systém pre heterogénne digitálne zdroje“* [@weibel_dc_1998].
V múzejnom prostredí fungoval najmä ako „najnižší spoločný menovateľ“, ktorý umožnil jednoduché harvestovanie, ale redukoval bohaté múzejné metadáta na niekoľko všeobecných polí.

#### **OAI-PMH (Open Archives Initiative, 2001)**

Ako uvádzajú Van de Sompel a Lagoze, OAI-PMH bol navrhnutý pre akademické repozitáre, no rýchlo sa stal základom pre Europeanu aj národné digitálne knižnice [@vandesompel_lagoze_oai_pmh_2002].
Bez neho by agregácia v rozsahu miliónov objektov nebola možná.

### **3.2.3 Repozitáre: Fedora Commons, DSpace a digitálne knižnice**

Repozitáre predstavovali kľúčový technologický krok medzi „internou databázou“ a „otvorenou digitálnou zbierkou“.

**Fedora Commons** zaviedla [@lagoze_fedora_2006]:

* koncept *komplexného digitálneho objektu*
* striktné oddeľovanie dát a aplikácie (model vs. prezentačná vrstva)
* robustné verziovanie a prácu s viacerými reprezentáciami.

V praxi som sa s touto infraštruktúrnou logikou stretol aj mimo múzejného prostredia. Na konferencii **Digitálna knižnica 2015** (Jasná pod Chopkom) som sa zúčastnil workshopu *Preservation and Presentation of Digital Content in Practice – Fedora Front-ends: Working with Islandora and Hydra*, ktorý viedli **Erin Tripp** a **David Wilcox**. Predstavili tam **Fedora Commons 4** a zároveň ukázali, ako sa nad repozitárom typicky stavia prezentačná vrstva (front-end) – napríklad cez **Islandora** a **Hydra** – a účastníci si tieto nástroje mohli prakticky vyskúšať [@sliacky_konferencia_digitalna_kniznica_2015, p. 66].

Z pohľadu tejto kapitoly je dôležitá najmä jedna vec: Fedora nevzniká ako „hotový produkt jednej firmy“, ale ako komunitná infraštruktúra, do ktorej sa spája viac inštitúcií, pretože len máloktorá z nich si vie sama dlhodobo dovoliť vybudovať a udržiavať robustný systém na správu digitálnych objektov. Aj preto Fedora pracuje s dôrazom na dlhodobú uchovateľnosť, interoperabilitu a sémantické vzťahy medzi objektmi; pri verzii Fedora 4 sa navyše zdôrazňoval výkon, flexibilnejšie ukladanie, podpora research data a linked data [@sliacky_konferencia_digitalna_kniznica_2015, p. 66].

Fedora bola pôvodne určená pre akademické knižnice, no ukázalo sa, že jej model výborne sedí aj múzejným potrebám — najmä tam, kde je dôležitá trvácnosť a uchovateľnosť dát.

**DSpace** ponúkal jednoduchší, viac „knižnično-orientovaný“ model a stal sa najrozšírenejším open-source repozitárom pre univerzity [@smith_dspace_2003].
Mnohé múzeá prebrali tieto technológie práve preto, že existovali ako stabilné, komunitou spravované riešenia.

Ako upozorňuje Seamus Ross, kľúčovým problémom týchto systémov bolo to, že **neboli navrhnuté pre umelecké diela**, takže múzeá museli prispôsobiť svoju evidenciu technologickým možnostiam — nie naopak [@ross_digital_preservation_2012].

### **3.2.4 Autoritatívne zoznamy: ULAN, AAT, VIAF**

Authority files vznikli v kontexte snahy o normalizáciu názvov a identít v múzejnom a knižničnom prostredí.

* **ULAN (Union List of Artist Names)** – Getty, od 1980s
* **AAT (Art & Architecture Thesaurus)** – Getty, od 1990s
* **VIAF (Virtual International Authority File)** – OCLC, 2003–

Ich úlohou je riešiť problém variantných zápisov a poskytnúť stabilné identifikátory pre osoby, miesta, témy a koncepty.

Ako upozorňuje Baca, authority files nie sú len technické riešenia: definujú, *čo je uznané, pomenovateľné a prepojiteľné* v kultúrnom systéme [@baca_introduction_to_metadata_2016].

V kontexte múzejných zbierok authority files určujú:

* ktoré kategórie existujú,
* aké pojmy môžu byť priradené k dielam,
* ako sú diela prepojiteľné v agregátoroch (napr. Europeana),
* a aké naratívne línie sú v dátach čitateľné.

### **3.2.5 Otvorené dáta a API: posun k platformovému mysleniu**

Po roku 2010 sa v oblasti digitalizácie kultúrneho dedičstva začína presadzovať posun, ktorý presahuje samotné „zverejňovanie“ digitálnych reprodukcií. Do popredia sa dostáva otázka **podmienok použitia, znovupoužiteľnosti a technickej prístupnosti dát**. Digitalizácia sa tak postupne mení z publikačnej aktivity na infraštruktúrnu – nejde už len o to, *čo* je online, ale *ako* s tým možno ďalej pracovať.

Tento posun je úzko spätý so vznikom a šírením iniciatívy **OpenGLAM** [@openglam_principles_2018], ktorá prepája technologické nástroje s normatívnym rámcom otvoreného prístupu ku kultúrnemu dedičstvu. Ako ukazujú Valeonti, Terras a Hudson-Smith, OpenGLAM sa neformoval ako jednotný model, ale ako **postupne sa rozširujúce hnutie**, v ktorom jednotlivé múzeá, galérie, knižnice a archívy pristupovali k otvorenosti rôznou mierou a rôznym tempom [valeonti_how_open_openglam_2019]. Autori zároveň upozorňujú, že otvorenosť nie je binárna vlastnosť, ale spektrum rozhodnutí – od opatrného sprístupnenia náhľadov až po plnohodnotné otvorenie vysokokvalitných dát a reprodukcií.

V tomto kontexte zohrali kľúčovú úlohu aj štandardizované právne označenia. Nástroje ako **Creative Commons** a **RightsStatements.org** umožnili inštitúciám jednoznačne komunikovať právny status digitálnych objektov a odstrániť časť neistoty, ktorá bránila ich ďalšiemu používaniu. Ako ukazuje výskum OpenGLAM, práve nejasné alebo nejednoznačné označovanie práv patrilo medzi hlavné bariéry znovupoužitia digitalizovaných diel – a to nielen v komerčnom, ale aj v nekomerčnom a výskumnom prostredí [valeonti_how_open_openglam_2019].

Otvorené dáta sa tak postupne prestali chápať ako gesto „uvoľnenia obsahu“ a začali byť vnímané ako **súčasť verejnej služby a inštitucionálnej zodpovednosti**. Zároveň sa ukázalo, že otvorenosť nie je len technickou otázkou formátu alebo licencie, ale zahŕňa aj právne, komunikačné a organizačné rozhodnutia, ktoré majú priamy vplyv na to, či sú dáta skutočne použiteľné.

Z praxe lab.SNG však viem, že „otvorenosť“ nie je len technické rozhodnutie, ale aj právno-komunikačná disciplína. Keď sme na Webe umenia začali s nadšením sprístupňovať autorskoprávne voľné diela (autor je viac ako 70 rokov po smrti), pôvodne sme ich označili licenciou Creative Commons. Aby sme mali istotu, že to robíme správne, kontaktovali sme priamo **Creative Commons Slovensko**. Veľmi rýchlo nám vysvetlili dôležitý rozdiel: licenciu Creative Commons si vie udeliť (alebo sprostredkovať) držiteľ práv k dielu, no pri dielach vo verejnej doméne nejde o „licencovanie“, ale o označenie statusu. Odvtedy preto pri voľných dielach používame **Public Domain Mark 1.0** [@cc_public_domain_mark_1_0; @cc_slovakia], a na Webe umenia ho uvádzame pri dielach, kde s tým materská galéria súhlasila [@webumenia_informacie].

Významný posun v praxi však prinieslo zavádzanie **API** — aplikačných rozhraní, ktoré umožnili, aby zbierka fungovala ako platforma.
Ako uvádza Chan, API v Cooper Hewitt Museum zmenilo spôsob, akým môže verejnosť a vývojári pracovať s dátami: od jednoduchého prezerania k experimentu, vizualizácii a tvorbe nových aplikácií [@chan_api_2015].

API je v tomto zmysle moment, keď zbierka prestáva byť „len webom“ a začína fungovať ako digitálna infraštruktúra: údaje a médiá sa dajú čítať, kombinovať a znovu použiť aj mimo pôvodnej stránky. Zároveň sa mení aj logika toho, ako sa zbierka správa navonok — vedľa kurátorských rozhodnutí do nej vstupujú aj algoritmické a technické pravidlá (napr. vyhľadávanie, radenie, filtrovanie). Práve vďaka tomu vzniká priestor pre nové formy práce s naratívom: od experimentálnych vizualizácií a aplikácií až po rozhrania, ktoré podporujú objavovanie a nečakané súvislosti [@chan_api_2015].

## **3.3 Vývoj a prax vo svetovom kontexte**

Digitálne zbierky sa v posledných dvoch dekádach formovali v rôznych geografických, technologických aj inštitucionálnych podmienkach. Napriek tejto diverzite vzniklo niekoľko projektov, ktoré zásadným spôsobom ovplyvnili premýšľanie o tom, čo môže online zbierka byť: či len reprezentáciou fyzickej kolekcie, alebo samostatným kultúrnym priestorom. Nasledujúce príklady nepredstavujú opis svetovej produkcie v úplnosti, ale výber kľúčových iniciatív, ktoré posunuli diskusiu o digitálnych zbierkach dopredu a vytvorili rámce, s ktorými sa stretáva aj slovenská prax.

### 3.3.1 Canadian Heritage Information Network (CHIN): národná infraštruktúra ako dlhodobý rámec

Jedným z najstarších a systematicky budovaných príkladov národnej infraštruktúry pre evidenciu a digitalizáciu kultúrneho dedičstva je Canadian Heritage Information Network (CHIN) v Kanade. Sieť vznikla už v roku 1972 ako iniciatíva federálnej vlády s cieľom podporiť múzeá a galérie pri štandardizácii dokumentácie, zdieľaní údajov a zavádzaní výpočtovej techniky do správy zbierok.

CHIN predstavuje výnimočný príklad toho, ako možno digitalizáciu chápať nie ako izolovaný technologický projekt, ale ako dlhodobú verejnú infraštruktúru. Už v 70. a 80. rokoch zohrával CHIN úlohu metodického centra: poskytoval odporúčania k dátovým štruktúram, podporoval školenia múzejných pracovníkov a vytváral spoločné rámce pre evidenciu zbierkových predmetov naprieč inštitúciami. V tomto zmysle sa CHIN stal jedným z prvých pokusov systematicky prepojiť múzejnú dokumentáciu, štandardy a výpočtovú techniku na národnej úrovni.

Dôležitým aspektom CHIN je aj jeho kontinuita. Na rozdiel od mnohých projektov, ktoré vznikli ako časovo ohraničené grantové iniciatívy, CHIN funguje desaťročia ako stabilná inštitucionálna opora pre múzejný sektor. Tento model umožnil postupný prechod od analógovej evidencie k databázovým systémom bez radikálnych zlomov, pričom sa zachovala odborná kontrola nad významom a kvalitou údajov.

Z pohľadu tejto dizertačnej práce je CHIN zaujímavý najmä ako kontrast k európskemu vývoju, kde sa národné riešenia často formovali neskôr alebo fragmentovane. Kanadský príklad ukazuje, že centralizovaná infraštruktúra nemusí viesť k uniformite obsahu, ale môže vytvoriť spoločný základ, na ktorom jednotlivé inštitúcie rozvíjajú vlastné interpretačné a prezentačné stratégie. Zároveň však potvrdzuje širší trend, ktorý sa objavuje aj v iných kontextoch: silný dôraz na evidenciu, štandardy a interoperabilitu vytvára robustné databázy, no naratívna vrstva zostáva často mimo primárneho záujmu týchto systémov.

### **3.3.2 Rijksmuseum: otvorenie zbierky ako verejnej služby**

Rijksmuseum patrilo medzi prvé európske inštitúcie, ktoré systematicky prepojili digitalizáciu zbierok s princípmi otvorených kultúrnych dát. V roku 2012 sprístupnilo tisíce diel vo verejnej doméne vrátane vysokokvalitných digitálnych reprodukcií, čo odborná literatúra označuje za prelomový moment v európskom kontexte otvoreného prístupu k múzejným zbierkam [@kapsalis_impact_open_access_2016]. Otvorenie dát tu nebolo chápané ako strata kontroly nad obsahom, ale ako rozšírenie verejnej služby – gesto, ktoré umožňuje, aby zbierkové objekty cirkulovali v nových kultúrnych, vzdelávacích a tvorivých kontextoch.

Podstatným aspektom tohto posunu bol aj širší inštitucionálny kontext. Rijksmuseum bolo v rokoch 2003 – 2013 **dlhodobo zatvorené z dôvodu rozsiahlej rekonštrukcie**, čo výrazne obmedzilo fyzický kontakt verejnosti so zbierkami. Digitálne platformy sa v tomto období nestali len sprievodným komunikačným kanálom, ale jedným z hlavných spôsobov, ako múzeum udržiavalo vzťah s publikom. Digitalizácia tu nebola reakciou na technologický trend, ale praktickou odpoveďou na situáciu, v ktorej bolo potrebné hľadať nové formy sprístupnenia.

Spustením služby **Rijksstudio** sa zároveň etabloval nový spôsob práce s digitálnymi reprodukciami. Platforma umožnila používateľom vytvárať vlastné kolekcie, výrezy a vizuálne interpretácie diel, čím sa zbierka otvorila nielen odbornému výskumu, ale aj tvorivému používaniu. Ako uvádza van der Zee, Rijksstudio ukázalo, že muzeálne dáta sa môžu stať „materiálom pre vizuálnu tvorivosť“ a že digitálne rozhranie môže aktívne podporovať nové formy interpretácie [@van_der_zee_rijksstudio_2013].

Rijksmuseum tým zároveň presadilo chápanie vysokého rozlíšenia nie ako čisto technického benefitu, ale ako kurátorskej voľby. Možnosť detailnej práce s obrazom podporuje vizuálnu blízkosť a umožňuje čítanie diel prostredníctvom formálnych, materiálových či ikonografických detailov, ktoré by v iných kontextoch zostali neviditeľné. Digitálna infraštruktúra tu funguje ako rozšírenie sprostredkovania zbierky, nie len ako jej dokumentácia.

Tento prístup sa postupne stal súčasťou identity inštitúcie. Ako zaznelo na konferencii *Culture Geek* (Barbican Centre, Londýn, marec 2019) v prednáške **Nanet Beumer**, Rijksmuseum dlhodobo pracuje s rozšíreným chápaním pojmu návštevník. Návštevníkom nie je len osoba, ktorá vstupuje do budovy múzea, ale každý, kto interaguje s jeho obsahom v online prostredí – prostredníctvom webovej zbierky, videí, podcastov alebo ďalších digitálnych formátov. Tento postoj býva v rámci inštitúcie zhrnutý do princípu *“Always open online”* [@culture_geek_conference_2019].

Skúsenosť Rijksmusea je v tomto zmysle zaujímavá aj ako referenčný príklad pre inštitúcie, ktoré čelili dlhodobému obmedzeniu fyzickej prevádzky. Situácia dlhodobo sa naťahujúcej rekonštrukcie a uzavretia väčšiny výstavných priestorov vytvorila prostredie, v ktorom sa digitálne iniciatívy nestali doplnkom, ale prirodzenou súčasťou inštitucionálneho fungovania. Práve táto kombinácia obmedzených podmienok a silného dôrazu na verejnú službu predstavovala významný zdroj inšpirácie aj pre ďalšie múzejné digitálne laboratóriá.

### **3.3.3 Cooper Hewitt Labs: rozhranie ako výskum**

Cooper Hewitt Smithsonian Design Museum je v tomto kontexte zaujímavé najmä tým, že digitálnu prácu chápalo ako spoločný priestor kurátorského a technického uvažovania. V rokoch 2011–2015 tu pod vedením **Seb Chan** a **Aaron Cope** vzniklo interné laboratórium Cooper Hewitt Labs, ktoré cielene fungovalo ako výskumno-vývojová jednotka v rámci múzea. Chan tento model opakovane opisuje ako formu *R&D v múzejnom kontexte* – výskum založený na experimentovaní, iterácii a testovaní hypotéz priamo v prevádzke inštitúcie [@chan_api_2015].

Jedným zo zásadných výstupov tohto prístupu bolo **Object API**, ktoré sprístupnilo zbierku múzea ako otvorenú dátovú vrstvu. V literatúre sa často uvádza, že Cooper Hewitt bolo jedným z prvých múzeí, kde webová stránka nebola chápaná ako primárne rozhranie, ale len ako „jedna z mnohých aplikácií postavených nad API“ [@cope_everything_miscellaneous_2014]. Tento posun umožnil chápať zbierku nie ako uzavretý katalóg, ale ako infraštruktúru, nad ktorou je možné budovať rôzne formy rozhraní a experimentov.

Súčasťou práce Cooper Hewitt Labs bola aj séria experimentálnych rozhraní, ktoré skúmali alternatívne spôsoby prístupu k zbierke. Medzi najznámejšie patrí **Color Browser**, ktorý umožňoval prehliadať objekty na základe dominantných a akcentových farieb. Chan a jeho kolegovia tento experiment opisujú ako snahu umožniť používateľom „stretnúť objekty cez vizuálne kvality, nie cez taxonomické kategórie“ [@chan_api_2015]. Dôležitým zistením pritom nebolo len to, že farba môže fungovať ako vstupná brána k zbierke, ale aj to, že zaujímavé interpretačné momenty často vznikajú práve pri menej zastúpených, nečakaných farebných akcentoch – nie pri najčastejších alebo „dominantných“ vlastnostiach kolekcie.

Popri samotných experimentoch zohrávala kľúčovú úlohu aj **transparentnosť procesu**. Cooper Hewitt Labs systematicky publikovalo nielen výsledky, ale aj priebežné poznámky, zdrojové kódy, dátové modely a metodologické úvahy. Tento prístup – často zhrnutý do neformálneho hesla *“sharing is caring”*, ktoré v prostredí múzejných digitálnych laboratórií zdôrazňoval aj **Philo van Kemenade** – posúval experimentovanie z roviny interného know-how do otvorenej odbornej diskusie. Dôležitá tu nebola len samotná realizácia experimentu, ale aj jeho zdokumentovanie, pomenovanie slepých uličiek a zdieľanie zistení.

Práve tento aspekt sa stal silnou inšpiráciou aj pre vznik a fungovanie lab.SNG. Okrem vývoja samotných nástrojov sa postupne ukázalo ako dôležité vytvoriť priestor na reflexiu a zdieľanie procesu – aj v prípadoch, keď experiment neviedol k „hotovému produktu“. Motiváciou bolo zachytiť, čo sa deje *behind the scenes*: aké otázky si kladieme, aké hypotézy testujeme a aké rozhodnutia robíme v priebehu vývoja. Výsledkom bolo aj založenie blogu **lab.SNG Medium**, ktorý slúžil ako miesto na priebežné zverejňovanie poznatkov z praxe a experimentovania s digitálnymi zbierkami.

Cooper Hewitt Labs tak v tomto kontexte nepredstavuje len súbor konkrétnych nástrojov alebo rozhraní, ale referenčný príklad toho, ako môže múzeum chápať digitálnu prácu ako kontinuálny výskumný proces – vrátane jeho zdieľania, dokumentovania a otvorenej diskusie o tom, čo funguje a čo nie.

### **3.3.4 Science Museum Group: viditeľnosť ako kurátorská otázka**

Science Museum Group upozornila na jeden z menej reflektovaných problémov digitálnych zbierok – **nerovnomernú viditeľnosť objektov**. Experiment *Never Been Seen* bol predstavený ako pokus narušiť hierarchiu pozornosti, ktorá vzniká nielen vo fyzických expozíciách, ale aj v samotných procesoch digitalizácie, v metadátach a v online katalógových systémoch. Autori projektu poukazujú na to, že digitalizácia často nevedome reprodukuje tradičné kurátorské výbery: ikonické alebo často vystavované objekty sú sprístupňované ako prvé, zatiaľ čo veľká časť zbierok zostáva nezdigitalizovaná, nedostatočne opísaná alebo prakticky neviditeľná [@science_museum_group_never_been_seen_2020].

Experiment tým otvoril zásadnú otázku, ktorá presahuje samotnú technickú rovinu digitalizácie:
**ako poradie digitalizácie, kvalita metadát a spôsob sprístupnenia formujú naratív zbierky?**
Ak sú niektoré objekty systematicky viditeľnejšie než iné, nevzniká neutrálny obraz zbierky, ale selektívny príbeh, v ktorom sa určité línie kultúrnej pamäti opakovane zvýrazňujú a iné zostávajú v úzadí.

V kontexte tejto práce je tento moment obzvlášť dôležitý. Digitálny naratív zbierky nie je daný len tým, *čo* inštitúcia vlastní, ale aj tým, *čo* je dostupné, vyhľadateľné a interpretovateľné v online prostredí. Viditeľnosť sa tu stáva kultúrnou a politickou kategóriou – výsledkom konkrétnych rozhodnutí, priorít a technických obmedzení, nie prirodzeným dôsledkom digitalizácie.

Pre moju vlastnú prax je na tomto príklade znepokojujúce najmä to, že mnohé objekty prejdú náročným a nákladným procesom digitalizácie, ocitnú sa v online zbierke, no napriek tomu zostávajú prakticky **neviditeľné**. Sú skryté za rozhraním, utopené v množstve ďalších dát a artefaktov, bez výraznejších vzťahov, kontextu či naratívnych prepojení. Z pohľadu inštitúcie pritom ide o diela, ktoré boli zaradené do zbierky práve preto, že niesli význam pre uchovanie určitej kultúrnej stopy alebo pamäti.

V online prostredí sa však – v kontexte nadprodukcie digitálneho obsahu a pri absencii interpretačných rámcov – môžu tieto objekty stať prakticky neviditeľnými a z hľadiska používateľskej skúsenosti „zbytočnými“. Nie preto, že by postrádali hodnotu, ale preto, že im chýba kontext, ktorý by ich význam sprístupnil. Experiment *Never Been Seen* tak neupozorňuje len na problém digitalizačných priorít, ale aj na širšiu otázku: **čo znamená sprístupniť dielo, ak sa s ním nikto nikdy nestretne?**

### **3.3.5 ACMI: kurátorstvo, technológia a návštevnícka skúsenosť**

Australian Centre for the Moving Image (ACMI) v posledných rokoch rozvinulo prístup, ktorý systematicky prepája fyzický výstavný priestor s digitálnymi nástrojmi a infraštruktúrou. Ako opisuje **Seb Chan**, ACMI pracuje s princípom *visitor-centred design*, v ktorom kurátorská práca zahŕňa nielen výber a interpretáciu objektov, ale aj návrh technických systémov, rozhraní a interakcií, ktoré formujú celkovú návštevnícku skúsenosť [@chan_acmi_renewal_lens_2020].

Jedným z kľúčových prvkov tohto prístupu je zariadenie **The Lens**, ktoré umožňuje návštevníkom „zbierať“ digitálne reprezentácie objektov priamo počas pohybu v expozícii a následne sa k nim vracať aj po odchode z múzea. The Lens tak nefunguje ako samostatná aplikácia, ale ako súčasť prepojeného systému, ktorý spája fyzickú návštevu s osobným digitálnym priestorom používateľa.

Seb Chan v reflexii prvých týždňov fungovania projektu zdôrazňuje, že ide nielen o nástroj pre návštevníkov, ale aj o spôsob, ako inštitúcia začína premýšľať o dátach a interakciách, ktoré počas návštevy vznikajú:

> *“Moving through the galleries visitors use the Lens to collect what they are interested in to take home and, if they are interested, look at later. […] The Lens and the data it generates is not neutral.”*
> (Chan, 2021)

Tento dôraz na „zbieranie“ objektov počas pohybu v priestore posúva ťažisko z centrálne organizovaného katalógu na **individuálnu trajektóriu návštevníka**. Digitálna zbierka tu nevzniká ako autoritatívny výber inštitúcie, ale ako osobný záznam skúsenosti, ku ktorému sa možno opakovane vracať a ktorý nadväzuje na fyzický zážitok z výstavy.

Práve tento princíp sa stal dôležitým referenčným bodom aj pre neskoršie experimenty v prostredí SNG, najmä pri návrhu aplikácie **Atlas SNG**. Myšlienka, že návštevník si môže počas prehliadky vytvárať vlastnú digitálnu stopu – a pokračovať v nej aj mimo galérie – tu funguje ako prirodzené rozšírenie výstavnej skúsenosti, nie ako paralelný digitálny produkt.

ACMI je v tomto kontexte zaujímavé aj tým, že digitálne nástroje nevystupujú ako dodatočná „vrstva“ nad fyzickou expozíciou, ale ako jej integrálna súčasť. Digitálne a fyzické prostredie sa tu vzájomne podmieňujú a spoločne formujú kurátorský rámec aj návštevnícku skúsenosť – čo predstavuje dôležitý posun v chápaní digitálnych zbierok ako aktívnej súčasti múzejnej praxe.

### **3.3.6 Otvorené vývojové prístupy v Tate, MoMA a ďalších inštitúciách**

Viaceré inštitúcie — Tate, MoMA, Walker Art Center, či The Getty — pracujú systematicky s otvoreným publikovaním kódu, dátových modelov a dokumentácie.
MoMA sprístupňuje svoje dátové sady a schémy na GitHube [@moma_github_data_project_2015], Tate zverejňuje podrobné metodiky digitalizácie a workflowy výstavných projektov [@tate_digital_transformation_reports_2017] a Walker Art Center vyvíjal open-source publikačné platformy, ktoré ovplyvnili celý múzejno-publikačný ekosystém [@walker_open_source_publishing_2008_2015].

Tieto prístupy ukazujú, že digitálne kurátorstvo nie je iba otázkou výsledného webu, ale aj transparentnosti procesov, ktoré k nemu vedú. Jadrom týchto iniciatív je vedomie, že technická infraštruktúra je súčasťou kultúrneho dedičstva, nie len jeho servisnou vrstvou.

### **3.3.7 Artsy: rozhranie, vzťahy a otvorený vývoj mimo inštitúcií**

Popri verejných múzeách a galériách zohrávali v rovnakom období významnú úlohu aj digitálne platformy vznikajúce mimo inštitucionálneho rámca. Jedným z najviditeľnejších príkladov je **Artsy**, komerčná online platforma zameraná na sprostredkovanie súčasného umenia, galérií, aukčných domov a umeleckých veľtrhov. Artsy funguje ako agregátor dát z rôznych zdrojov – vrátane komerčných galérií aj verejných inštitúcií – ktoré prepája v jednotnom rozhraní určenom primárne na objavovanie a sledovanie umenia.

Z pohľadu digitálneho kurátorstva bol Artsy v čase svojho vzniku zaujímavý najmä tým, že presunul dôraz z tradičnej katalogizácie na **vzťahy, asociácie a používateľské správanie**. Rozhranie umožňovalo používateľom „sledovať“ obľúbených autorov, umelecké smery či inštitúcie a na tomto základe objavovať ďalšie prepojené mená a diela. Objavovanie umenia tu neprebiehalo prostredníctvom pevne daných taxonómií, ale cez sieť prepojení, odporúčaní a osobných preferencií.

V kontexte tejto kapitoly je Artsy dôležité aj ako príklad platformy, ktorá veľmi skoro pracovala s rozhraním ako **implicitným kurátorským nástrojom**. Spôsob zobrazovania, radenia a prepájania diel vytváral súbory vzťahov, ktoré fungovali ako nepriame naratívy o súčasnom umení – bez jedného centrálneho výkladu, no s množstvom paralelných interpretačných ciest. Tento prístup mal výrazný ohlas a ovplyvnil očakávania publika voči digitálnym rozhraniam pracujúcim s umeleckými dátami.

Osobitnú pozornosť si zaslúži aj vývojárska kultúra Artsy. Vtedajší vedúci vývoja **Daniel Doubrovkine** (známy ako DBlock) v eseji *Becoming Open Source by Default* formuloval postoj, ktorý presahuje technickú rovinu licencovania a dotýka sa samotného spôsobu práce s kultúrnymi dátami:

> “We believe that if we’re building software to help people understand and discover art, then the work we do should be open, shareable, and reusable by others.”
> — Doubrovkine, 2015 [@doubrovkine_open_source_2015]

Otvorený prístup tu nie je chápaný len ako praktické riešenie, ale ako hodnotový rámec, ktorý zahŕňa transparentnosť rozhodnutí, zdieľanie procesu a možnosť, aby sa k vývoju mohli vzťahovať aj aktéri mimo pôvodného tímu. Tento postoj je pozoruhodný najmä v porovnaní s inštitucionálnymi príkladmi opísanými v predchádzajúcich podkapitolách. Kým múzeá ako Tate, MoMA či Walker Art Center otvárali svoje dáta a kód ako súčasť verejnej misie, Artsy k podobným princípom dospelo z prostredia komerčnej technologickej platformy.

Pre túto prácu je Artsy relevantné predovšetkým ako **externý referenčný bod**, ktorý v rovnakom čase ukázal, že rozhranie, práca so vzťahmi a otvorený vývoj môžu zásadne ovplyvniť spôsob, akým ľudia umenie objavujú a interpretujú online. Skúsenosť Artsy zároveň naznačuje, že niektoré inovácie v oblasti používateľskej skúsenosti a práce s dátami vznikali mimo múzeí – a až následne začali rezonovať aj v inštitucionálnom kontexte.

### **3.3.8 Syntéza: digitálne zbierky ako infraštruktúry významu**

Uvedené príklady ukazujú, že vývoj digitálnych zbierok nie je jednotný ani lineárny, ale opiera sa o niekoľko opakujúcich sa princípov. Digitálna zbierka sa postupne prestáva chápať ako statický katalóg a čoraz častejšie funguje ako **platforma**, ktorá umožňuje rôzne spôsoby čítania, prepájania a interpretácie objektov. Nejde pritom o jednu „správnu“ formu prezentácie, ale o vytváranie podmienok pre vznik rozmanitých interpretačných ciest.

Podobný posun je viditeľný aj v chápaní rozhrania. Rozhranie tu neplní len prezentačnú funkciu, ale stáva sa **aktívnym prvkom práce so zbierkou** – miestom, kde sa stretávajú kurátorské rozhodnutia, technické obmedzenia a očakávania používateľov. Spôsob, akým sú objekty radené, prepojované alebo zvýrazňované, má priamy vplyv na to, aké vzťahy a významy je možné v zbierke vôbec objaviť.

Napokon sa ukazuje, že technológia v múzejnom a galerijnom kontexte nefunguje len ako neutrálny nástroj. Digitálne infraštruktúry – databázy, API, vyhľadávacie systémy či interaktívne zariadenia – vstupujú do procesu interpretácie ako **aktívni sprostredkovatelia**, ktorí ovplyvňujú, čo je viditeľné, dostupné a zmysluplné. Kurátorské rozhodnutia sa tak čoraz častejšie realizujú prostredníctvom technických nastavení a dizajnových volieb.

Jednotlivé príklady zároveň ukazujú široké spektrum prístupov: od radikálne otvorených modelov sprístupňovania zbierok (Rijksmuseum), cez experimentálne laboratóriá a výskum prostredníctvom rozhraní (Cooper Hewitt), kritickú prácu s otázkou viditeľnosti a nerovnosti pozornosti (Science Museum Group), až po prepojenie fyzickej a digitálnej návštevníckej skúsenosti (ACMI). Do tohto obrazu vstupujú aj platformy mimo inštitucionálneho rámca, ako Artsy, ktoré ukázali, že práca s dátami, vzťahmi a rozhraním môže zásadne formovať spôsob, akým sa umenie objavuje a interpretuje online.

V tejto diverzite sa postupne formuje predstava digitálnych zbierok ako **infraštruktúr významu** – živých systémov, v ktorých sa prelínajú kurátorské, technické, dizajnérske a spoločenské aspekty. Digitálna zbierka tu nepredstavuje hotový výklad, ale prostredie, ktoré umožňuje vznik rôznych čítaní, návratov a reinterpretácií v čase.

Táto kapitola zároveň vytvára východiskový rámec pre nasledujúcu časť práce zameranú na československý kontext. Práve tam sa ukáže, ako sa uvedené globálne prístupy stretli s odlišnými historickými podmienkami, inými inštitucionálnymi infraštruktúrami a iným tempom technologického vývoja – a ako sa v tejto kombinácii postupne formoval aj projekt Web umenia.

## **3.4 Československý kontext**

### **3.4.0 Úvod: Špecifiká vývoja, ktorý sa nedá importovať**

Digitálne sprístupňovanie zbierok umenia na Slovensku a v Česku sa formovalo v prostredí, ktoré sa výrazne odlišovalo od kontextu západoeurópskych múzeí. Kým Rijksmuseum či MoMA stavali svoje digitálne stratégie na kontinuite dlhodobo fungujúcich informačných systémov a silných kurátorských tímov, v Československu bol vývoj formovaný prerušeniami, politickými zásahmi, limitmi infraštruktúry a neskôr aj turbulenciami transformácie po roku 1989. To však neznamená, že vznikala „slabšia“ digitálna kultúra — skôr odlišná, nerovnomerná, no v mnohom prekvapivo inovatívna.

Jednou z hlavných téz tejto kapitoly je, že práve **historická vrstvenosť, diskontinuity a špecifické impulzy**, ktoré by v inom prostredí pôsobili ako prekážky, vytvorili základ pre vznik robustnej infraštruktúry, na ktorej dnes stojí Web umenia. Práve preto má zmysel načrtnúť československý príbeh osobitne — s jeho paradoxmi, odbočkami aj prekvapivými kontinuitami.

### **3.4.1 Normalizačné korene CEDVU (1970s–1990s)**

#### **3.4.1.1 Impulz štátu a potreba centrálneho prehľadu**

Vznik Centrálnej evidencie diel výtvarného umenia (CEDVU) v 70. rokoch bol priamym dôsledkom normalizačnej snahy o štandardizáciu a kontrolu zbierok. Projekt nevznikal ako digitálna iniciatíva — prirodzene, technológie to neumožňovali — ale ako **štátna stratégia vytvoriť úplný súpis umeleckých diel v galériách a múzeách na Slovensku**.

Hoci išlo o rámec, ktorý bol motivovaný dobovým administratívnym poriadkom, jeho dopady boli ďalekosiahle: vznikol **systém dokumentačných kariet**, ktoré obsahovali štandardizovaný odborný popis diela a boli dopĺňané obrazovou dokumentáciou..

*(Poznámka: niektoré tvrdenia v tejto časti treba overiť u pamätníčky Jany Bahurinskej.)*

#### **3.4.1.2 Analógová kartotéka ako priestor práce a poznania**

Dnešný používateľ digitálnych zbierok má len ťažko predstaviteľnú mieru materiálnej náročnosti práce s analógovou dokumentáciou. V SNG sa od 70. rokov vytvárala rozsiahla kartotéka – centrálny katalóg , v ktorom každý záznam pozostával z dokumentačnej karty (popis diela)  a priloženej čiernobielej fotografie. Niektoré tieto fotografie vznikali priamo v teréne — pracovníci SNG cestovali po Slovensku a zaznamenávali diela v regionálnych galériách či múzeách.

Kartotéka bola **priestorom práce**, nie len úložiskom informácií. Študovňa centrálneho katalógu bola miestom výskumu kunsthistorikov, kurátorov a reštaurátorov. Kartotéka pretrvávala aj po nástupe digitálnej evidencie ako paralelná pracovná vrstva: aj v roku 2025 sa lístky tlačia z katalogačného systému, aby dopĺňali fyzický kartotečný celok.

Ak sa na tento vývoj pozrieme ako na kontinuálnu dátovú líniu, dá sa zhrnúť ako sled prepojených vrstiev: **kartotéka → Micro CDS/ISIS → ISG-CEDVU → Web umenia**. Táto kontinuita je dôležitá najmä preto, že vysvetľuje, prečo bolo možné neskôr publikovať (a postupne rozvíjať) verejné rozhranie bez úplného „reštartu“ evidencie.

### **3.4.1.3 Predinternetová digitalizácia: Micro CDS/ISIS a prvé databázy**

V 90. rokoch sa v Slovenskej národnej galérii pristúpilo k prvému systematickému prepísaniu údajov z papierových dokumentačných kariet do elektronickej podoby. Kľúčovú rolu v tomto procese zohral systém Micro CDS/ISIS, distribuovaný organizáciou UNESCO. Tento softvér bol pre galérie a múzeá dostupný bezplatne, čo bolo v podmienkach postsocialistických inštitúcií zásadné – umožnil začať s elektronickou evidenciou bez potreby investícií do licenčne náročných riešení.

Micro CDS/ISIS bol pôvodne navrhnutý pre potreby knižníc, no práve vďaka tomu bol na svoju dobu mimoriadne dobre vybavený nástrojmi na vyhľadávanie – umožňoval nielen jednoduché dotazy, ale aj kombinácie viacerých polí a zložitejšie rešeršné scenáre. Systém fungoval plne offline, najprv ako lokálna PC verzia, neskôr aj v sieťovej podobe, čo umožnilo jeho použitie v inštitucionálnom prostredí ešte pred nástupom internetu ako bežnej infraštruktúry.

Samotná konverzia bola zároveň výrazne kolektívnym a pedagogickým projektom. Na prepise dokumentačných kariet sa podieľali študenti katedry dejín umenia, knihovedy a Vysokej školy výtvarných umení, ktorí do databázy postupne prepísali viac než 160 000 záznamov. Táto práca predstavovala masívny zásah do infraštruktúry poznania: prvýkrát bolo možné pracovať s celým fondom zbierkových údajov v jednej elektronickej databáze, vyhľadávať v ňom, porovnávať záznamy a operovať s údajmi bez nutnosti fyzického listovania v kartotéke.

Elektronická evidencia v prostredí Micro CDS/ISIS ešte nepredstavovala „digitálne zbierky“ v dnešnom zmysle slova. Išlo o čisto interný nástroj, bez obrazovej zložky, bez verejného rozhrania a bez ambície sprístupňovať údaje mimo inštitúcie. Jej význam nespočíval v prezentácii, ale v zásadnej zmene operability dát – v tom, že údaje sa stali strojovo spracovateľnými, presúvateľnými a dlhodobo udržateľnými v jednotnej štruktúre.

Práve táto infraštruktúrna kontinuita umožnila, aby sa pri neskoršom prechode na systém ISG-CEDVU existujúce údaje prevzali priamo z prostredia CDS/ISIS, bez potreby opakovať celý katalogizačný proces. Identifikátory, terminológia a opisné polia tak neboli výsledkom jednorazovej reformy, ale dôsledkom postupne budovanej elektronickej evidencie už v predinternetovom období.

Z tohto pohľadu Micro CDS/ISIS nepredstavuje slepú technologickú vetvu, ale kľúčový medzistupeň, ktorý umožnil neskorší rozvoj komplexnejších systémov správy zbierok. Bez tejto vrstvy by CEDVU nemalo k dispozícii konzistentne spracovaný dátový základ a neskoršie online projekty – vrátane Webu umenia – by museli pracovať s fragmentárnymi alebo nanovo vytváranými údajmi.

Táto fáza zároveň uzatvára dôležitú, hoci často prehliadanú kapitolu digitalizácie: prvá vlna digitalizácie prebehla ešte bez internetu, bez obrazov a bez verejného rozhrania, v podobe ručne prepisovaných textových polí a textových databáz. Práve táto „neviditeľná“ práca vytvorila podmienky pre neskorší technologický skok – a ukazuje, že digitálne zbierky nevznikajú náhle, ale ako výsledok dlhodobého vrstvenia rozhodnutí, ľudskej práce a infraštruktúrnych kompromisov.

### **3.4.2 ISG-CEDVU: štandardizácia a profesionalizácia (2000s)**

Po dlhom období analógovej evidencie a prvých elektronických pokusov v systéme Micro CDS/ISIS priniesla prvá dekáda 21. storočia zásadnú zmenu. Slovenská národná galéria začala budovať **ISG-CEDVU**, moderný informačný systém galérií, ktorý mal prvýkrát v histórii umožniť jednotnú, profesionálnu a dlhodobo udržateľnú evidenciu diel výtvarného umenia na národnej úrovni. Hoci legislatívne poverenie existovalo už od 70. rokov, až teraz sa vytvorili technické a organizačné podmienky na to, aby sa evidencia stala skutočnou infraštruktúrou.

#### **Od kartotéky k digitálnemu jadru**

Základom novej platformy bola rozsiahla databáza údajov, ktorá vznikla v 90. rokoch prepisom analógových dokumentačných kariet do systému Micro CDS/ISIS. Samotný prepis neprebiehal ako interná administratívna činnosť galérie, ale ako rozsiahly externý projekt, na ktorom sa za honoráre podieľali najmä študenti dejín umenia, knihovedy a Vysokej školy výtvarných umení. Ich úlohou bolo manuálne prepísať obsah kartotékových lístkov do elektronickej podoby.

Na túto fázu však bezprostredne nadväzovala odborná práca pracovníkov oddelenia CEDVU, ktorí zabezpečovali kontrolu, verifikáciu a zjednocovanie údajov. Ako zdôrazňujú Bohumelová a Kusá, pôvodné kartičky obsahovali veľké množstvo nesúrodých informácií – rozdielne poradie autorov, rôzne spôsoby zápisu dátumov, nejednotné uvádzanie rozmerov, techník či názvov diel. Elektronická databáza tak nevznikala ako pasívny prepis existujúceho stavu, ale ako postupne kultivovaný dátový korpus, v ktorom sa analogické nepresnosti museli aktívne riešiť.

Ešte pred samotným prechodom na systém ISG-CEDVU prebehla intenzívna harmonizácia dát, zameraná najmä na zjednocovanie terminológie, autorít a tezaurických hesiel. Cieľom bolo pripraviť databázu tak, aby bola kompatibilná s novým informačným systémom a aby sa minimalizovali straty a nekonzistencie pri migrácii. Napriek tejto príprave bol samotný prenos dát z prostredia Micro CDS/ISIS do CEDVU technicky aj metodicky komplikovaný, čo potvrdzuje, že išlo o transformáciu medzi dvoma rozdielnymi generáciami evidenčných systémov, nie o jednoduchý import.

Práve vďaka tomuto viacstupňovému procesu – manuálnemu prepisu, odbornej kontrole, systematickej harmonizácii a náročnej migrácii – však vzniklo digitálne jadro evidencie, na ktorom dnes stojí Centralizovaný katalóg diel. Elektronická evidencia vytvorená v prostredí Micro CDS/ISIS sa tak nestala len prechodným riešením, ale zásadnou infraštruktúrnou vrstvou, ktorá umožnila kontinuitu dát pri prechode na CEDVU a neskôr aj ich využitie v online projektoch.

#### **Normy, ktorým rozumie celá krajina**

Vstup do 2000s si vyžiadal nielen nový softvér, ale aj aktualizáciu metodických zásad. SNG preto pripravila publikáciu *Pravidlá katalogizácie umeleckých diel*, ktorá systematicky definovala povinné a voliteľné polia, spôsob zapisovania údajov, autoritné termíny aj metodiku práce s atribúciami, dielami bez autora či zložitými prípadmi ikonografie [@ondrejcekova_pravidla_katalogizacie_1979]. Na ne nadväzoval *Štandard pre popis diel výtvarného umenia* [@bahurinska_stadandard_pre_popis_2002] spracovaný pre potreby databázového spracovania údajov z papierových dokumentačných kariet.
Na rozdiel od skorších predpisov išlo o text vytvorený s vedomím, že údaje budú spracovávané digitálne, prenášané medzi inštitúciami a pravdepodobne aj zdieľané mimo odborného prostredia. 

Podkladom boli nielen medzinárodné odporúčania CIDOC–ICOM, ktoré od 80. rokov systematicky formovali prístupy k dokumentácii a modelovaniu múzejných dát, ale aj praktické skúsenosti pracoviska CEDVU z 90. rokov, získané pri prevode analógovej evidencie do elektronickej podoby. Dôležitým referenčným rámcom boli zároveň zahraničné príklady národných infraštruktúr, najmä Canadian Heritage Information Network (CHIN) v Kanade, ktorý dlhodobo prepájal štandardizáciu dokumentácie s prevádzkou centrálnych databáz kultúrneho dedičstva.

#### **Vznik centralizovaného systému**

Nové rozhranie ISG-CEDVU umožnilo po prvý raz pracovať so spoločnou databázou na jednom serveri. Regionálne galérie sa do nej pripájali pomocou klientských aplikácií a zdieľali rovnaký systém polí, rovnaké pravidlá a rovnaké autority.
Zmena architektúry mala aj praktické dôsledky: odstránila lokálne rozdiely, ktoré vznikali v izolovaných systémoch, a umožnila školenia, metodickú podporu a pravidelné revízie. Evidencia sa stala spoločnou úlohou, nie len súborom samostatných praktík.

#### **Predpoklad pre verejné sprístupnenie**

Keď bol ISG-CEDVU plne v prevádzke, objavil sa nový, dovtedy nepredstaviteľný scenár. Ak sa galérie dokázali pripájať k centrálnej databáze na diaľku a pracovať s rovnakým súborom údajov, znamenalo to, že popisné dáta existujú v podobe, ktorú možno automaticky exportovať.
V tejto chvíli sa otvorila otázka, ktorá neskôr povedie k vzniku Webu umenia: **môže mať verejnosť prístup aspoň k časti údajov, ktoré sa dovtedy považovali za interné?**
Nebolo to výsledkom strategického plánovania, ale prirodzený dôsledok každodennej práce s novým systémom. Pracovníci, ktorí dovtedy evidenciu vnímali ako komunikačný nástroj medzi kurátormi, dokumentátormi a depozitom, zrazu videli, že dáta možno automaticky zdieľať, aktualizovať a publikovať.

#### **Dualita, ktorá pretrvala**

Aj po zavedení ISG-CEDVU ostala analógová kartotéka zachovaná ako oficiálny výstup evidencie – nie z nostalgie, ale z legislatívnej povinnosti a potreby trvalého záznamu. Nové kartičky sa tlačia priamo z dát uložených v ISG-CEDVU.
V praxi tak vznikol neobvyklý stav: **analógová a digitálna evidencia existujú paralelne**. Staršie kartičky sú svedectvom o vývoji popisu diel v 70. a 80. rokoch, novšie predstavujú presnú tlačovú verziu súčasnej databázy. Tento súbeh dvoch médií umožňuje pozorovať kontinuitu aj diskontinuity v uvažovaní o dielach – od ručne písaných lístkov až po digitálne autority.

#### **Poznámka k histórii CEDVU**

_Presný priebeh vzniku CEDVU v 70. rokoch, najmä súvislosti s celoštátnym súpisom zbierok, kombináciou galerijných a muzeálnych fondov a prvými metodikami, bude potrebné doplniť vo fáze finálnej verzie na základe rozhovorov s pamätníčkami, najmä s Janou Bahurinskou._

Centralizovaný katalóg diel, aký dnes poskytuje SNG, je výsledkom niekoľkých vrstiev evidencie – od kartotéky cez Micro CDS/ISIS a CEDVU až po dnešné publikované rozhranie, ktoré sprístupňuje údaje verejnosti v prehľadnej a vyhľadávateľnej forme.

### **3.4.3 Slovakiana ako paralelná cesta (2013–2015)**

Slovakiana vznikla ako **národný projekt** v rámci operačných programov, s ambíciou vytvoriť centrálny agregátor digitálneho kultúrneho dedičstva. Jej logika bola prirodzene „top-down“ — vyplývajúca z mandátu štátu, s výrazne vyšším rozpočtom a povinnosťou zahrnúť široké spektrum pamäťových inštitúcií.

Z pohľadu galérií mala Slovakiana tri prínosy:

1. **Zjednotenie technického formátu dát** pre odovzdávanie do Europeany,
2. **Stabilnú infraštruktúru pre centrálnu prezentáciu**,
3. **Zvýšenie viditeľnosti slovenského kultúrneho dedičstva** v európskom prostredí.

Zároveň však vznikala **paralelne s Webom umenia**, ktorý bol presne opačný typ iniciatívy: bottom-up, vychádzajúci z konkrétnych potrieb SNG a s dôrazom na experimentovanie.


### **3.4.4 Český kontext: Artlist.cz a CEAD.space**

Tieto české projekty neboli priamymi technologickými predlohami Web umenia, ale významným spôsobom **formovali predstavu o tom, čo môže digitálna platforma pre umenie byť** – aký typ obsahu ponúka, akú mieru autority si nárokuje a akým spôsobom sprostredkúva vzťahy medzi dielami, autormi a historickým kontextom.

V českom prostredí sa v priebehu 2000s a 2010s objavili platformy, ktoré možno chápať ako paralelné k vývoju v SNG – nie z hľadiska technickej architektúry, ale **typologicky a koncepčne**. Dva z nich sú pre túto prácu obzvlášť relevantné: **Artlist.cz** a **CEAD.space**.

#### **Artlist.cz**

Projekt Umeleckoprůmyslového musea v Prahe bol od začiatku koncipovaný ako **kurátorsko-encyklopedická databáza** zameraná na výtvarné umenie v Česku. Obsahuje autorské heslá, biografie, základné bibliografie a prepojenia na diela a inštitúcie. Na rozdiel od čisto evidenčných systémov pracuje s jasne formulovaným hlasom a odbornou autoritou – databáza tu nevystupuje ako neutrálne úložisko, ale ako nástroj odborného sprostredkovania.

Pre slovenský kontext – a neskôr aj pre návrh Web umenia – bol Artlist dôležitý najmä z hľadiska **používateľského rozhrania a práce s autoritami**. Jednoduchý a zrozumiteľný zoznam autorov, prehľadné triedenie a možnosť filtrovania podľa abecedy predstavovali funkčný štandard, ktorý sa ukázal ako mimoriadne robustný a čitateľný. Práve tento typ rozhrania – bez nadbytočných vizuálnych alebo technických vrstiev – sa stal jedným z priamych referenčných bodov pri návrhu autoritných záznamov a navigácie v prostredí Web umenia.

Artlist tým zároveň demonštroval, že aj relatívne jednoduchá databázová štruktúra môže fungovať ako silný nástroj orientácie v umeleckom poli, pokiaľ je podporená konzistentnou terminológiou, jasnou informačnou architektúrou a odbornou redakčnou kontrolou.

#### **CEAD.space**

Projekt **CEAD.space** (Central European Art Database), realizovaný Centrom súčasného umenia DOX, predstavuje odlišný, no komplementárny prístup. CEAD bol koncipovaný ako **archívno-výskumná platforma** so zameraním na stredoeurópske umenie druhej polovice 20. storočia, s dôrazom na konceptuálne, intermediálne a akčné formy tvorby.

Na rozdiel od Artlistu, ktorý buduje encyklopedickú autoritu, CEAD pracuje s **výberovým tematickým rámcom**. Zameriava sa na konkrétny historický a geografický kontext a cielene agreguje dáta z viacerých inštitúcií, archívov a súkromných zbierok. Diela sú tu čítané nie izolovane, ale vo vzťahoch – ako súčasť spoločného kultúrneho a politického prostredia strednej Európy.

Pre SNG bol CEAD dôležitý aj z hľadiska priamej odbornej výmeny. V roku 2015 sa uskutočnilo kolokvium k projektu CEAD v Olomouci, na ktorom sa zúčastnili aj pracovníci SNG. Na projekte sa podieľal aj **Dušan Barok**, ktorého práca s digitálnymi archívmi a publikačnými stratégiami rezonuje aj v ďalších častiach tejto dizertácie.

Z technologického hľadiska je zaujímavé, že CEAD využíva open-source systém **CollectiveAccess**, čo umožnilo flexibilnú prácu s rôznorodými typmi objektov, dokumentov a vzťahov. Tento aspekt bol dôležitý nie ako konkrétna technologická predloha, ale ako dôkaz, že otvorené nástroje dokážu podporiť komplexné výskumné a archívne projekty aj mimo veľkých národných inštitúcií.

### **3.4.5 Dvojkoľajnosť digitálnej transformácie: paralelné projekty, odlišné logiky**

Jednou z charakteristík slovenského vývoja je **paralelné vznikanie dvoch typov digitálnych projektov**:

* národných, agregátorových (Slovakiana),
* inštitucionálnych, experimentálnych (Web umenia).

Tento paralelizmus nevytváral duplicitu, skôr **viacvrstvové prostredie**, v ktorom bolo možné sledovať rozdielne prístupy:

* agregácia vs. interpretácia,
* štandardizácia vs. flexibilita,
* plošná reprezentácia vs. kurátorská hĺbka.

Výsledkom bolo, že Web umenia mohol vzniknúť takmer organicky, „odspodu“ — bez prehnaného projektového tlaku, s malým tímom a s možnosťou učiť sa počas procesu. Z vlastnej skúsenosti z prostredia SNG vnímam, že práve táto nízka programová zaviazanosť (a tým aj priestor na iteráciu) umožnila vyzrieť rozhraniu aj dátovým rozhodnutiam do podoby, ktorá sa v inštitúciách často rodí ťažšie.

### **3.4.6 Vznik lab.SNG (2010–2015): in-house ako stratégia**

#### **3.4.6.1 Prečo in-house?**

Jednou z dôležitých čŕt slovenského príbehu je rozhodnutie SNG vytvoriť **vlastný interný tím vývoja**.
Toto riešenie nebolo typické — väčšina galérií v Európe využívala externé dodávateľské firmy.

Dôvody boli najmä tri: potrebná blízkosť ku kurátorom (aby vývojári rozumeli praxi interpretácie a práce so zbierkami), uchovávanie know-how priamo v inštitúcii (digitálne projekty potrebujú dlhú kontinuitu) a napokon inšpirácie zo sveta (Cooper Hewitt Labs, Rijksmuseum, Brooklyn Museum), ktoré ukazovali, že aj v kultúrnej inštitúcii môže fungovať výskumno-vývojové prostredie.

#### **3.4.6.2 Prvé experimenty: SoundWalk a mikrostránky**

Vznik lab.SNG nebol administratívnym rozhodnutím, ale **postupným formovaním praxe**.
Prvým projektom bola mobilná aplikácia SoundWalk pre Kaštieľ Strážky, ktorej produkcia ukázala, ako potrebná je koordinácia kurátorov, pedagogiky, editorov a vývojárov.

Nasledovali „mikrostránky“ pre výstavy — prototypové prostredia, kde sme testovali harvesting dát z CEDVU, mapové zobrazenia diel, časové osi, prácu s vysokým rozlíšením aj vyhľadávanie.

Vývoj bol iteratívny, experimentálny a často priamo viazaný na konkrétne kurátorské zadania. Ako som postupne zisťoval, tento proces nebol len technologický: **menil spôsob, akým inštitúcia premýšľa o digitálnom obsahu**.

Osobitnú rolu v tejto fáze zohral prototyp k výstave **Dve krajiny** (`https://dvekrajiny.sng.sk`), ktorý mimochodom dodnes beží ako samostatný web. Vznikol v situácii, keď ešte nebolo samozrejmé, že SNG „má na to“ nahradiť existujúcu verziu Webu umenia vlastným vývojom; prototyp preto slúžil aj ako praktický argument dovnútra inštitúcie. Od začiatku sa vyvíjal s ambíciou, aby sa stal základom budúceho Webu umenia: implementovali sa v ňom kľúčové vlastnosti ako fazetové filtrovanie, kolekcie a katalógové prehliadanie.

Už vtedy sme riešili aj import dát cez OAI-PMH; interný importér sme volali „**spice harvester**“ (v repozitári je aj obrázok: `https://github.com/SlovakNationalGallery/webumenia.sk/blob/main/public/images/spice_harvester.jpg`). Dôležitejšie než interný názov je fakt, že tým vznikol opakovateľný most medzi evidenciou a verejným rozhraním.

Pri importovaní väčších setov diel prototyp rýchlo narážal na limity výkonu relačnej databázy, najmä pri kombinácii filtrovania a fulltextu. Práve tu sa začal rodiť plán nasadiť **Elasticsearch** ako vyhľadávaciu vrstvu; tejto téme sa vraciam v kapitole 4.

#### **3.4.6.3 Zrodenie novej verzie Web umenia**

Nová verzia Web umenia (spustená v roku 2016) bola výsledkom uvedomenia, že nestačí „zobraziť dáta“. Potrebné bolo prepájať diela do kontextu, pracovať s vizuálnymi vzťahmi, rozprávať kurátorské príbehy a vytvárať používateľsky prívetivé rozhranie.

Web umenia bol — a naďalej je — **laboratórnym projektom**, v ktorom architektúra, dizajn a kurátorstvo spolu vytvárajú nový druh naratívneho priestoru. Podrobnejšie sa k tomu vraciam v časti 3.5, kde ťažisko lab.SNG rámujem priamo cez vývoj Webu umenia.

### **3.4.7 Zhrnutie: slovenský príbeh ako paradox a výhoda**

Slovenský vývoj digitálnych zbierok je pozoruhodný tým, že kombinuje tri vrstvy, ktoré sa inde v Európe bežne nevyskytujú pohromade:

1. **historicky silná centrálna evidencia**,
2. **národná agregátorská platforma**,
3. **inštitucionálne laboratórium so schopnosťou in-house vývoja**.

Tieto vrstvy vznikali nezávisle, z odlišných dôvodov, s rôznymi motiváciami — no práve ich prepojenie vytvorilo základ pre výskum a inovácie, ktoré by inde neboli samozrejmé.

Z dnešného pohľadu je fascinujúce, že mnohé z toho, čo sa ukazuje ako kľúčové pre digitálne kurátorstvo (štandardizované metadáta, stabilné identifikátory, jednotné slovníky, kvalitná evidencia), vzniklo ešte v období, keď cieľom nebola digitálna interpretácia, ale **administratívna dôslednosť**.

Je to paradox dejín:
*to, čo vzniklo v období normlizácie, dnes umožňuje otvorenosť, experimentovanie a kreatívny výskum*.

Príbeh Web umenia tak nie je len príbehom technologického projektu, ale aj príbehom kultúrnej pamäte, ktorá sa — niekedy nečakane — ukazuje ako moderná infraštruktúra pre digitálny vek.

## **3.5 Príbeh Web umenia**

Vznik Web umenia často pôsobí ako prirodzené pokračovanie CEDVU: ak existuje centrálna databáza, zdá sa logické sprístupniť ju. Historická realita je však odlišná. Web umenia nevznikol ako súčasť strategických plánov SNG či ministerstva, ani ako „front-end“ k novému informačnému systému. Bol výsledkom dvoch síl, ktoré sa stretli v správnej chvíli: technologickej pripravenosti ISG-CEDVU a potreby hľadať spôsob, ako prezentovať zbierky v prostredí, ktoré sa rýchlo menilo.

### **3.5.1 Od CEDVU k prvému webu (2010): spontánny začiatok**

Keď **Slovenská národná galéria** okolo rokov 2008–2010 dokončovala prvé rozsiahle digitalizačné cykly (najmä maliarstvo 19. a 20. storočia), stávalo sa čoraz zreteľnejším, že digitálne reprodukcie a popisné údaje uložené v interných systémoch neplnia celý svoj potenciál. Digitalizácia bola primárne orientovaná na dokumentáciu, odbornú prácu a tlačové výstupy; verejnosť k týmto dátam nemala priamy prístup, hoci dopyt po informáciách o zbierkach postupne narastal.

Zároveň pretrvával organizačný model, v ktorom bolo CEDVU fyzicky dostupné len v centrálnej budove SNG. Existovalo samostatné pracovisko, ktoré vybavovalo žiadosti o výpisy z evidencie – pre odborníkov, inštitúcie aj verejnosť. Hoci boli údaje už v tom čase vedené digitálne, ich distribúcia prebiehala offline: regionálne galérie zasielali aktualizácie do centra na disketách a prístup k dátam bol viazaný na fyzickú prítomnosť alebo sprostredkovanú komunikáciu. Tento spôsob práce bol funkčný, no čoraz menej udržateľný.

V rovnakom období prebiehal v SNG vývoj nového rozhrania ISG-CEDVU a prvé experimenty s prehliadaním digitalizovaných diel v elektronickej podobe. Prepojenie týchto línií však nebolo výsledkom strategického plánu. Myšlienka sprístupniť dáta verejnosti prostredníctvom webu vznikla skôr ako **praktická reakcia na existujúci stav** – ako snaha zjednodušiť prístup k údajom, ktoré už boli centralizované a technicky spracované.

V momente, keď sa ukázalo, že dáta možno exportovať a zobrazovať mimo interného systému, otázka už neznela *či* ich sprístupniť, ale *akým spôsobom*. Prvá verzia webu preto vznikla ako prototyp, nie ako hotový produkt. Mala minimalistickú podobu, jednoduché detailové stránky a základné vyhľadávanie. Napriek tomu priniesla zásadnú zmenu v praxi: po prvýkrát bolo možné prezerať diela SNG aj regionálnych galérií na jednom mieste, s jednotnou štruktúrou metadát a rovnakou logikou popisu.

Spätným pohľadom možno povedať, že Web umenia vznikol skôr z **prevádzkovej potreby a presvedčenia o zmysluplnosti otvorenia dát** než z formálneho poverenia. Práve táto okolnosť mu umožnila fungovať ako experimentálny projekt, ktorý nevychádzal z hotovej stratégie, ale z každodennej práce s infraštruktúrou a z testovania možností, ktoré existujúce dáta postupne ponúkali.

### **3.5.2 Technologické pozadie: Fedora Commons a prvé integračné pokusy**

Ak prvotný impuls vznikol z evidenčnej praxe, technologické zázemie Webu umenia sa formovalo v už odlišnom prostredí. Projekt Digitálna galéria (2012–2015) priniesol nielen masívnu vlnu digitalizácie, ale aj zásadné rozhodnutie: vybudovať repozitár na báze **Fedora Commons**, technológie, ktorá bola v tom čase rozšírená najmä v akademických a knižničných inštitúciách.

Fedora umožňovala uchovávať digitálne objekty (snímky, metadáta, odvodeniny) v podobe, ktorá bola dlhodobo udržateľná, verzovateľná a prepojená s ďalšími systémami. Hoci ISG-CEDVU ostal primárnym miestom katalogizácie, Fedora sa stala úložiskom digitálnych objektov, ktoré bolo možné publikovať smerom von.

To znamenalo, že Web umenia už nestál na ad hoc riešeniach, ale na infraštruktúre, ktorá vedela zabezpečiť kvalitu reprodukcií, ich životný cyklus a vzťahy medzi objektami. Zároveň sa otvorila možnosť API — prístupového rozhrania, ktoré umožnilo vytvárať aplikácie alebo vizualizácie nad dátami. Táto vrstva neskôr zohrá kľúčovú úlohu pri výskume naratívnych možností digitálnych zbierok.

### **3.5.3 Zmena paradigmy: od evidencie k rozhraniu**

Prvé roky Webu umenia ukázali, že evidencia a prezentácia nie sú v online prostredí dve oddelené praxe. Hoci sa v inštitucionálnom rámci často chápu ako rozdielne oblasti – katalogizácia ako odborná, „technická“ činnosť a prezentácia ako komunikačná alebo edukačná vrstva – digitálna platforma tieto hranice prakticky ruší. Údaje, ktoré vznikajú pre interné potreby správy zbierok, sa v momente publikovania stávajú súčasťou verejného rozhrania a tým aj verejnej interpretácie.

V digitálnej platforme prestáva byť dielo len evidenčným objektom. Stáva sa **vstupným bodom do systému vzťahov**, rozhraním, cez ktoré používateľ číta zbierku ako celok. Už samotná voľba, ktoré polia z ISG-CEDVU sa zobrazia na verejnej stránke a v akom poradí, vytvára hierarchiu významov. Iný dôraz kladie systém, ktorý zvýrazní autorstvo a datovanie, iný ten, ktorý pracuje s témami, geografickým pôvodom či vizuálnou podobnosťou diel.

Tento posun sa ešte výraznejšie prejavil v momente, keď do Webu umenia začali pribúdať nové rozhraniové vrstvy: detailné zoomy, tematické kolekcie, fulltextové vyhľadávanie, časové osi alebo mapové zobrazenia. Každý z týchto nástrojov nepredstavoval len „funkciu navyše“, ale **nový spôsob čítania zbierky**. Rozhranie začalo aktívne určovať, aké súvislosti sú viditeľné, aké zostávajú skryté a aké sa vôbec nedajú v danom systéme artikulovať.

V tejto fáze sa pre mňa stalo čoraz zreteľnejším, že digitálna platforma nefunguje ako neutrálne „okno“ do databázy. Naopak, ide o **autonómny priestor**, ktorý produkuje vlastné významy. Tento pohľad korešponduje s argumentáciou **Fiona Cameron**, ktorá opisuje digitálne metadáta a evidenčné systémy ako formu *mediated knowledge* – sprostredkovaného poznania, vznikajúceho sériou inštitucionálnych, technických a dizajnových rozhodnutí. Digitálny popis podľa nej nikdy nie je transparentným odrazom objektu, ale stabilizovanou interpretáciou, ktorá niektoré významy posilňuje a iné vylučuje. [@cameron_beyond_cult_replicant_2007, p. 173-189]

Podobne **Lev Manovich** upozorňuje, že rozhrania digitálnych systémov nie sú len vizuálnym obalom dát, ale aktívnou kultúrnou formou, ktorá určuje, ako možno s obsahom pracovať, čo možno porovnávať a čo zostáva mimo zorného poľa. V tomto zmysle rozhranie neprekladá databázu do zrozumiteľnej podoby, ale vytvára z databázy **konkrétny naratívny potenciál** [@manovich_language_new_media_2001].

Tieto teoretické východiská spätne osvetľujú praktickú skúsenosť s vývojom Webu umenia. Dizajn rozhrania – často vnímaný ako technická alebo estetická úloha – sa ukázal byť formou kurátorstva, ktorá má porovnateľný vplyv na význam ako tradičný kurátorský výklad. Rozhranie síce vystupuje ako neutrálne, no v skutočnosti rozhoduje o tom, **čo je v zbierke čitateľné, čo je dohľadateľné a čo zostáva na okraji pozornosti**.

Táto zmena paradigmy – od evidencie k rozhraniu – sa stala jedným z kľúčových východísk ďalšieho vývoja Webu umenia. Ukázala, že práca s digitálnymi zbierkami nie je len otázkou správnosti údajov, ale aj otázkou zodpovednosti za spôsoby, akými sú tieto údaje sprístupňované, prepájané a interpretované v online priestore.

### **3.5.4 Web umenia ako laboratórium: iterácia, dialóg a vývoj v reálnom čase**

Okolo roku 2013–2014 sa vývoj Webu umenia prelial do širšieho experimentálneho rámca. Z iniciatívy Michala Čudrnáka vznikol **lab.SNG** — najprv ako neformálna skupina ľudí pracujúcich „bokom popri oficiálnych úlohách“, neskôr ako stabilizovanejšia vnútorná platforma.
Inšpirácia prichádzala aj zo zahraničia: Cooper Hewitt Labs, tým okolo Seba Chana v ACMI či Rijksstudio ukazovali, že technologický vývoj môže byť súčasťou galerijnej kultúry, nie službou, ktorú si inštitúcia objednáva.

To, čo bolo pre lab.SNG špecifické, bola jeho blízkosť ku kurátorským a edičným tímom. Náš stôl bol fyzicky pár metrov od depozitárov a kancelárií odborných pracovníkov, čo znamenalo, že pri každom rozhodnutí — od zobrazovania techník po tvorbu filtrov — prebiehal dialóg.
Táto bezprostrednosť sa premietla aj do samotného rozhrania: funkcie Webu umenia nevznikali v izolácii, ale v kontexte výstav, zbierkových revízií, akvizičných debát či spätnej väzby od pedagógov a návštevníkov.

Za dôležitý „dôkazový“ moment vnímam prototyp **Dve krajiny**: bol to konkrétny prípad, kde sa dalo v praxi ukázať, že nová verzia Webu umenia nie je len otázkou grafiky, ale najmä dátovej a interakčnej architektúry (filtrovanie, kolekcie, import, spôsob prehliadania katalógu). Zároveň sa na ňom rýchlo ukázalo, že aj infraštruktúra má svoje limity — a že pri určitej mierke treba uvažovať o vyhľadávacej vrstve ako o samostatnom systéme.

Výsledkom bola postupná transformácia Webu umenia z katalógu na platformu:
nielen pre prezeranie, ale pre skúmanie, hra­nie, prepájanie a v niektorých prípadoch aj pre rozprávanie (Príbehy umenia).

### **3.5.5 Prelomové momenty: API, open access a nový dizajn**

Z technického hľadiska možno označiť tri momenty za rozhodujúce.

**Zverejnenie API** umožnilo otvoriť dáta externým developerom, študentom či výskumníkom. Zbierka sa tým stala nielen prístupnou, ale aj „použiteľnou“ — čo v akademickej oblasti znamenalo zásadnú zmenu.

**Prechod na open access** (voľné diela vo voľnej licencií, prístupné na stiahnutie) bol reakciou na medzinárodné trendy, najmä Rijksmuseum, ale aj výsledkom praktickej skúsenosti: ľudia si už aj tak sťahovali obrázky cez rôzne neoficiálne spôsoby. Legitimácia tejto praxe bola prirodzeným krokom.

**Nová verzia Web umenia** (cca 2015–2016) prepojila tieto vrstvy do jedného rozhrania. Už to nebola „stránka s databázou“, ale ekosystém, ktorý vedel zobrazovať tisíce diel na rôznych úrovniach granularity — od detailu obrazu po mapu kultúrnych súvislostí.

### **3.5.6 Čo Web umenia zmenil: metadáta ako naratív a platforma ako aktér**

Tým, že Web umenia začal uvažovať o rozhraní ako o priestore interpretácie, posunul diskusiu o digitálnych zbierkach na nové pole. Zbierka prestala byť statickým súborom diel; stala sa **dynamickou konštrukciou**, v ktorej:

* metadáta vytvárajú príbeh,
* vyhľadávanie konštruuje vzťahy,
* dizajn sprostredkováva odborné rozhodnutia,
* a vývojári sa nevyhnutne stávajú spolutvorcami významu.

Pre moju vlastnú prácu bol tento moment rozhodujúci. Práve tu sa ukázalo, že digitálne platformy nezviditeľňujú len samotné diela, ale aj logiku ich výberu, spôsob katalogizácie, kvalitu opisov, a dokonca aj rozhodnutia, ktoré pôsobia banálne (napr. ktoré polia sa zobrazia ako prvé).
Digitálne rozhranie je interpretáciou — nie preto, že mu to kurátor prikáže, ale preto, že je technickým aktérom so svojimi obmedzeniami a možnosťami.

### **3.5.7 Záver: Web umenia ako produkt aj symptóm**

Keď sa dnes pozeráme na Web umenia, môže pôsobiť ako prirodzená súčasť sveta online zbierok. V skutočnosti je však výsledkom veľmi špecifickej konštelácie: normalizačná kartotéka → ručný prepis do Micro CDS/ISIS → centralizácia ISG-CEDVU → digitalizačný boom 2010s → experimentálny tím lab.SNG → medzinárodné open-access impulzy.

Až kombinácia týchto vrstiev umožnila vznik platformy, ktorá dokáže byť súčasne databázou, výskumným nástrojom, rozhraním a — do istej miery — aj rozprávačom.

V tomto zmysle je Web umenia nielen produktom slovenského vývoja, ale aj jeho zrkadlom.
Je výsledkom série rozhodnutí, ktoré sa pôvodne netýkali naratívov, ale infraštruktúry, organizácie práce a každodennej evidencie. A zároveň je symptómom širšieho posunu: od múzea ako strážcu k múzeu ako aktívnemu účastníkovi digitálnych kultúrnych procesov.

## **3.6 Súčasné tendencie a smerovanie: od sprístupňovania k interpretácii**

Ak prvé dve dekády digitalizácie patrili infraštruktúre — skenerom, databázam a workflowom — posledné roky ukazujú zásadný posun. Online zbierky už nie sú chápané len ako „digitálne katalógy“, ale ako **rozhrania, ktoré sprostredkúvajú spôsoby poznania**. To, čo bolo kedysi technickým problémom, sa dnes stáva problémom epistemologickým: ako v digitálnom prostredí vzniká význam, naratív a kontext.

Tento posun je viditeľný v celom globálnom poli. Po otvorení zbierok Rijksmusea, po experimentoch Cooper Hewitt Labs a po úspešných participatívnych projektoch v Tate či MoMA sa online platformy zmenili z „výkladov“ na priestory skúmania.
Rozhranie už nie je len spôsobom, *ako* sa dielo ukazuje; čoraz viac sa stáva spôsobom, *ako* sa dielo chápe.

### **3.6.1 Nová zodpovednosť rozhraní**

Digitálne platformy dnes vykonávajú úlohy, ktoré boli kedysi prirodzene pripisované kurátorom a editorom. Automatizované odporúčania, radenie výsledkov vyhľadávania, vizuálne podobnosti či tematické kolekcie — to všetko sú mechanizmy, ktoré generujú implicitné interpretácie.
V tomto prostredí nie je možné oddeľovať technické riešenie od odborného významu. Ako upozorňuje Fiona Cameron, digitálne prostredia do zbierok vnášajú **ontologickú dynamiku**: objekty menia svoju povahu podľa toho, v akom informačnom systéme sa nachádzajú, aké prepojenia sú im priradené a aké vzťahy im rozhranie umožní nadviazať.

V praxi to znamená, že každý „mechanizmus“ rozhrania — automatické tagy, podobnostné algoritmy, časové osi či mapy — je súčasťou kultúrneho príbehu. Nevytvára iba navigáciu, ale aj interpretáciu.

### **3.6.2 Kurátor ako vývojár, vývojár ako kurátor**

Táto situácia prirodzene mení odborné roly.
Kurátorská práca už nie je len výberom diel a textovou interpretáciou. Zahŕňa prácu s dátovými modelmi, s digitálnymi reprezentáciami a s mechanizmami, ktoré umožňujú (alebo znemožňujú) určité čítanie zbierky – teda rozhodovanie o tom, aké vzťahy môžu v systéme vzniknúť a aké zostávajú neartikulateľné [@cameron_museum_collections_documentation_2010; @drucker_humanities_approaches_2011].

Na druhej strane, vývojár a dizajnér prestávajú byť „technickou podporou“.
Ich rozhodnutia majú dosah na epistemológiu zbierky: určujú, ktoré informácie sú v rozhraní centrálne, ktoré sú skryté, ktoré vzťahy sú vizualizované a ktoré vôbec nevzniknú.

V ideálnom prípade sa medzi týmito profesiami formuje **hybridná expertíza** — nie osoba, ktorá vie robiť všetko, ale tímová kompetencia, ktorá dokáže myslieť digitálne rozhranie ako kultúrny priestor, nie ako službu.

Tento model sa objavuje v inštitúciách ako ACMI, Tate, Cooper Hewitt či SFMOMA Labs.
V slovenskom prostredí bol lab.SNG jedným z prvých miest, kde sa tento typ hybridnej praxe stal reálnou súčasťou každodennosti.

### **3.6.3 Nové výzvy: etika algoritmov, personalizácia, serendipity**

S narastajúcim množstvom dát a pokročilejšími nástrojmi (počítačové videnie, NLP, strojové učenie) vzniká napätie medzi dvoma princípmi:

* **personalizáciou**, ktorá prispôsobuje obsah jednotlivcovi,
* **serendipitou**, ktorá umožňuje objaviť nečakané vzťahy a súvislosti.

V oblasti online zbierok sa práve serendipita ukazuje ako mimoriadne dôležitá.
Zbierky majú svoju vlastnú logiku: sú výsledkom dejín akvizícií, preferencií, uvažovania o tom, čo je dôležité uchovať. Personalizované rozhrania túto logiku môžu prepisovať — posúvať diela na okraj, zvýrazňovať iné, alebo potvrdzovať existujúce predsudky.

Zároveň sa objavuje otázka **transparentnosti algoritmov**.
Ak platforma odporúči dielo „podobné“ inému, na základe čoho tak robí?
Je podobnosť vizuálna, tematická, formálna, historická?
A kto rozhoduje, ktorá podobnosť je dôležitá?

Táto diskusia sa dotýka samotnej podstaty naratívnej vrstvy:
digitálne rozhranie nevytvára príbeh ako text, ale ako súbor cestičiek, filtrov, vzťahov a návratností.

### **3.6.4 Kontextualizácia ako kľúčový problém**

Ak je dnes niečo všeobecne uznávanou slabinou online zbierok, je to **nekontinuálna naratívnosť**.
Digitálne rozhrania excelujú v šírke, ale bojujú s hĺbkou.
Ponúkajú státisíce objektov, ale len málo z nich zasadzujú do zmysluplných kontextov.

Preto sa vo svete presadzuje trend „interpretácie ako služby“ — nie ako exteriérového textu či katalógu, ale ako integrálnej vrstvy digitálneho systému.
Príklady sú rôzne: Rijksstudio Stories, SFMOMA’s Send Me SFMOMA, projekty ACMI, ale aj kurátorsky vedené kolekcie Tate či tematické prehliadky v MoMA.

Všetky pracujú s rovnakou ambíciou:
vrátiť rozhraniu schopnosť vytvárať *vzťahy*, nielen *záznamy*.

### **3.6.5 Prepojenie na výskumnú otázku: digitálne rozhranie ako naratívna technológia**

V kontexte tejto kapitoly sa vraciame k ústrednej myšlienke celej dizertačnej práce:
**digitálne zbierky často trpia stratou naratívnej vrstvy, pretože sú dedičmi databázového myslenia.**

Databáza uchováva, rozhranie sprístupňuje — ale ani jedno z toho samo osebe neinterpretuje.
To, čo vzniká medzi nimi, je priestor neistoty:
priestor, kde sa významy môžu utvárať, strácať alebo fragmentovať.

Keďže rozhranie je dnes hlavným médiom zbierky, práve ono preberá rolu rozprávača.
Nie textového, ale topologického: rozpráva vzťahmi, filtrami, výbermi, dynamikou prezerania a nelineárnou logikou.

Súčasné tendencie — tlak na kontextualizáciu, hybridné kurátorsko-technické prístupy, transparentné algoritmy, podporu serendipity — sú reakciou na tento problém.
Ukazujú, že naratív nie je dodatok; je to spôsob, ako digitálna zbierka nadobúda význam.

V tomto bode sa výskumná otázka práce konkretizuje. Nejde o to, ako do digitálnych zbierok „pridať“ naratív vo forme ďalších textových vrstiev, ale o to, ako môže naratív vzniknúť prostredníctvom samotného rozhrania. Otázkou sa stáva, akým spôsobom možno navrhovať digitálne systémy tak, aby podporovali vzťahové čítanie zbierky, umožňovali orientáciu bez lineárneho výkladu a zároveň neredukovali význam na náhodný súbor dátových spojení. Digitálne rozhranie tu vystupuje ako technológia rozprávania, ktorá nepracuje s príbehom v tradičnom zmysle, ale s konfiguráciou možností, cez ktoré sa význam postupne skladá.

 