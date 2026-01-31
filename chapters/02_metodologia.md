# 2 Metodológia {#sec:metodologia}

## 2.1 Metodický rámec práce {#sec:metodologia-21}

Táto dizertácia je *praxou vedený výskum* a zároveň *umelecký výskum*: problém straty naratívnej vrstvy v online zbierkach skúmam tak, že navrhujem, prototypujem a overujem alternatívne rozhrania. Rozhranie tu nie je len „výstup“, ale výskumný nástroj – cez konkrétne návrhové rozhodnutia testujem, ako sa mení čítanie zbierky, možnosti interpretácie a objavovania. Poznanie preto nevzniká iba v texte, ale aj vo výskumných artefaktoch: prototypoch, implementáciách, dokumentovaných voľbách a reakciách používateľov.

Keďže skúmaný problém sa týka významu, skúsenosti a interpretácie, rámec *umeleckého výskumu* používam pragmaticky: nie ako estetizáciu vývoja, ale ako spôsob disciplinovaného tvorivého experimentu. V diskusiách o umeleckom výskume sa opakovane ukazuje napätie medzi vedeckým a umeleckým poznaním, a zároveň fakt, že umelecká prax môže byť legitímnym spôsobom poznávania, ak je sprevádzaná explicitnou reflexiou a zrozumiteľným zdôvodnením volieb. V tejto práci preto kombinujem analytické postupy s návrhom a skúšaním – tak, aby sa tvorivý proces dal čítať ako argument a aby jeho výsledky boli prenositeľné mimo jedného prototypu či jednej inštitúcie.

