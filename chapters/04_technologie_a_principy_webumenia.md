# **4. Pod povrchom rozhrania: technológie a princípy Web umenia**

## *Preface*

> *“Any point of a rhizome can be connected to anything other, and must be.
> This is very different from the tree or root, which plots a point, fixes an order.”*
> — **A Thousand Plateaus**, Gilles Deleuze & Félix Guattari [@deleuze_thousand_plateaus_capitalism_1987]

Pri návrhu Webu umenia som si čoraz viac uvedomoval, že tradičné modely uvažovania o zbierkach – lineárne, hierarchické, kanonické – len ťažko zodpovedajú tomu, ako sa dá v digitálnom prostredí s umením reálne pracovať. Databáza síce vyžaduje štruktúru, no samotná skúsenosť používateľa sa odohráva skôr v sieti vzťahov než v pevnom poradí. Práve tu sa ako mimoriadne užitočná ukázala metafora **rhizómu**: nehierarchickej, rozvetvenej štruktúry, v ktorej môže každý bod viesť k akémukoľvek inému bodu.

Tento spôsob uvažovania sa objavuje aj v diskusiách o digitálnej histórii umenia. Ako píše **Merete Sanderhoff** v kapitole *Art History on the Internet’s Terms* v publikácii **Sharing Is Caring**, rhizóm sa stal silnou metaforou internetu – a zároveň nástrojom, ako kriticky prehodnotiť kánon dejín umenia. Namiesto jedného výkladu navrhuje pohľad na umenie ako na **web príbehov**, kde existuje viacero vstupných bodov, viacero možných ciest a žiadna jediná „správna“ trasa. [@sanderhoff_art_history_internet_terms_2014, pp. 44-48].

Pri návrhu architektúry Webu umenia bolo cieľom vytvoriť prostredie, v ktorom by sa dalo medzi dielami, autormi, témami a historickými kontextmi pohybovať asociatívne. Jedným z praktických prejavov tohto uvažovania bolo rozhodnutie spraviť v detailoch diel čo najviac prvkov prekliknuteľných – autorov, techniky, motívy, časové údaje, súvisiace texty či odkazy na vizuálne podobnosti. Cieľom nebolo vytvoriť jeden dominantný výklad, ale umožniť rôzne spôsoby čítania zbierky, ktoré vznikajú až pri samotnom používaní systému.

Táto kapitola sa preto nepozerá na technológie ako na neutrálnu infraštruktúru, ale ako na **formu myslenia**. Architektúra systému, dátové modely, API či vyhľadávanie tu vystupujú ako nástroje, ktoré umožňujú (alebo naopak obmedzujú) vznik takéhoto rhizomatického čítania zbierky. Text vychádza z konkrétnej skúsenosti s vývojom Webu umenia v Slovenskej národnej galérii a vedome sa posúva od všeobecných „state of the art“ modelov k osobnejšiemu, remeselnému opisu rozhodnutí, kompromisov a slepých uličiek.

Cielom tejto kapitoly je ukázať, ako sa abstraktné pojmy – otvorenosť, prepojenosť, serendipita – premietli do konkrétnej technickej architektúry. A zároveň pripravuje pôdu pre nasledujúce kapitoly, ktoré sa budú pýtať, **čo sa s takto navrhnutou infraštruktúrou dá robiť ďalej**: ako z nej vytvárať nové formy naratívu, interpretácie a tvorivého použitia digitálnych zbierok.

## **4.1 Architektúra ako filozofia**

Keď hovorím o „architektúre“, nemyslím tým len technický diagram komponentov. Myslím tým spôsob, akým systém **organizuje možnosti**: čo sa dá prepojiť, čo sa dá nájsť, čo sa dá preskakovať, čo sa používateľovi podsunie ako samozrejmé. Aj preto mi sedí názov tejto časti – architektúra je v praxi vždy trochu filozofia: súbor rozhodnutí, ktoré určujú, aký typ čítania zbierky systém podporuje.

Tento rozmer architektúry sa ukázal hneď po mojom nástupe do SNG. Web umenia už v tom čase existoval a bol vyvíjaný externou spoločnosťou, ktorá dlhodobo zabezpečovala aj vývoj systému CEDVU. Riešenie postavené na platforme Liferay v kombinácii s Apache Solr pôsobilo robustne a formálne, s ambíciou komplexného inštitucionálneho riešenia. Lenže v praxi to znamenalo, že aj menšie zmeny alebo nové funkcie boli zbytočne drahé a pomalé. Časť energie (a rozpočtu) sa minula na základné úlohy, ako tagovanie, a priestor na experimentovanie sa rýchlo zúžil. Vtedy som si prvýkrát naozaj uvedomil, že architektúra nie je neutrálna: dokáže určiť, či sa systém bude rozvíjať, alebo bude skôr „udržiavaný v chode“.

Preto sme zvolili opatrnejší postup: začať znova jednoduchšie, a rýchlo. Prvý prototyp vznikol ako Laravel aplikácia s MySQL – nie preto, že by to bol jediný správny stack, ale preto, že v tom čase umožňoval rýchle iterácie a zároveň bol pre tím príjemný na prácu. Výber nástrojov bol u nás od začiatku aj otázkou motivácie: ak je proces vývoja príliš ťažkopádny, rýchlo sa vytratí chuť skúšať nové veci. Laravel bol vtedy relatívne „čerstvý“ a zaujímavý framework, a aj to hralo rolu – systém sa nerodil len z povinnosti, ale aj z radosti z remesla.

