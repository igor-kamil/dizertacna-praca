\thispagestyle{empty}
\begin{center}
{\Large Vysoká škola výtvarných umení v Bratislave\par}
\vspace{1.2cm}
{\large Študijný odbor: Umenie\par}
{\large Študijný program: Digitálne umenia\par}
\vspace{1.8cm}
{\LARGE \textbf{Autoreferát dizertačnej práce}\par}
\vspace{1.2cm}
{\Large Digitálne naratívy, ne-lineárne príbehy a generatívna skutočnosť v dobe beznádeje\par}
\vspace{0.4cm}
{\large Online zbierky umenia ako prostredia vizuálneho rozprávania\par}
\vspace{1.6cm}
\end{center}

\begin{flushleft}
\textbf{Doktorand:} Mgr. Igor Rjabinin \\
\textbf{Školiteľ:} doc. Mgr. art. András Cséfalvay, ArtD. \\
\textbf{Školiteľ-konzultant:} doc. Mgr. Zuzana Panák Husárová, PhD. \\
\end{flushleft}

\vfill
\begin{center}
Bratislava, február 2026
\end{center}

\newpage
\thispagestyle{empty}
\textbf{Forma štúdia:} denná

\vspace{0.6cm}
\textbf{Pracovisko:} Platforma digitálne umenia

\vspace{0.8cm}
\textbf{Navrhovaní oponenti:}

\vspace{0.3cm}
1.\ \dotfill

\vspace{0.45cm}
2.\ \dotfill

\vspace{0.45cm}
3.\ \dotfill

\vspace{0.8cm}
\textbf{Odborová rada pre doktorandské štúdium}

študijný program Výtvarné umenie (VUd.14/VUde.14)

\vspace{0.6cm}
\textbf{Predseda odborovej rady:} prof. Boris Kvasnica, akad. maliar

\textbf{Pracovisko predsedu odborovej rady:} Katedra reštaurovania

\newpage
\setcounter{page}{1}

# Obsah

1. Abstrakt  
2. Resumé (English)  
3. Téma praktickej dizertačnej práce a jej zdôvodnenie  
4. Cieľ, štruktúra a stručná anotácia písomnej časti dizertačnej práce  
5. Zoznam študovanej literatúry  
6. Predstavenie projektu umelecko-vedeckého výskumu  
7. Zoznam diel
8. Zoznam výstav, prezentácií, realizácií, projektov a publikácií počas doktorandského štúdia  
9. Zoznam spoluprác na umelecko-vedeckom výskume a grantovej činnosti  
10. Najdôležitejšie ohlasy, citácie a ocenenia

\newpage

# Abstrakt

Táto dizertačná práca skúma stratu naratívnej vrstvy v online zbierkach umenia a možnosti, ako s týmto deficitom pracovať prostredníctvom dizajnu rozhraní a kurátorsko-technických stratégií. Východiskom je autorská skúsenosť z digitálneho R&D prostredia *lab.SNG*, kde sa stretáva publikačná infraštruktúra zbierok, vývoj, dizajn a interpretácia. Online zbierka tu často funguje primárne ako databáza: umožňuje rýchly prístup k dielam cez vyhľadávanie, filtre a izolované záznamy, no oslabuje kontext, susedstvá a postupné skladanie významu, ktoré vo fyzickej galérii vznikajú prirodzene.

Metodologicky práca vychádza z prístupu *research through design*: poznanie vzniká cez návrh, prototypovanie, nasadenie a kritickú reflexiu konkrétnych riešení. Formuluje tri výskumné otázky: ako vstupovať do online zbierky inak než cez vyhľadávanie a katalógové poradie; aké dizajnové a algoritmické postupy môžu podporiť vznik významu aj pri databázovej štruktúre; a ako tieto postupy navrhovať tak, aby zostali čitateľné, udržateľné a férové voči dielam aj návštevníkom. Praktická časť vyúsťuje do experimentálneho prototypu, ktorý testuje "rozprávanie z databázy" cez generovanie susedstiev, porovnaní a krátkych interpretačných väzieb medzi dielami.