Metodicky sa opieram o prístup *research through design* a príbuzné rámce *practice-led*/*practice-based research*: výskumné otázky formulujem tak, aby ich bolo možné „preložiť“ do návrhových obmedzení, variantov rozhrania a spôsobov overenia. To znamená, že metodológia nie je pevne daný recept, ale postupne „vykonštruovaný“ rámec prispôsobený problému: čo potrebujem zistiť, aký korpus a aké rozhranie mi to umožní skúsiť, aké pozorovania sú pre danú otázku relevantné, a ako ich zdokumentujem tak, aby boli obhájiteľné.

Základným nastavením práce je iteratívny cyklus návrhu a overovania:

1. pomenovanie problému a pracovnej hypotézy (čo presne sa v online zbierkach „stráca“ a aký typ vstupu do zbierky by to mohol kompenzovať),
2. návrhové obmedzenia (korpus, typ navigácie, typ odporúčania, režim textu/obrazu, podmienky použitia),
3. prototypovanie variantu rozhrania (ako výskumného artefaktu),
4. vystavenie prototypu realite (aspoň v minimálnom, ale kontrolovanom scenári použitia),
5. zber dôkazov (pozorovania interakcie, stopy rozhodovania používateľov, kvalititatívne komentáre, vlastné poznámky z facilitácie, prípadne technické logy podľa možností),
6. reflexia a pomenovanie dôsledkov (čo sa potvrdilo, čo zlyhalo, čo sa ukázalo ako slepá ulička a čo je prenositeľné),
7. syntéza do návrhových princípov a typológie (cieľom nie je „zvíťaziť“ s jedným riešením, ale vytvoriť mapu rozhodnutí a ich účinkov).

Z pohľadu „dôkazov“ pracujem v práci s tromi navzájom previazanými rovinami:

- analytickou rovinou (čítanie existujúcich modelov online zbierok a rozhraní, identifikácia ich naratívnych a kurátorských dôsledkov),
- návrhovou rovinou (prototypy ako materializované hypotézy a ako spôsob kladenia otázok),
- reflexívno-evaluačnou rovinou (zdokumentované pozorovania, interpretácia reakcií a porovnanie variantov).

Dôležité je, že nejde primárne o kvantitatívny výskum. Keďže skúmané javy sú situačné (interpretácia, zmysel, „čítanie“ rozhrania), výstupy formulujem ako dizajnové zistenia, typológie a pracovné hypotézy pre ďalšie iterácie, nie ako štatisticky generalizované tvrdenia. Obhájiteľnosť stojí na transparentnosti procesu: na tom, že je jasné, aké obmedzenia boli zvolené, aké varianty boli skúšané, na základe čoho sa rozhodovalo a čo presne z pozorovaní vyplýva.

Praktická časť vznikala v prostredí *lab.SNG* ako inštitucionálneho rámca digitálneho R&D (vývoja, ktorý má zároveň výskumné ambície). V tejto kapitole ho uvádzam len ako výskumné prostredie; jeho vznik, rolu a vnútorné fungovanie rozoberám samostatne v neskorších kapitolách, aby sa metodologický rámec zbytočne nemiešal s inštitucionálnou históriou.

Takto nastavený metodický rámec umožňuje, aby sa praktické kapitoly dali čítať ako séria prípadových štúdií *research through design*: každé rozhranie je pokusom „premiestniť“ naratív z textovej vrstvy do interakcie, vizuality, susedstiev diel a kurátorsky nastavenej navigácie – a zároveň je materiálom, na ktorom sa dá presne ukázať, čo daná voľba robí s významom, objavovaním a porozumením.

## 2.2 Pozícia autora a prostredie {#sec:metodologia-22}

Do výskumu vstupujem ako výskumník-praktik: programátor a autor rozhraní, ktorý sa dlhodobo pohybuje v prostredí galérií a múzeí. Moje formálne vzdelanie vychádza z informatiky, no predmetom skúmania v tejto práci nie je „technológia sama o sebe“, ale to, ako konkrétne digitálne rozhrania umožňujú (alebo neumožňujú) vznik významu pri práci s online zbierkou.

Táto pozícia je metodologicky produktívna aj riziková. Produktívna v tom, že umožňuje robiť výskum *cez* návrh: otázky neostávajú len v rovine interpretácie existujúcich systémov, ale dajú sa overovať cez prototypy a ich použitie v situácii. V jazyku diskusií o umeleckom výskume ide o prijatie tvorivej praxe ako legitímneho spôsobu poznávania — poznanie nevzniká až „po“ diele, ale *v* procese jeho tvorby a premýšľania o ňom. [@zervan_mitasova_umelecky_vyskum_v_diskusii_2025; @borgdorff_2011_production_of_knowledge; @tkacik_2025_implikuje_epistemologiu]

Riziko tejto pozície spočíva v tom, že ako insider mám prirodzene sklon racionalizovať vlastné rozhodnutia a spätne im pripisovať vyššiu konzistenciu, než mali v čase vzniku. Preto v práci vedome odlišujem (a) opis podmienok a obmedzení, v ktorých rozhodnutia vznikali, od (b) interpretácie ich účinkov. Tam, kde to je možné, opieram sa o dohľadateľné stopy procesu: zdrojové kódy, technické poznámky, artefakty a publikované výstupy, nie iba o pamäť a retrospektívny komentár. Tento „disciplinovaný“ spôsob práce je pre mňa praktickým prekladom požiadavky reflexivity, ktorá sa v diskusiách o umeleckom a praxou vedenom výskume opakovane objavuje ako podmienka obhájiteľnosti. [@frayling_research_in_art_and_design_1994; @candy_edmonds_practice_based_research_2018]

V inštitucionálnom prostredí má moja rola ešte jednu špecifickú vlastnosť: digitálne rozhrania tu nevznikajú izolovane, ale v kolaboratívnej sieti kurátorov, pedagógov, dizajnérov, technikov a vedenia inštitúcie. Aj keď som pri viacerých projektoch vystupoval ako autor konkrétnych riešení, s rastom tímu a komplexnosti sa moja pozícia posúvala smerom k facilitácii (najmä na technickej a produkčnej strane). Metodologicky to znamená, že „autorskosť“ v tejto práci nechápem ako osamelý tvorivý akt, ale ako schopnosť držať pohromade výskumný zámer naprieč rolami a obmedzeniami — od zadania až po prevádzku a udržiavateľnosť.

Napokon, táto pozícia prirodzene vedie k dvojitému hodnoteniu rozhraní. Na jednej strane prinášam orientáciu na operacionalizáciu: hľadať metódy, metriky a testy tam, kde dávajú zmysel (napr. pri vyhľadávaní, indexácii, viditeľnosti položiek). Na druhej strane prax v *GLAM* prostredí opakovane ukazuje, že podstatná časť návštevníckej skúsenosti nie je plne merateľná: ide o tempo, zvedavosť, prekvapenie, schopnosť vytvoriť si vlastné pomenovanie vzťahu. Preto v praktických kapitolách pracujem aj s kvalitatívnymi signálmi a so situovaným pozorovaním toho, či rozhranie podporuje interpretáciu a „čítanie“ diel, nie iba ich technickú dostupnosť.

::: {.aside #aside:labsng}
*lab.SNG v skratke*

* *lab.SNG* bola platforma Slovenskej národnej galérie zameraná na skúmanie možností využitia digitálnych technológií v galerijnej a muzeálnej praxi (júl 2013 – marec 2025). [@labSNGSite]
* V tejto práci vystupuje predovšetkým ako *výskumné prostredie* pre dlhodobú iteráciu: umožňovalo prototypovanie, nasadzovanie a spätnú väzbu v reálnych podmienkach inštitúcie.
* Jej vznik, rolu a vnútorné fungovanie rozoberám samostatne (pozri sekciu @sec:labsng-vznik) a v praktických kapitolách 4–6 cez konkrétne projekty, aby sa metodologický rámec zbytočne nemiešal s inštitucionálnou históriou.
:::

## 2.3 Materiál a dáta {#sec:metodologia-23}

Materiál práce tvorí kombinácia troch typov podkladov, ktoré sa v praktických kapitolách (4–7) prepájajú: dáta zbierok tvoria korpus pre rozhrania, dáta z interakcií slúžia ako spätná väzba pre iteráciu a technické artefakty dokumentujú rozhodnutia a limity implementácie.

Prvým sú dáta digitálnych zbierok: reprodukcie diel a metadáta, ktoré umožňujú budovať rozhrania nad existujúcimi kolekciami. V praxi to zahŕňa aj rozhodnutia o rozsahu korpusu, kvalite obrázkov, dostupnosti polí a licenčných obmedzeniach. Pracujem so konkrétnymi exportmi (snapshotmi) dát a pri kľúčových výstupoch uvádzam, z akého stavu dát a akých polí vychádzajú. V tomto bode nadväzujem na diskusiu o dokumentácii zbierok a jej vplyve na použiteľnosť kolekcie. [@cameron_museum_collections_documentation_2010]

Druhým typom sú dáta vznikajúce v interakcii: uložené výstupy používateľov, krátke zdôvodnenia, tagy a pozorovania facilitátora. Nepracujem s nimi ako s reprezentatívnou vzorkou populácie, ale ako s dokumentáciou interpretačných ciest a ako so spätnou väzbou pre iteráciu návrhu. Záznamy používam v anonymizovanej podobe a bez zberu citlivých osobných údajov; ich účelom je porozumenie mechanizmom interpretácie v konkrétnom scenári. V rámci Atlas re/mix je základnou jednotkou záznamu diptych vytvorený používateľom a doplnený minimálnym vysvetlením: aké prepojenie vnímal a či vnímal prvok objavu.

Tretím typom sú technické artefakty: zdrojový kód, skripty, konfigurácie a grafy. V praktických kapitolách sú tieto prvky chápané ako súčasť argumentu: ukazujú, ktoré rozhodnutia boli potrebné, kde vznikajú limity a čo je možné replikovať v iných prostrediach. Zároveň slúžia ako kontrolovateľná stopa toho, ako boli niektoré tvrdenia operacionalizované (napr. výber polí, pravidlá filtrovania a spôsob výpočtov).

::: {.aside #aside:open-repo}
*Otvorený repozitár a reprodukovateľnosť*

Text práce, vybrané vstupné dáta a skripty na generovanie grafov sú publikované v otvorenom repozitári. Repozitár slúži ako doplnková dokumentácia k metodológii: umožňuje čitateľovi overiť niektoré tvrdenia a reprodukovať vizualizácie z rovnakých vstupov (v rámci licenčných obmedzení dát a reprodukcií). [@rjabinin_dizertacna_praca_repo_2026]
:::

## 2.4 Spôsob práce a iterácie {#sec:metodologia-24}

Spôsob práce je založený na iterácii a komparácii. Každý praktický výstup vzniká ako odpoveď na konkrétny problém online zbierok (napr. úzky vstup do zbierky, strata kontextu, predvídateľné cesty v katalógu), no zároveň ako „overenie v praxi“ určitého princípu rozhrania. Praktické kapitoly 6 a 7 ukazujú tento postup na konkrétnych projektoch a experimentoch.

Vývoj prebieha v režime, ktorý sa blíži k agilnému procesu: rýchle prototypovanie, skoré zverejnenie funkčného minima a neskoršie dolaďovanie. Táto stratégia je v *GLAM* prostredí pragmatická. Umožňuje overiť predpoklady skôr, než sa investuje do finálneho riešenia, a zároveň vytvára priestor na učenie sa z inštitucionálneho kontextu (dáta, licencie, workflow, prevádzka). Takto chápaný vývoj zároveň zodpovedá logike praxou vedeného a praxou založeného výskumu: poznanie sa tvorí cez návrh, jeho vystavenie situácii a následnú reflexiu, nie iba cez komentovanie hotových systémov. [@frayling_research_in_art_and_design_1994; @candy_edmonds_practice_based_research_2018]

Dôležitou súčasťou iterácie je komparatívny postup, ktorý v práci používam opakovane v schéme *svetová referencia → princíp → lokálny prototyp*. Svetové referencie (vybrané príklady rozhraní a prístupov v zahraničných inštitúciách) nepoužívam ako dekoráciu ani ako „best practice“ v normatívnom zmysle. Slúžia ako kontrolný rámec: umožňujú pomenovať, aké typy vstupov do zbierok už boli v praxi vyskúšané, a aké dôsledky majú pre čítanie zbierky, kontext a objavovanie.

Z referencií následne vyvodzujem pracovné princípy rozhraní (napr. potreba viaccestnosti, práca so vzťahmi, ukazovanie vzoriek obsahu namiesto vyžadovania otázky), ktoré potom prekladám do lokálnych prototypov v podmienkach konkrétnej zbierky a inštitúcie. Tento preklad je jadrom metodiky: až prototyp ukáže, čo z princípu obstojí pri reálnych dátach, licenčných obmedzeniach, jazykových špecifikách a prevádzkových podmienkach. Ako jeden z kľúčových orientačných rámcov pri návrhu a hodnotení používam diskusiu o *generous interfaces* (v texte „veľkorysé rozhrania“), ktorá explicitne tematizuje prechod od úzkeho vstupu cez vyhľadávanie k rozhraniam podporujúcim prehľad, vzťahy a objavovanie. [@whitelaw_generous_interfaces_2015]

Súčasťou iterácie sú aj technické porovnania. V rámci projektov pracujem s rôznymi prístupmi k indexácii, vyhľadávaniu a odporúčaniu (napr. vizuálna podobnosť cez embeddingy). Tieto rozhodnutia vnímam ako metodické aj kurátorské: spôsob, akým systém ponúka kandidátov, ovplyvňuje to, čo sa stane viditeľným a čo ostane skryté. Preto pri návrhu a hodnotení zohľadňujem aj upozornenia na skreslenia odporúčacích systémov, ktoré môžu zužovať katalóg na malú časť položiek a stabilizovať existujúce hierarchie pozornosti. [@abdollahpouri_unfairness_popularity_bias_2019]

Overenie v situácii chápem ako krátke, kontextovo ukotvené skúšanie prototypu v prostredí, pre ktoré je určený (s reálnymi dátami a typickými používateľmi), ktorého cieľom nie je reprezentatívne meranie, ale odhalenie účinkov návrhu, jeho limitov a ďalších otázok pre nasledujúcu iteráciu.

## 2.5 Limity a etické rámce {#sec:metodologia-25}

Výskum je limitovaný tým, že mnohé pozorovania vznikajú v malých, situačných vzorkách a často v režime facilitovanej interakcie, kde je facilitátor súčasťou situácie. Pri interpretácii výsledkov preto pracujem opatrne: nevyvodzujem štatistické závery a tvrdenia formulujem ako dizajnové zistenia, pracovné typológie alebo hypotézy pre ďalšie iterácie.

Etická časť sa týka najmä dvoch oblastí. Prvou je práca s dátami a právami: reprodukcie diel a metadáta môžu mať rôzne licenčné režimy a v praxi ovplyvňujú, čo sa dá zverejniť, tlačiť, zdieľať alebo archivovať (vrátane toho, čo môže byť súčasťou otvoreného repozitára). Pri práci s otvorenými dátami sa opieram o princípy otvoreného kultúrneho dedičstva a transparentnosti. [@openglam_principles_2018]

Druhou oblasťou je práca s návštevníckymi vstupmi. Ak prototyp pracuje s fotografiou z telefónu alebo so skenovaným predmetom, ide často o osobný materiál. V takom prípade je dôležité minimalizovať osobné identifikátory, zvoliť primeranú dobu uchovávania, zrozumiteľne komunikovať účel zberu a rozlišovať medzi tým, čo je potrebné pre výskumné overenie a čo by už bolo zbytočným zásahom do súkromia. Pri návrhu rozhraní zároveň beriem do úvahy širšie inštitucionálne záväzky starostlivosti o používateľov a o dáta, ktoré v digitálnych systémoch vznikajú. [@dekker_networks_of_care_2022]

Napokon, etickým aj metodickým aspektom je transparentnosť algoritmických zásahov. Aj jednoduché pravidlá (napr. na zvyšovanie variability odporúčaní) menia to, čo používateľ vidí, a tým ovplyvňujú interpretáciu. V práci preto tieto zásahy pomenúvam a pri návrhoch do ďalšej iterácie zvažujem, ako ich sprístupniť tak, aby boli pre návštevníka čitateľné a férové.

## 2.6 Kľúčové pojmy a pracovné definície {#sec:metodologia-26}

Táto sekcia slúži ako čitateľská pomôcka. Pojmy uvádzam v pracovnom význame, v akom ich používam v praktických kapitolách; nejde o úplné definície v zmysle encyklopédie.

*naratívna vrstva*  
Naratív tu nepoužívam ako synonymum kauzálneho príbehu. Naratívnu vrstvu chápem ako spúšťač asociácií a ako súbor väzieb, ktoré sa odohrávajú v hlave návštevníka pri strete s dielom alebo so zostavou diel. Je to vrstva čítania, ktorá vzniká z kontextu, vzťahov a interpretácie. V digitálnej zbierke môže byť oslabená tým, že rozhranie uprednostní databázový režim (vyhľadávanie, filtre, katalóg) pred režimom, ktorý podporuje porovnávanie, prechádzanie a významové susedstvá. [@manovich_database_symbolic_form_1999; @manovich_language_new_media_2001]

*objav*  
Objavom rozumiem situáciu, keď používateľ nájde dielo alebo spojenie diel bez toho, aby ho presne hľadal. Nie je to náhoda bez významu, ale moment, keď sa z návrhu systému stane osobné rozhodnutie. V praxi je to často spojené s minimálnym pomenovaním prepojenia, ktoré dáva dvojici alebo zostave zmysel.

*serendipita*  
Serendipitu používam ako označenie pre užitočnú náhodu v rámci navrhnutých podmienok. Nie je to vlastnosť algoritmu samotného, ale vlastnosť situácie, v ktorej sa stretáva návrh systému, výber korpusu a konkrétna skúsenosť používateľa. Ako kultúrny rámec pre tento typ skúsenosti mi slúži aj motív „zablúdenia“ a spomalenia, ktorý umožňuje prepnúť z režimu účelového vyhľadávania do režimu vnímania. [@solnit2006]

*rozhranie*  
Rozhranie nechápem len ako vizuálny layout. Zahŕňa aj dátové a algoritmické vrstvy, ktoré určujú, čo sa dá nájsť a akým spôsobom. Rozhranie je preto aj kurátorská operácia: nastavuje viditeľnosť, poradie a možné susedstvá diel. [@whitelaw_generous_interfaces_2015]

*GLAM*  
Skratka pre *Galleries, Libraries, Archives, Museums*. Používam ju ako pomenovanie inštitucionálneho prostredia, v ktorom sa stretáva kurátorská prax, verejná služba, infraštruktúra dát a dlhodobá starostlivosť o zbierky.

*R&D*  
Skratka pre *research and development*. V texte označuje režim práce, kde cieľom nie je len prevádzkový „vývoj produktu“, ale aj skúšanie prístupov, prototypovanie a formulovanie prenositeľných zistení pre ďalšie použitie v inštitúcii.

*open-source*  
Označenie pre softvér, ktorého zdrojový kód je verejne dostupný a používanie/modifikácia sú upravené licenciou. V práci ho používam najmä vo vzťahu k transparentnosti implementácie a k možnosti overenia niektorých krokov (v rozsahu, ktorý umožňujú licencie dát a reprodukcií).

*otvorené dáta*  
Dáta publikované tak, aby ich bolo možné zmysluplne znovu použiť (typicky vrátane licenčných podmienok a technickej dostupnosti). V kontexte zbierok ide najmä o metadáta a prípadne reprodukcie, ak to dovolí právny režim. [@openglam_principles_2018]

*public domain (voľné dielo)*  
Označenie pre diela, na ktoré sa už nevzťahuje autorskoprávna ochrana (najčastejšie preto, že uplynula doba trvania majetkových práv). V práci týmto pojmom označujem situácie, keď je možné používať reprodukcie diel bez potreby licenčného súhlasu autora alebo dedičov; prakticky to ovplyvňuje, či môžu byť reprodukcie zverejnené, archivované a zahrnuté do otvoreného repozitára. Pojem používam striktne pre stav autorských práv k dielu; nevylučuje existenciu ďalších obmedzení viazaných na konkrétnu reprodukciu alebo zmluvné podmienky inštitúcie.

*metadáta*  
Štruktúrované informácie o dielach (napr. autor, datovanie, technika, predmetové heslá, proveniencia), ktoré umožňujú vyhľadávanie, filtrovanie, prepojovanie a interpretáciu. V práci zdôrazňujem, že metadáta nie sú neutrálne: ich kvalita a štruktúra priamo ovplyvňujú, aké naratívne väzby je možné v rozhraní vytvoriť alebo sprostredkovať.

*korpus*  
Výber (subset) diel a metadát, s ktorým prototyp pracuje. Korpus je metodické rozhodnutie: určuje rozsah, reprezentatívnosť, ale aj to, aké väzby majú šancu vzniknúť (napr. cez dostupné polia, jazyk a kvalitu reprodukcií).

*odporúčací systém*  
Mechanizmus, ktorý na základe pravidiel alebo modelu navrhuje „ďalšie“ položky (diela) k aktuálnemu výberu. V práci ho chápem ako vrstvu, ktorá spoluurčuje viditeľnosť a môže vytvárať skreslenia (napr. stabilizovať populárne položky alebo opakovať podobné typy diel). [@abdollahpouri_unfairness_popularity_bias_2019]

*embeddingy*  
Vektorové reprezentácie (napr. obrazov alebo textov), ktoré umožňujú porovnávať podobnosť položiek výpočtovo. V práci sa objavujú najmä ako technický prostriedok pre vizuálnu alebo sémantickú podobnosť; metodicky sú dôležité tým, že menia to, čo systém považuje za „blízke“ a tým ovplyvňujú možné susedstvá diel.