::: {.aside}
**Poznámka z praxe: experimentovanie, nástroje a „pikniky“ v lab.SNG**

Pri návrhu architektúry Web umenia sa postupne ukázalo, že technické rozhodnutia nemožno oddeliť od spôsobu práce tímu. Preto sme si v lab.SNG vytvorili jednoduché, no dlhodobo funkčné pravidlo:

- **Malé projekty** slúžili ako priestor na experimentovanie – skúšali sme nové frameworky, knižnice alebo prístupy bez očakávania okamžitého „produkčného“ výsledku.  
- **Väčšie projekty** sa naopak opierali o už overené nástroje a riešenia, kde bola dôležitejšia stabilita než novota.

Aby sa poznatky z experimentov nestrácali, zaviedli sme krátke interné stretnutia, neformálne nazývané **„pikniky“**. Išlo o približne 30-minútové zdieľania, kde sa tímu sprostredkovalo, čo nový nástroj alebo prístup priniesol — vrátane situácií, keď sa ukázal ako slepá ulička.

Táto prax mala priamy dopad na architektúru systému: podporovala iteratívny vývoj, znižovala strach z neúspechu a pomáhala vnímať vývoj nie ako jednorazovú implementáciu, ale ako **proces učenia sa**, ktorý je nevyhnutný pri navrhovaní digitálnych infraštruktúr v kultúrnej inštitúcii.
:::

Slepé cesty sa objavili skoro. Napríklad snaha riešiť facety priamo cez MySQL bola chvíľu funkčná, ale pri väčšom objeme dát prestala škálovať. Nebolo to zlyhanie, skôr lacná lekcia: ukázalo sa, ktoré veci sa dajú „urobiť rýchlo“ a ktoré treba postaviť na inej vrstve. Práve takto sa architektúra začala skladať: postupne, s testovaním, s návratmi, bez predstavy, že všetko musí byť správne na prvýkrát.

### Rozhranie ako kurátor

Najjasnejšie som si prepojenie architektúry a interpretácie uvedomil pri prototype výstavy **Dve krajiny** (dvekrajiny.sng.sk). Tam sa začali objavovať drobné rozhodnutia, ktoré vyzerajú čisto dizajnérsky, ale v skutočnosti určujú „tempo“ čítania. Napríklad veľkosť náhľadov v katalógu oproti kolekciám: nie je to len estetika, ale rozhodnutie, či používateľ ide rýchlo cez veľa diel, alebo zostáva pri detaile. Podobne poradie sekcií: vo fyzickej výstave sú často sekcie samostatné miestnosti, ktoré prirodzene vedú k určitej trase; na webe je pohyb voľnejší a preskok medzi „miestnosťami“ je okamžitý. Aj tak ale poradie a členenie vytvára nenápadný návrh trasy.

A potom sú tu chvíle, s určitým drobným prekvapením: keď sa dáta zrazu začnú správať inak, než človek čakal. Pri mapových zobrazeniach sa ukázalo, že niektoré tematické okruhy „sadnú“ do priestoru tak presvedčivo, až to spätne pomáha čítať diela: hrady, zámky a ruiny začnú kopírovať jasnú líniu; modernizácia sa zasa prirodzene viaže na rieky a dopravné trasy. Tento typ „aha“ reakcie – pocit, že sa dve dovtedy oddelené oblasti náhle spoja do jedného obrazu – je blízky tomu, čo Arthur Koestler opisuje pri kreativite a objave [@koestler_humor_1964]. V našom prípade to nebol veľký objav dejín umenia; bol to dôkaz, že rozhranie môže sprístupniť vzťahy bez toho, aby muselo dopísať ďalší vysvetľujúci text.

### Viac vstupov, viac ciest

Tu sa mi prirodzene vracia aj rhizóm. Nie ako „filozofický ornament“, ale ako metafora pre spôsob, akým ľudia na internete naozaj čítajú: nelineárne, cez preskoky, cez zvedavosť. Sanderhoff v súvislosti s internetom pripomína predstavu rozvetvenej siete bez jedného centra – niečo ako podhubie, ktoré sa šíri všade a občas sa vynorí na nečakaných miestach. Zároveň tým pomenúva aj možnosť uvažovať o dejinách umenia mimo jednej hierarchie: ako o webe, v ktorom sa dá z ľubovoľného bodu prejsť k inému bodu [@sanderhoff_art_history_internet_terms_2014]. Pre Web umenia bola táto myšlienka praktická najmä v tom, že sme od začiatku chceli mať viac vstupov a viac ciest – nie jednu „správnu“ navigáciu.

Konkrétne to znamenalo jednoduché pravidlo: v detaile diela spraviť čo najviac položiek prekliknuteľných. Autor, technika, motív, čas, súvisiace texty, ďalšie diela v kolekcii – každé takéto prepojenie je malé architektonické rozhodnutie. Samotné metadáta sú síce dané evidenciou, ale ich prepojenie v rozhraní vytvára nový typ čitateľnosti: používateľ sa môže pohybovať po sieti, ktorá nie je len „katalógová“, ale vzťahová.

### Presnosť a hravosť ako pracovná podmienka