Výsledkom práce je súbor prenositeľných princípov a odporúčaní pre múzeá a galérie, ako navrhovať online zbierky tak, aby nefungovali len ako evidenčný katalóg, ale aj ako zrozumiteľný vstup do súvislostí, vzťahov a významu.

**Kľúčové slová:** online zbierky umenia, digitálne naratívy, vizuálne rozhrania, storytelling, generous interfaces, digitálne humanitné vedy

\newpage

# Abstract (English)

This dissertation examines the loss of narrative layers in online art collections and explores ways to address this deficit through interface design and curatorial-technical strategies. It is grounded in the author's experience in the digital R&D environment of *lab.SNG*, where publishing infrastructure, development, design, and interpretation intersect. In this context, the online collection often operates primarily as a database: it enables fast access to artworks through search, filters, and isolated records, yet tends to weaken context, adjacency, and the gradual construction of meaning that naturally emerges in physical gallery settings.

Methodologically, the dissertation follows a *research through design* approach: knowledge is produced through design, prototyping, deployment, and critical reflection on concrete solutions. It formulates three research questions: how to enter an online collection beyond search and catalog order; which design and algorithmic strategies can support meaning-making within a database structure; and how to design these strategies so they remain legible, sustainable, and fair to both artworks and visitors. The practical part culminates in an experimental prototype that tests "storytelling from the database" through generated adjacencies, comparisons, and short interpretive links between artworks.

The outcome is a set of transferable principles and recommendations for museums and galleries on how to design online collections that function not only as inventory catalogs, but also as legible entry points into relations, contexts, and meaning.

**Keywords:** online art collections, digital narratives, visual interfaces, storytelling, generous interfaces, digital humanities

\newpage

# 1. Téma praktickej dizertačnej práce a jej zdôvodnenie

Praktická časť dizertačnej práce sa zameriava na stratu naratívnej vrstvy v online zbierkach umenia a na možnosti, ako tento deficit kompenzovať návrhom digitálnych rozhraní. Východiskom je pozorovanie, že v kamennej galérii vzniká „príbeh zbierky“ aj bez toho, aby bol explicitne napísaný: cez výber, poradie, susedstvá diel, texty, architektúru a situáciu návštevy. V online prostredí tieto rámce nie sú dané; musia byť navrhnuté a implementované ako dátové väzby, pravidlá navigácie a vrstvy interpretácie v rozhraní. Inými slovami, online zbierka nie je neutrálny katalóg: spôsob, akým prekladá databázu do skúsenosti používateľa, priamo určuje, či sa v nej dá skladať význam. 

Teoreticky sa práca opiera o napätie medzi databázou a naratívom, ktoré Lev Manovich opisuje ako jednu zo základných vlastností digitálnych médií: databáza podporuje prehľadávanie a rovnocennosť položiek, kým naratív predpokladá trajektóriu, poradie a skladanie súvislosti.   Praktický problém online zbierok potom nie je len „málo textu“, ale najmä „málo čitateľných väzieb“: návštevník síce môže prechádzať záznamy, no často nemá oporu v tom, prečo sú veci vedľa seba, čím sú podobné alebo čím sú v konflikte. Ak sa vzťahy medzi dielami redukujú na technické filtre a izolované detailové stránky, interpretácia sa deleguje na používateľa bez toho, aby systém ponúkol zrozumiteľné „pravidlá čítania“. 

