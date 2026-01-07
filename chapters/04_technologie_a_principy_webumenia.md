# **4. Pod povrchom rozhrania: technológie a princípy Web umenia**

## *Preface*

> *“Any point of a rhizome can be connected to anything other, and must be.
> This is very different from the tree or root, which plots a point, fixes an order.”*
> — **A Thousand Plateaus**, Gilles Deleuze & Félix Guattari [@deleuze_thousand_plateaus_capitalism_1987]

Pri návrhu Webu umenia som si čoraz viac uvedomoval, že tradičné modely uvažovania o zbierkach – lineárne, hierarchické, kanonické – len ťažko zodpovedajú tomu, ako sa dá v digitálnom prostredí s umením reálne pracovať. Databáza síce vyžaduje štruktúru, no samotná skúsenosť používateľa sa odohráva skôr v sieti vzťahov než v pevnom poradí. Práve tu sa ako mimoriadne užitočná ukázala metafora **rhizómu**: nehierarchickej, rozvetvenej štruktúry, v ktorej môže každý bod viesť k akémukoľvek inému bodu.

Tento spôsob uvažovania sa objavuje aj v diskusiách o digitálnej histórii umenia. Ako píše **Merete Sanderhoff** v kapitole *Art History on the Internet’s Terms* v publikácii **Sharing Is Caring**, rhizóm sa stal silnou metaforou internetu – a zároveň nástrojom, ako kriticky prehodnotiť kánon dejín umenia. Namiesto jedného výkladu navrhuje pohľad na umenie ako na **web príbehov**, kde existuje viacero vstupných bodov, viacero možných ciest a žiadna jediná „správna“ trasa. [@sanderhoff_art_history_internet_terms_2014, pp. 44-48].

Pri návrhu architektúry Webu umenia bolo cieľom vytvoriť prostredie, v ktorom by sa dalo medzi dielami, autormi, témami a historickými kontextmi pohybovať asociatívne. Jedným z praktických prejavov tohto uvažovania bolo rozhodnutie spraviť v detailoch diel čo najviac prvkov prekliknuteľných – autorov, techniky, motívy, časové údaje, súvisiace texty či odkazy na vizuálne podobnosti. Cieľom nebolo vytvoriť jeden dominantný výklad, ale umožniť rôzne spôsoby čítania zbierky, ktoré vznikajú až pri samotnom používaní systému.

Táto kapitola sa preto nepozerá na technológie ako na neutrálnu infraštruktúru, ale ako na **formu myslenia**. Architektúra systému, dátové modely, API či vyhľadávanie tu vystupujú ako nástroje, ktoré umožňujú (alebo naopak obmedzujú) vznik takéhoto rhizomatického čítania zbierky. Text vychádza z konkrétnej skúsenosti s vývojom Webu umenia v Slovenskej národnej galérii a vedome sa posúva od všeobecných „state of the art“ modelov k osobnejšiemu, remeselnému opisu rozhodnutí, kompromisov a slepých uličiek.

V tomto zmysle je kapitola vstupom do autorskej časti práce. Ukazuje, ako sa abstraktné pojmy – otvorenosť, prepojenosť, serendipita – premietli do konkrétnej technickej architektúry. A zároveň pripravuje pôdu pre nasledujúce kapitoly, ktoré sa budú pýtať, **čo sa s takto navrhnutou infraštruktúrou dá robiť ďalej**: ako z nej vytvárať nové formy naratívu, interpretácie a tvorivého použitia digitálnych zbierok.

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