V praxi sa architektúra Web umenia skladala v napätí medzi dvoma pólmi. Na jednej strane bola potreba zachovať presnosť evidencie a kontinuitu s tým, ako sa zbierky dlhodobo opisovali (a ako sa stále opisujú). Na druhej strane bolo digitálne prostredie príležitosťou robiť veci, ktoré kartotéka ani interný systém neumožňovali: zoom, mapy, nečakané prepojenia, drobné gestá v jazyku rozhrania.

Rozdiel medzi prototypom *Dve krajiny* a neskorším Web umenia nie je „od nudného k zábavnému“, ale skôr od opatrného k sebaistejšiemu. V prototype sme si takmer nedovolili autorský jazyk; neskôr sa objavili jemné prvky, ktoré robia systém ľudskejší (404 stránka, práca s prázdnymi náhľadmi, drobné textové hry, vizuálne akcenty v searchbare). Niektoré z nich sem ešte neťahám – objavia sa neskôr ako konkrétne príklady „tónu rozhrania“ – ale už tu je dôležité povedať, že aj tieto drobnosti patria do architektúry. Nie do tej softvérovej, ale do architektúry skúsenosti.


Tento typ drobného zásahu do rozhrania ukazuje, že aj chybové stavy
môžu niesť kurátorský tón a formovať vzťah používateľa k systému
(obr. 4.1).