Táto téma je relevantná aj preto, že online zbierky dnes suplujú nielen prístup k dielam, ale v rastúcej miere aj verejnú pamäť a autoritu inštitúcie. Skúsenosť Slovenskej národnej galérie ukazuje, že digitálne sprístupnenie môže byť motivované veľmi konkrétnymi limitmi fyzickej prevádzky: v čase, keď bola väčšina budov galérie zatvorená a z veľkej zbierky bolo možné vystaviť len fragment, vznikla ambícia sprístupňovať diela online vo vysokom rozlíšení a pod verejnou licenciou.  Zároveň sa tu ukázal dôležitý organizačný moment: rozhodnutie budovať a rozvíjať platformu interne, aby know-how zostávalo v inštitúcii a umožňovalo iteráciu, experiment a dlhodobú starostlivosť o infraštruktúru. 

Práca teda prepája kurátorskú prax, technológie a používateľskú skúsenosť, ale robí to polemicky: odmieta predstavu, že „sprístupnenie dát“ automaticky znamená „sprístupnenie významu“. Otázka neznie len ako publikovať záznamy, ale ako navrhnúť rozhranie tak, aby návštevník dokázal vstúpiť do zbierky aj bez presnej otázky, aby získal orientáciu, kontext a možnosť skladať súvislosti. V tomto bode je dôležitý aj koncept *generous interfaces* (Whitelaw): rozhrania, ktoré namiesto toho, aby od používateľa okamžite vyžadovali dopyt, najprv ukážu „tvar“ a bohatstvo zbierky a ponúknu viaceré vstupy do jej štruktúry.  

Z praktického hľadiska je jadrom výskumu návrh rozhraní, ktoré z existujúcej dátovej infraštruktúry dokážu vytvárať čitateľné „susedstvá“ diel: porovnania, tematické zhluky, kontrasty, mikro-kontexty a krátke interpretačné väzby, ktoré nahrádzajú absenciu lineárnej výstavnej dramaturgie. Cieľom nie je nahradiť kurátora algoritmom, ale navrhnúť také spojenia medzi dielami a takú navigáciu, ktoré zviditeľnia možnosti čítania a zároveň ostanú transparentné a udržateľné.

# 2. Cieľ, štruktúra a stručná anotácia písomnej časti dizertačnej práce

## 2.1 Cieľ práce

Cieľom písomnej časti dizertačnej práce je:

1. analyzovať, prečo online zbierky umenia strácajú naratívnu vrstvu (t. j. podmienky, v ktorých sa význam skladá cez poradie, susedstvá a rámce čítania),
2. pomenovať limity databázového režimu prezerania (vyhľadávanie, filtre, izolované záznamy) a jeho dôsledky pre interpretáciu a objavovanie,
3. navrhnúť dizajnové a metodologické princípy, ktoré podporujú vznik súvislostí medzi dielami v nelineárnom prostredí,
4. overiť tieto princípy v praktickom prototypovaní rozhraní a zhrnúť prenositeľné odporúčania pre kultúrne inštitúcie.

Kľúčový argument práce je, že rozhranie preberá v online zbierke rolu „rozprávača“ – nie textového, ale topologického: rozpráva vzťahmi, filtrami, výbermi a dynamikou prezerania. 

## 2.2 Štruktúra práce

Štruktúra kombinuje teoretický rámec, analýzy prípadových štúdií, technologicko-metodologickú časť a reflexiu praktického výskumu:

* teoretická časť: databáza vs. naratív, rozhranie ako kultúrna technológia, limity vyhľadávania ako dominantného vstupu do zbierky, a koncepty „štedrých“ rozhraní, ktoré podporujú orientáciu a prehľad; 
* analytická časť: rozbor spôsobov, akými sú dnes online zbierky typicky navrhnuté (katalógová logika, filtrovanie, odporúčanie), a kde presne sa v tomto režime stráca čitateľná súvislosť; 
* metodologická časť: prístup *research through design* a praxou vedený výskum, kde prototypy rozhraní nie sú len výstup, ale výskumný nástroj; poznanie vzniká v návrhových rozhodnutiach, implementácii, testovaní a kritickej reflexii; 
* praktická časť: návrh a prototypovanie rozhraní nad existujúcou infraštruktúrou online zbierky, vrátane vytvárania mikro-kontextov a nových „susedstiev“ diel, a ich priebežné overovanie;
* záver: syntéza princípov, hraníc a odporúčaní pre prax (čo je prenositeľné, čo je viazané na konkrétnu infraštruktúru, a kde naráža dizajn na organizačné a udržateľnostné limity). 