![Error 404 na webe dvekrajiny.sng.sk – chybová stránka ako súčasť naratívu rozhrania](./figures/fig-4-1-dvekrajiny-404.png){#fig:404}

Ak má táto podkapitola niečo uzavrieť, tak len pracovnou vetou: architektúra Web umenia nevznikla ako hotový plán, ale ako séria rozhodnutí, ktoré mali umožniť dve veci naraz – byť presní v evidencii a zároveň nechať používateľa objavovať. A práve z toho potom vyrastá ďalšia časť: čo je pod týmto rozhraním – CEDVU, repozitár, API a vrstvy, ktoré to celé držia pokope.

## **4.2 Technické prostredie a dátová infraštruktúra**

> *“The spice must flow.”*  
> — Frank Herbert, *Dune* [@herbert_dune_1965]

Web umenia nevznikol ako samostatná databáza, ale ako vrstva nad už existujúcou infraštruktúrou. Jeho základom bola a dodnes je **CEDVU – centrálna evidencia diel výtvarného umenia**, ktorá v slovenskom kontexte dlhodobo funguje ako primárny referenčný systém. V praxi to znamená, že CEDVU predstavuje *single source of truth* pre základné kunsthistorické údaje: autorstvo, datovanie, techniku, vlastníctvo, inventárne čísla a odborné poznámky.

Táto rola sa však s postupným rozvojom Webu umenia začala meniť. Ako sa do platformy zapájali ďalšie inštitúcie a ako rástli nároky na flexibilitu a otvorenosť, CEDVU prestalo byť jediným zdrojom dát — hoci si zachovalo svoju autoritatívnu pozíciu. Web umenia k nemu navyše nikdy nepristupovalo priamo. Od začiatku bol zvolený **protokol OAI-PMH**, ktorý sprostredkúva výmenu dát medzi inštitúciami štandardizovaným spôsobom.

Toto rozhodnutie malo niekoľko praktických dôsledkov. Každá zapojená galéria funguje ako samostatný OAI-PMH provider a sama určuje, **ktoré diela sprístupní**, v akom rozsahu a s akou mierou detailu. Web umenia sa tak stalo agregátorom, nie centrálnym editorom dát. Import prebieha prostredníctvom interného modulu prezývaného *spice-harvester* (pozri [@herbert_dune_1965]), ktorý odkazuje na zber „toho hodnotného“, čo môže z existujúcich interných systémov vstúpiť do verejného priestoru.

![Spice harvester – interný modul Webu umenia pre zber a aktualizáciu dát z CEDVU.  
Názov je vedomým odkazom na román *Dune* Franka Herberta.](figures/fig-4-2-spice-harvester.jpg){#fig:spiceharvester}

::: {.aside}
**Poznámka k terminológii: „harvest“ a *spice-harvester***

V kontexte Webu umenia sa pojem *harvest* nepoužíva v zmysle jednorazového importu dát.  
Označuje **priebežný zber a aktualizáciu záznamov** prostredníctvom protokolu OAI-PMH, ktorý umožňuje získavať iba tie položky, ktoré sa od posledného zberu zmenili. Tento havest beží priebežne a spúšťa sa automaticky.
:::


Na úrovni uloženia digitálnych objektov stojí v pozadí **Fedora Commons** — robustný repozitárny systém orientovaný na dlhodobú archiváciu, verziovanie a prácu s otvorenými formátmi. Fedora sa v tomto nastavení neukázala ako ideálny nástroj pre priame online použitie; jej sila je skôr v stabilite a sledovaní zmien než v rýchlom doručovaní obsahu. Web umenia preto funguje ako **derivačná vrstva**, ktorá z archivovaných dát vytvára prevádzkovateľnú podobu pre verejné rozhranie. Obrazové dáta sú pritom servírované cez samostatný image server (IIP), čo umožňuje vysoké rozlíšenia aj hlboký zoom bez toho, aby bol zaťažený samotný repozitár.

![Prepojenie CEDVU, OAI-PMH providerov a Webu umenia.  
Dáta nie sú čítané priamo, ale sprostredkovane cez harvestovací proces.](figures/fig-4-4-oai-pmh-architecture.svg){#fig:oai-pmh}

Z pohľadu architektúry sa Web umenia postupne ustálilo ako **viacvrstvový systém**, hoci nie vždy striktne oddelený. Na najnižšej úrovni sa nachádzajú dáta: metadáta diel, médiá, autoritné záznamy a pomocné štruktúry (napríklad pre geografiu alebo taxonómie). Nad nimi stojí aplikačná vrstva, ktorá zabezpečuje indexáciu, vyhľadávanie a sprístupňovanie dát prostredníctvom rôznych rozhraní. Prezentačná vrstva — webové rozhranie, mapy, kolekcie či tematické články — potom tieto dáta prekladá do konkrétnej používateľskej skúsenosti.

Hranice medzi týmito vrstvami však nikdy neboli úplne ostré. Web umenia vznikalo ako monolitická aplikácia postavená na Laraveli s blade šablónami, kde frontend a backend žili v jednom kóde. API nebolo pôvodne myslené ako primárny spôsob komunikácie, ale skôr ako **praktický nástroj**: na drobné asynchrónne dotazy v rámci aplikácie (napríklad pre podobné diela) a na sprístupnenie dát externým používateľom.

Postupne sa však vyvinuli **tri paralelné spôsoby práce s API**. Prvý slúži interne, tam kde sa to v aplikácii hodí. Druhý — historicky starší — poskytuje komunitné API postavené priamo nad Elasticsearch, využívané hackathonmi, akademickými projektmi aj galériami, ktoré zobrazujú vlastné zbierky cez Web umenia. Tretí, novší prístup (API v2) je určený pre interné aplikácie lab.SNG a pracuje s obohatenými dátami, ktoré kombinujú viacero zdrojov. Táto nejednoznačnosť je dodnes zdrojom istých technických kompromisov, ale zároveň odráža **evolučný charakter** celého systému.

Dôležitým momentom bolo uvedomenie si, že ani v dátovej vrstve neexistuje neutralita. Už samotný výber a váženie atribútov je formou interpretácie. Príkladom sú autority: pri pokusoch o „objektívne“ radenie autorov sa ukázalo, že abecedné poradie je málo informatívne, zatiaľ čo radenie podľa počtu diel zvýhodňuje architektov. Až kombinácia viacerých kritérií — počet diel s obrazom, s popisom, s kontextom — vytvorila poradie, ktoré lepšie zodpovedalo očakávaniam používateľov. Tento druh ladenia nebol jednorazovým rozhodnutím, ale opakujúcim sa procesom pokusu a omylu.

Tu sa prirodzene otvára téma, ktorú Kyle Chayka opisuje ako **algoritmické splošťovanie kultúry** [@chayka_filterworld_2024]. Aj dobre mienené algoritmy môžu systematicky zvýhodňovať „bohaté“ a viditeľné záznamy na úkor menej reprezentovaných. V prostredí Webu umenia sa tento problém neobjavuje ako abstraktná teória, ale ako každodenná otázka: ako nastaviť relevanciu tak, aby pomáhala orientácii, a zároveň nezatvárala cestu k objavovaniu. K tejto téme sa podrobnejšie vraciam v kapitole 5.

Spätne sa ukazuje, že **oddeľovanie vrstiev** nebolo len technickým opatrením, ale aj metodologickým postojom. Umožnilo Webu umenia rásť, rozširovať sa o nové aplikácie a zároveň si zachovať kontinuitu dát. Nešlo o čistý, teoretický návrh architektúry, ale o postupné hľadanie rovnováhy medzi tým, čo je stabilné, a tým, čo sa ešte môže meniť.

## **4.3 Vyhľadávanie ako kľúčový nástroj poznania**

Vyhľadávanie bolo od začiatku vedomým východiskom architektúry Webu umenia. Prvým vizuálnym prvkom, s ktorým sa používateľ stretáva, je výrazný vyhľadávací riadok — nie navigačné menu ani výber kolekcií, ale otvorená otázka. Tento dizajnový krok vychádzal z jednoduchého predpokladu: zbierka v digitálnom prostredí sa neprehliada lineárne, ale vstupuje sa do nej z rôznych strán, s rôznou mierou znalosti a s rôznymi očakávaniami.

V praxi sa rýchlo ukázalo, že vyhľadávanie používa každý inak. Odborníci často zadávajú presné mená autorov, názvy diel alebo terminologicky ustálené pojmy. Iní používatelia naopak hľadajú tematicky, intuitívne, bez znalosti „správneho“ jazyka dejín umenia. Do toho vstupujú špecifiká slovenčiny — diakritika, skloňovanie, synonymá — ktoré robia z jednoduchého fulltextu prekvapivo zložitý problém. Vyhľadávanie sa tak stalo miestom, kde sa stretáva odborné poznanie, jazyková prax aj každodenná skúsenosť používateľa.

### Elasticsearch ako infraštruktúrne rozhodnutie

Technickým predchodcom bol v tomto smere Apache Solr, použitý v staršej verzii systému. Elasticsearch sa v čase návrhu novej architektúry javil ako prirodzený krok — nielen ako „novší nástroj“, ale ako systém, ktorý explicitne pracuje s relevanciou, váhami a analytickými vrstvami. Rozhodnutie nebolo motivované ambíciou experimentovať, ale veľmi praktickým dôvodom: prvá verzia Webu umenia už pracovala s desiatkami tisíc záznamov a tradičné databázové dotazy prestávali byť použiteľné, najmä pri facetingu a kombinovaných filtroch.

> *(aside: Facetové vyhľadávanie)*
> Facetové vyhľadávanie umožňuje zužovať výsledky podľa viacerých dimenzií naraz — napríklad autor, technika, obdobie či inštitúcia. Na prvý pohľad ide o používateľský komfort, no na technickej úrovni vyžaduje rýchlu agregáciu nad veľkým objemom dát, čo je presne oblasť, kde fulltextové indexy prekonávajú relačné databázy.

Elasticsearch sa tak postupne stal viac než len vyhľadávacím modulom. Väčšina zoznamových stránok — diela, autori, súvisiace objekty — je generovaná priamo z indexu. Databáza ostáva „single source of truth“, no index slúži ako rýchla, flexibilná interpretačná vrstva. Detail diela sa vždy načítava priamo z databázy, no všetko, čo súvisí s objavovaním, radením a porovnávaním, prechádza cez Elasticsearch. Rozdiel v odozve bol citeľný: dotazy, ktoré predtým trvali stovky milisekúnd, sa skrátili na jednotky.

\begin{figure}[ht]
  \centering
  \begin{tikzpicture}[
    font=\small,
    node distance=3.2cm,
    box/.style={
      draw,
      rounded corners,
      align=center,
      text width=3.2cm,
      minimum height=1.2cm,
      inner sep=5pt
    },
    arrow/.style={->, thick}
  ]
    \node[box] (db) {Databáza\\{\scriptsize (zdroj evidenčných údajov)}};
    \node[box, right=of db] (es) {Elasticsearch\\{\scriptsize (index pre vyhľadávanie)}};
    \node[box, right=of es] (ui) {Webové rozhranie\\{\scriptsize (UI / API)}};

    \draw[arrow] (db) -- node[midway, above, align=center]{\scriptsize indexovanie\\\scriptsize (priebežná aktualizácia)} (es);
    \draw[arrow] (es) -- node[midway, below, align=center]{\scriptsize vyhľadávanie, filtre, radenie} (ui);
  \end{tikzpicture}

  \caption{Zjednodušený tok dát: databáza je zdrojom údajov, Elasticsearch slúži ako vyhľadávací index a rozhranie z neho číta zoznamy a výsledky vyhľadávania.}
  \label{fig:db-es-ui}
\end{figure}


::: {.aside}
**Čo je Elasticsearch (a prečo ho tu vôbec máme)**

Elasticsearch je špecializovaný vyhľadávací systém, ktorý slúži na rýchle prehľadávanie veľkého množstva textových a štruktúrovaných dát. Na rozdiel od klasickej databázy nie je určený na „uchovávanie pravdy“, ale na **rýchle čítanie, triedenie a porovnávanie** údajov.

V architektúre Webu umenia má Elasticsearch pomocnú rolu:

- **databáza** (MySQL) je zdrojom pravdivých a oficiálnych údajov,
- **Elasticsearch** je pracovná kópia dát, optimalizovaná na vyhľadávanie, filtrovanie a radenie výsledkov,
- **webové rozhranie** komunikuje pri zoznamoch a vyhľadávaní primárne s Elasticsearchom.

Prakticky to znamená, že:

- detail diela sa vždy zobrazuje z databázy,
- zoznamy diel, autorov, výsledky vyhľadávania či odporúčania sú čítané z Elasticsearchu, aby boli okamžité.

Elasticsearch umožňuje veci, ktoré by boli v bežnej databáze pomalé alebo technicky komplikované:  
prácu so synonymami, jazykovou analýzou, váhami polí, kombinovanými dotazmi či „nepresným“ vyhľadávaním podľa významu, nie len presnej zhody.
:::


### Slovenčina ako architektonický problém

Použitie Elasticsearch však veľmi rýchlo otvorilo ďalšiu otázku: jazyk. Dokumentácia systému bola prekvapivo čitateľná a práca s analyzátormi, tokenizáciou či vážením polí pôsobila konzistentne a premyslene. Zároveň však bolo zrejmé, že podpora slovenčiny je minimálna. Zatiaľ čo angličtina má k dispozícii hotové analyzéry, pre slovenský jazyk bolo potrebné skladať riešenie z viacerých zdrojov.

Základom sa stal modul LemmaGen Analysis for Elasticsearch [@hyza_elasticsearch_analysis_lemmagen], vyvíjaný Inštitútom Jožef Stefan v Ľubľane [@jozef_stefan_institute]
, ktorý umožňuje lematizáciu.

::: {.aside}

**Lemmatizácia**

Lemmatizácia je proces, pri ktorom sa jednotlivé tvary slova (napríklad rôzne pády, čísla či rody) vracajú na ich základnú, slovníkovú podobu, tzv. lemma. Na rozdiel od jednoduchšieho stemmingu, ktorý len skracuje slová na ich koreň (často s chybami), lematizácia zohľadňuje gramatický a významový kontext slova. Pri slovenčine je tento rozdiel zásadný – slová ako „hrad“, „hradu“, „hrade“ sa považujú za rovnaký pojem, čo zvyšuje kvalitu vyhľadávania v jazyku s bohatou flexiou.

:::

K tomu pribudli stopwords zo starších open-source zoznamov a synonymá prevzaté z OpenOffice, ktoré sa postupne upravovali podľa reálneho správania používateľov. Výsledkom bol samostatný balík `elasticsearch-slovencina` [@slovaknationalgallery_elasticsearch_slovencina]
, ktorý vznikol z čisto praktickej potreby, no postupne si našiel používateľov aj mimo Webu umenia. Z dnešného pohľadu ide o jeden z najpoužívanejších open-source výstupov SNG.

Riešenie nebolo vyvíjané v izolácii. Priebežne sme ho overovali aj mimo inštitúcie – naprríklad prostredníctvom prezentácií na komunitných vývojárskych stretnutiach a meet-upoch, kde sme mali možnosť konfrontovať naše technické rozhodnutia s reálnou praxou iných tímov  [@elasticsearch_po_slovensky_2015]. Tieto spätné väzby pomáhali overovať, že riešenie nie je šité výlučne na mieru Webu umenia, ale obstojí aj v širšom technickom kontexte.

### Vyhľadávanie ako kurátorské rozhranie

Podpora lematizácie a synonym otvorila možnosti, ktoré by v relačnej databáze neboli realizovateľné. Vyhľadanie pojmu „hrad“ začalo zahŕňať aj „zrúcaninu“, „pevnosť“ či „pod hradom“ — nie ako exaktnú zhodu, ale ako významové pole. Zrazu bolo možné nielen nájsť jednotlivé diela, ale vytvárať tematické výseky, porovnávať techniky alebo identifikovať autorov, ktorí sa k určitému motívu opakovane vracali.

Zároveň sa ukázalo, že každé rozhodnutie o váhe poľa, poradí výsledkov či „magickej“ kombinácii podmienok je implicitným kurátorským gestom. Do poradia vstupujú nielen textové zhody, ale aj prítomnosť obrazu, možnosť priblíženia, miera spracovania záznamu či dokonca počet zobrazení. Vyhľadávací algoritmus tak nikdy nie je neutrálny — vždy niečo zvýrazňuje a niečo potláča.

Práve tu sa otvára téma, ktorú Kyle Chayka opisuje ako algoritmické splošťovanie kultúry [@chayka_filterworld_2024]. Aj dobre mienené algoritmy môžu postupne zvýhodňovať „bohaté“ a dobre spracované záznamy na úkor menej viditeľných diel. Podobný problém pomenúva aj Mitchell Whitelaw, keď upozorňuje na limity vyhľadávania ako dominantného rozhrania digitálnych zbierok a navrhuje alternatívne, tzv. generous interfaces, ktoré majú skôr odhaľovať štruktúru a bohatstvo kolekcie než filtrovať ju na základe jedného dotazu [@whitelaw_generous_interfaces_2015].

V prostredí Webu umenia sa tieto otázky neobjavujú ako abstraktná teória, ale ako každodenná prax ladenia poradia, relevance a spravodlivosti výsledkov. Vyhľadávanie sa tu ukazuje nie ako neutrálna technická služba, ale ako rozhranie, ktoré spoluvytvára významy — a tým aj zodpovednosť. K týmto napätiam medzi vyhľadávaním, objavovaním a kurátorským rámcom sa podrobnejšie vrátim v kapitole 5.

### Transparentnosť a napätia

Zverejnenie vyhľadávania zároveň odhalilo kvalitu samotných dát. Chyby, nepresnosti a nekonzistentnosti, ktoré boli v internom systéme menej viditeľné, sa na webe okamžite stali verejnými. To spočiatku vytváralo napätia medzi technickým tímom a kurátormi, no v praxi spustilo ozdravný proces. Motivácia mať dáta v poriadku rástla na oboch stranách a spätná väzba od verejnosti sa ukázala ako prekvapivo užitočná.

Vyhľadávanie sa tak stalo nielen nástrojom prístupu, ale aj mechanizmom starostlivosti o zbierku. Ukázalo, že infraštruktúra nepracuje len s hotovým poznaním, ale aktívne ho formuje — tým, čo umožňuje nájsť, a tým, čo zostáva skryté.

## **4.4 Otvorené dáta, štandardy a interoperabilita**

> *“Each standard and each category valorizes some point of view and silences another.”*
> — Geoffrey C. Bowker, Susan Leigh Star, *Sorting Things Out* (1999) [-@bowker_sorting_things_out_1999; note]

Otvorené štandardy sa v oblasti kultúrneho dedičstva často opisujú ako technický predpoklad spolupráce. V praxi však fungujú skôr ako dlhodobá dohoda medzi inštitúciami, profesiami a spôsobmi uvažovania. Nevnucujú jednotné riešenie, ale vytvárajú spoločný jazyk, ktorý umožňuje, aby si systémy navzájom rozumeli — aj keď vznikli v odlišných kontextoch, s odlišnými prioritami a obmedzeniami.

V prípade Webu umenia sa táto logika neobjavila ako ideologické rozhodnutie, ale ako veľmi pragmatická potreba. Ak má systém agregovať dáta z rôznych galérií, nemôže sa spoliehať na uzavreté formáty ani na implicitné znalosti jedného pracoviska. Musí pracovať s tým, čo je zdieľateľné, čitateľné a dlhodobo udržateľné. Práve tu sa otvorené štandardy ukázali nie ako nadstavba, ale ako infraštruktúrny základ.

Kľúčovým príkladom je **OAI-PMH**, ktorý umožňuje zber (harvestovanie) metadát z viacerých zdrojov bez toho, aby bolo potrebné pristupovať priamo k interným databázam. Každá zapojená galéria si sama určuje, ktoré záznamy sprístupní, v akej kvalite a s akou mierou kontroly. Web umenia v tomto modeli nefunguje ako centrálna autorita, ale ako sprostredkovateľ — systém, ktorý dáta číta, prepája a znovu interpretuje, no nevlastní ich.

Podobnú úlohu zohrávajú aj ďalšie štandardy, ktoré sa v projekte prirodzene stretli: **LIDO** alebo **Dublin Core** pre opisné metadáta, **ULAN** pre autoritné záznamy a **IIIF** pre prácu s obrazovými dátami. Ich význam nespočíva v tom, že by boli „dokonalé“, ale v tom, že sú zdieľané. Umožňujú používať existujúce nástroje — napríklad IIIF prehliadače ako OpenSeadragon [@openseadragon] — bez potreby vyvíjať vlastné riešenia pre každú inštitúciu zvlášť. Vďaka tomu sa vývoj môže sústrediť na rozhranie a interpretáciu, nie na neustále riešenie kompatibility.

Táto interoperabilita má aj širší rozmer. Prepojenie s projektmi ako **Europeana**, **Slovakiana** či **CEAD.space** nie je len technickou integráciou, ale formou účasti na spoločnom priestore kultúrnych dát. Štandardy tu fungujú ako tichá diplomacia: umožňujú spoluprácu bez centralizácie, výmenu bez straty autonómie a porovnateľnosť bez uniformity. Každá inštitúcia si zachováva vlastný hlas, no zároveň sa zapája do väčšieho ekosystému.

Zároveň je dôležité povedať, že otvorenosť nie je binárne rozhodnutie. V prostredí CEDVU sa jasne ukazuje, že rôzne galérie majú k sprístupňovaniu dát odlišný prístup. Niektoré zverejňujú celý fond, iné len vybrané záznamy, ktoré prešli dodatočnou kontrolou alebo majú kompletnú obrazovú dokumentáciu. Tento rozdiel nie je chybou systému, ale jeho vlastnosťou: otvorené štandardy umožňujú diferencovanú zodpovednosť, nie jednotný režim.

Otvorené API Webu umenia na túto logiku nadväzuje. Funguje skôr ako potrubie než ako kurátorský filter — umožňuje prístup k dátam, no nedefinuje, ako majú byť použité. Vznikli tak projekty tretích strán, experimenty na hackathonoch aj aplikácie vyvíjané mimo SNG. Každý z týchto prípadov využíva rovnaký dátový základ, no vytvára iný typ rozhrania a iný príbeh. Rozhodnutie, ktoré dáta sú dostupné a v akej podobe, je však vždy kurátorským gestom — aj vtedy, keď sa tvári čisto technicky.

V tomto kontexte nadobúda otvorenosť aj etický rozmer. Ako upozorňuje Merete Sanderhoff, zdieľanie kultúrnych dát nie je len otázkou prístupu, ale aj starostlivosti — o kontext, o autorov, o publikum aj o budúce použitia [@sanderhoff_sharing_caring_openness_2014]. Na túto perspektívu nadväzuje aj koncept networks of care, ktorý zdôrazňuje, že starostlivosť v digitálnych infraštruktúrach je vždy distribuovaná medzi technické systémy, inštitúcie a ľudí [@dekker_networks_of_care_2022]. Otvorené štandardy vytvárajú infraštruktúrne podmienky, no otázka zodpovednosti zostáva vždy situovaná v konkrétnej inštitúcii a konkrétnom projekte.

Pre Web umenia tak interoperabilita neznamená stratu kontroly, ale jej presun. Kontrola sa neodohráva na úrovni uzavretých systémov, ale v rozhodnutiach o tom, čo zdieľať, ako to pomenovať a aké vzťahy umožniť vzniknúť. Práve v tomto priestore medzi technickým štandardom a kurátorským rozhodnutím sa začína téma data governance a licencovania, ktorej sa budem venovať v nasledujúcej podkapitole.

### **4.5 Open-source prístup a komunitný vývoj**

> *“Participation in free software is not simply about access to code, but about the ability to shape the conditions under which that code exists.”*
> — Christopher M. Kelty, *Two Bits* (2008)

Rozhodovanie o technologickom riešení v kultúrnej inštitúcii nie je nikdy čisto technické. Každá voľba softvéru v sebe nesie predpoklady o budúcnosti: o tom, kto bude mať nad systémom kontrolu, ako dlho bude udržateľný a či bude možné naň nadväzovať aj po rokoch. V prostredí verejnej inštitúcie k tomu navyše pribúda otázka zodpovednosti — nielen voči zadaniu, ale aj voči verejnosti, ktorá vývoj financuje.

Pri vývoji Webu umenia sme sa od začiatku prikláňali k otvoreným riešeniam. Nie primárne z dôvodu ceny, ale pre ich **udržateľnosť, transparentnosť a čitateľnosť**. Použitie open-source nástrojov ako Laravel, Elasticsearch či OpenSeadragon bolo pragmatické rozhodnutie: išlo o technológie so silnou komunitou, dobrou dokumentáciou a predpokladom dlhodobého vývoja. V prostredí GLAM inštitúcií (galleries, libraries, archives, museums) je táto preferencia rozšírená — otvorené riešenia tu fungujú ako zdieľaný jazyk, ktorý umožňuje nielen výmenu dát, ale aj výmenu skúseností.

Otázka, či ísť ďalej a **otvoriť aj samotný zdrojový kód Webu umenia**, však nebola samozrejmá. V čase, keď sme ju riešili, ešte doznievala verejná diskusia okolo „predraženého“ webu SNG a bolo jasné, že otvorenie repozitára znamená vystaviť každý riadok kódu verejnému pohľadu. V súkromnom repozitári sa pracuje pohodlnejšie — chyby sú menej viditeľné, kompromisy sa dajú ľahšie skryť. Zároveň však bolo čoraz ťažšie obhajovať, prečo by vývoj financovaný z verejných zdrojov mal zostať nepriehľadný.

Postupne sa ukázalo, že otvorenie kódu nie je ani tak technické rozhodnutie, ako skôr **inštitucionálny postoj**. Ako píše Daniel Doubrovkine, „open source by default“ nie je len licencia, ale spôsob myslenia, ktorý mení vzťah medzi autorom, používateľom a komunitou [@doubrovkine_open_source_2015]. V našom prípade to znamenalo presun z Bitbucketu na GitHub, otvorenie issue trackerov a prijatie faktu, že vývoj sa stáva verejnou komunikáciou.

Neprišli masy prispievateľov ani veľké refaktoringy zvonka. Objavili sa však **konkrétne drobné zásahy**: nahlásené chyby, menšie pull requesty, upozornenia na bezpečnostné riziká. Práve tie mali pre nás väčšiu hodnotu než hypotetická „popularita“ projektu. Otvorený repozitár sa ukázal ako mechanizmus včasnej spätnej väzby a zároveň ako signál, že systém nie je uzavretým artefaktom, ale súčasťou širšieho ekosystému.

Zaujímavým vedľajším efektom bola zmena vnútornej kultúry tímu. Vedomie, že kód je verejný, vytvára jemný tlak na **čitateľnosť, pomenovania a dokumentáciu**. README súbory, inštalačné návody či komentáre v kóde prestali byť „internou pomôckou“ a stali sa formou verejného vysvetľovania. Tento typ dokumentácie sa neskôr ukázal ako neoceniteľný aj pri onboardingu nových členov tímu lab.SNG — otvorený kód fungoval ako archív rozhodnutí, nie len ako výsledok.

Z perspektívy starostlivosti je open source možné čítať aj ako súčasť širších **sietí zodpovednosti**. Annet Dekker opisuje open infraštruktúry ako *networks of care* — prepojenia medzi ľuďmi, inštitúciami a technickými systémami, kde sa starostlivosť necentralizuje, ale distribuuje [@dekker_networks_of_care_2022]. Otvorený kód v tomto zmysle nie je garanciou kvality, ale pozvaním k spoluzodpovednosti.

Skúsenosť s Webom umenia nás viedla k jednoduchému pravidlu: **projekty v SNG vznikajú ako open-source by default**, pokiaľ neexistuje vážny dôvod postupovať inak. Výnimky sa týkali najmä partnerských projektov, kde si spolupracujúca inštitúcia želala odklad alebo obmedzenie otvorenia kódu. Aj v týchto prípadoch však ostával cieľom návrat k otvorenému režimu.

Otvorenie zdrojového kódu tak nebolo jednorazovým gestom, ale postupným posunom v uvažovaní o tom, čo znamená robiť digitálne veci vo verejnej inštitúcii. Nešlo len o to, aby web fungoval, ale aby bolo možné rozumieť aj tomu, ako vzniká a ako sa mení.

Tento posun však zároveň kladie ďalšie otázky: čo všetko je ešte možné otvoriť a kde už treba byť opatrný. Kód sa dá zdieľať pomerne priamo, no pri dátach – dielach, obrazoch, metadátach – vstupujú do hry právne, etické aj inštitucionálne záväzky. Tým sa otvorenosť prirodzene presúva od vývoja k starostlivosti o dáta a ich používanie, čo je témou nasledujúcej časti.

::: aside
### Open-source v praxi (lab.SNG)

Od roku 2014 do roku 2025 publikovala Slovenská národná galéria  
**66 otvorených repozitárov** na platforme GitHub.

Repozitáre zahŕňajú:

- jadrové aplikácie (Web umenia, Atlas SNG),
- samostatné knižnice a nástroje (napr. jazyková podpora pre Elasticsearch),
- experimentálne prototypy,
- výstavné a edukačné projekty.

Nešlo o systematickú stratégiu „produkcie open-source“, ale o postupné prijatie princípu,
že digitálna infraštruktúra verejnej inštitúcie má byť čitateľná, znovupoužiteľná
a dlhodobo udržiavateľná aj mimo pôvodného tímu.

:::

![Prehľad verejných repozitárov Slovenskej národnej galérie na platforme GitHub.  
Otvorený vývoj tu funguje ako forma dokumentácie, komunikácie a dlhodobej starostlivosti o digitálnu infraštruktúru.](figures/fig-4-5-github-sng-public-repositories.png){#fig:github-sng-opensource}