## 2.3 Stručná anotácia

Práca ukazuje, že vhodne navrhnuté digitálne rozhrania môžu online zbierku transformovať z katalógu na čitateľné rozprávacie prostredie. Nejde o „pridanie príbehu“ vo forme lineárneho textu, ale o vytvorenie podmienok pre nelineárne skladanie významu: cez zrozumiteľné väzby medzi dielami, transparentné pravidlá výberu a rozhrania, ktoré podporujú orientáciu, serendipitu a kontext. 

# 3. Zoznam študovanej literatúry

Nižšie uvádzam výber kľúčovej literatúry, o ktorú sa práca opiera:

## 3.1 Databáza, naratív a rozhranie ako médium

* Manovich, Lev. *The Language of New Media* [@manovich_language_new_media_2001].

## 3.2 Dizajn rozhraní pre kultúrne zbierky, vizualizácie a orientácia

* Whitelaw, Mitchell. *Generous Interfaces: Interfaces for Digital Cultural Collections* [@whitelaw_generous_interfaces_2015].
* Vane, Olivia. *Timeline design for visualising cultural heritage data* 
(PhD, 2019).

## 3.3 Starostlivosť, udržateľnosť a infraštruktúra digitálneho dedičstva

* Dekker, Annet. *Networks of Care: Types, Challenges and Potentialities* [@dekker_networks_of_care_2022].
* Barok, Dušan. *Publishing as a Conservation Strategy: Platforms, Care and Contemporary Art* [@Barok2024Publishing].

## 3.4 Múzeá a digitálne prostredie (inštitucionálny a diskurzívny rámec)

* Cameron, Fiona. *Beyond the Cult of the Replicant: Museums and the Digital* [@cameron_beyond_cult_replicant_2007].
* Bohumelová, Mária (ed.). *Rituál múzea v digitálnom veku* [@bohumelova_ritual_muzea_digitalnom_2015].
* Sanderhoff, Merete. *Sharing Is Caring: Openness and Sharing in the Cultural Heritage Sector* [@sanderhoff_sharing_caring_openness_2014].

## 3.5 Algoritmy, AI a kurátorstvo v dátových zbierkach

* Pilka, Lukáš. *Digitální kurátor: Algoritmy a počítačové vidění ve světě velkých kulturněhistorických dat* [@pilka2022digitalcurator].
* Horáková, Jana; Kupková, Marika; Szűcsová, Monika (eds.). *The Black Box: Archives and Curatorship in the Age of AI* [@cernaSkrinka2022blackbox].
* Thiel, Sonja; Bernhardt, Johannes C. (eds.). *AI in Museums: 
Reflections, Perspectives and Applications* (2024). 
* Abdollahpouri, Himan et al. *The Unfairness of Popularity Bias in Recommendation* [@abdollahpouri_unfairness_popularity_bias_2019].
* Chayka, Kyle. *Filterworld: How Algorithms Flattened Culture* [@chayka_filterworld_2024].
* Chan, Seb. *API and Museum Collections (Cooper Hewitt Context)* [@chan_api_2015].

## 3.6 Metodológia praxe ako výskumu a umelecký výskum

* Frayling, Christopher. *Research in Art and Design* [@frayling_research_in_art_and_design_1994].
* Candy, Linda; Edmonds, Ernest. *Practice-Based Research in the Creative Arts* [@candy_edmonds_practice_based_research_2018].
* Zervan, Marián; Mitášová, Monika (eds.). *Umelecký výskum v diskusii* [@zervan_mitasova_umelecky_vyskum_v_diskusii_2025].

# 4. Predstavenie projektu umelecko-vedeckého výskumu

Projekt umelecko-vedeckého výskumu je postavený na prístupe *research through design*: poznanie vzniká cez návrh, prototypovanie, testovanie v situácii použitia a kritickú reflexiu. V tomto rámci je rozhranie zároveň predmetom aj nástrojom výskumu – každé rozhodnutie (čo ukázať, v akom poradí, akými väzbami, s akou mierou vysvetlenia) je hypotéza o tom, ako sa dá v databázovom prostredí skladať význam. 

Praktická časť vychádza z existujúcej infraštruktúry online zbierky (dáta, API, obrazové služby) a kladie si otázku, ako z nej generovať čitateľné susedstvá diel, porovnania a krátke interpretačné premostenia bez toho, aby vznikol dojem autoritatívnej „jedinej“ dramaturgie. V prototypoch preto nejde o to, aby systém „rozprával príbeh“ namiesto kurátora, ale aby poskytol podmienky pre nelineárne čítanie: aby bolo zrejmé, prečo sú diela prepojené, aký typ väzby je použitý (časová, autorská, ikonografická, materiálová, inštitucionálna, publikačná), a čo všetko sa dá v zbierke čítať ako kontext. 

Súčasťou praktického rámca je aj skúsenosť s formátmi, ktoré už dnes v SNG fungujú ako „nosiče príbehu“ nad databázou: storytellingové mikrostránky postavené na dlhšom texte, kapitolách a vkladaní diel z API (napr. *mzo.sng.sk*, *senxskutocnost.sng.sk*, *1989.sng.sk*). Tento formát ukazuje, že naratívna vrstva sa dá v digitálnom prostredí budovať aj publikačne – cez autorské rámce a rytmus čítania – pričom databáza dodáva rozsah, prepojiteľnosť a znovupoužiteľnosť obsahu. 

Výskum zároveň sleduje aj riziká dátovej prevádzky a „hladkých“ algoritmických skratiek. V online zbierkach je lákavé nahradiť kontext odporúčaniami typu „podobné diela“, no tieto mechanizmy môžu systematicky zvýhodňovať populárne položky (*popularity bias*) a znižovať rozmanitosť objavovania. Preto praktická časť pracuje s požiadavkou férovosti a transparentnosti: ak rozhranie používa algoritmický výber, musí byť čitateľné, čo sa deje a prečo; ak vytvára serendipitu, musí byť navrhnutá tak, aby nebola len náhodou „v rámci toho istého“. 

Prínos projektu je dvojitý:

1. metodologický: ukazuje, ako sa dá v prostredí kultúrnej inštitúcie robiť praxou vedený výskum tak, aby prototypy boli argumentom (nie iba „produktom“) a aby výsledkom boli prenositeľné princípy návrhu rozhraní;  
2. praktický: formuluje sadu čitateľných postupov pre digitálne rozhrania online zbierok, ktoré zvyšujú orientáciu návštevníka v kontexte súčasného výtvarného umenia a dizajnu – nie zväčšovaním množstva informácií, ale zlepšovaním skladania súvislostí.

Napokon je dôležité pomenovať aj „inštitucionálnu realitu“: naratívna vrstva nevzniká iba na obrazovke. Je dôsledkom infraštruktúry – kvality dát, spôsobu publikovania, údržby kódu, kompetencií a času na iterácie. Praktická časť preto priebežne konfrontuje návrh rozhraní s otázkou udržateľnosti: čo si môže dovoliť malý tím, čo sa dá robiť dlhodobo a čo už vyžaduje zmenu organizačných priorít. 

# 5. Zoznam diel

# 6. Zoznam výstav, prezentácií, realizácií, projektov a publikácií počas doktorandského štúdia

# 7. Zoznam spoluprác na umelecko-vedeckom výskume a grantovej činnosti

# 8. Najdôležitejšie ohlasy, citácie a ocenenia
