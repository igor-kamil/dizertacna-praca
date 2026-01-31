# 2 Metodológia {#sec:metodologia}

Táto práca vychádza z dlhodobej praxe v prostredí digitálneho vývoja pre galérie a múzeá. Metodologicky ju chápem ako praxou vedený výskum, v ktorom sa poznanie formuje cez návrh, prototypovanie, nasadzovanie a reflexiu rozhraní. V praktických kapitolách preto nepracujem len s textovými argumentmi, ale aj s výskumnými artefaktmi: prototypmi, návrhovými rozhodnutiami, technickými implementáciami a dokumentovanými reakciami používateľov.

Keďže téma práce sa dotýka významu, interpretácie a skúsenosti, opieram sa aj o rámce umeleckého výskumu. V tomto zmysle nejde o snahu „urobiť z vývoja umenie“, ale o prijatie tvorivého experimentu ako legitímnej metódy poznávania: systematicky zbierať podklady pre návrh, skúšať varianty a explicitne reflektovať dôsledky zvolených foriem rozhrania. [@zervan_mitasova_umelecky_vyskum_v_diskusii_2025; @frayling_research_in_art_and_design_1994; @candy_edmonds_practice_based_research_2018]

## 2.1 Metodický rámec práce {#sec:metodologia-21}

Základným metodickým nastavením je iteratívny cyklus návrhu a overovania. Rozhranie tu nie je len výsledok na konci práce, ale zároveň nástroj, cez ktorý skúmam výskumný problém. Tento prístup umožňuje pracovať s otázkami, ktoré by sa v čisto analytickej (alebo čisto historickej) rovine overovali ťažko: napríklad ako sa mení spôsob „čítania“ digitálnej zbierky, keď sa zmení vstupná logika, alebo akú rolu má náhoda a vizuálna podobnosť pri objavovaní diel.

Umelecký výskum v tejto práci chápem pragmaticky. Je to rámec, ktorý mi pomáha udržať tvorivý proces disciplinovaný: formulovať zámer, zvoliť obmedzenia (korpus, režim rozhrania, podmienky testovania), urobiť prototyp, vystaviť ho realite a následne reflexívne pomenovať, čo sa potvrdilo, čo sa ukázalo ako slepá ulička a čo je prenositeľné do ďalšieho kontextu. [@frayling_research_in_art_and_design_1994; @candy_edmonds_practice_based_research_2018]

Cieľ práce je praktický: vytvoriť použiteľný „handbook“ pre profesionálov v GLAM a digitále. Jadrom preto nie sú izolované výsledky jedného testu, ale typológia prístupov a rozhodnutí, ktoré sa dajú opätovne použiť v iných inštitúciách a nad inými zbierkami. Výskumné artefakty (prototypy rozhraní, algoritmické varianty, nastavenia korpusov) sú v tomto zmysle materiálom, cez ktorý sa dá konkrétne hovoriť o tom, prečo niektoré rozhrania vedú k predvídateľným cestám a iné podporujú objav, interpretáciu a situované porozumenie.

S tým súvisí aj spôsob hodnotenia. Pri niektorých otázkach používam merateľné indikátory (napr. opakovanie odporúčaných diel, diverzita ponúk, počet krokov k uloženiu výsledku). Pri iných je hodnotenie nevyhnutne kvalitatívne a situačné: dôležité sú krátke odôvodnenia používateľov, pozorovania počas interakcie a to, či rozhranie vytvára podmienky pre interpretáciu a skúsenosť, ktorá presahuje samotné sprístupnenie. Tento mix nepovažujem za metodickú slabinu, ale za dôsledok toho, že skúmaný jav (nástup alebo strata naratívnej vrstvy) sa deje v prepojení systému, používateľa a konkrétnej situácie.

## 2.2 Pozícia autora a prostredie {#sec:metodologia-22}

Do výskumu vstupujem primárne z pozície programátora a výskumníka v inštitucionálnom prostredí. Moje formálne vzdelanie vychádza z informatiky a značná časť pracovnej praxe sa odohráva v digitálnom vývoji pre múzeá a galérie.

Táto pozícia má pri práci dvojitý efekt. Na jednej strane prináša orientáciu na operacionalizáciu: hľadať metódy, metriky a testy tam, kde sa to dá. Na druhej strane ma prax v GLAM naučila, že významné aspekty návštevníckej skúsenosti často nie sú plne merateľné. Rozhrania preto hodnotím aj cez kvalitatívne signály a cez to, či podporujú interpretáciu a situované „čítanie“ diel, nielen ich technickú dostupnosť.

Výskum prebieha zvnútra inštitúcie. Táto poloha umožňuje byť pri zdroji dát, infraštruktúr a rozhodnutí, ktoré digitálne zbierky formujú. Zároveň prináša limity typické pre verejné inštitúcie: procesy obstarávania, licencie a závislosti na dostupnej infraštruktúre môžu spomaľovať experimentovanie. Tieto praktické obmedzenia nepovažujem za rušivý šum, ale za súčasť metodologického rámca: rozhranie v múzeu sa vždy navrhuje v podmienkach, ktoré ovplyvňujú jeho podobu.

Moja rola sa v čase menila. V raných fázach vývoja digitálnych projektov som vystupoval viac ako autor jednotlivých riešení. Postupne, s rastom tímu a komplexnosti projektov, som sa posúval k roli facilitátora, najmä na technickej strane. V metodológii to znamená, že výskumné artefakty nevznikajú izolovane, ale v kolaboratívnej sieti kompetencií a zodpovedností.

## 2.3 Materiál a dáta {#sec:metodologia-23}

Materiál práce tvorí kombinácia troch typov podkladov.

Prvým sú dáta digitálnych zbierok: reprodukcie diel a metadáta, ktoré umožňujú budovať rozhrania nad existujúcimi kolekciami. V praxi to zahŕňa aj rozhodnutia o rozsahu korpusu, kvalite obrázkov, dostupnosti polí a licenčných obmedzeniach. V tomto bode nadväzujem na diskusiu o dokumentácii zbierok a jej vplyve na použiteľnosť kolekcie. [@cameron_museum_collections_documentation_2010]

Druhým typom sú dáta vznikajúce v interakcii: uložené výstupy používateľov, krátke zdôvodnenia, tagy a pozorovania facilitátora. Nepracujem s nimi ako s reprezentatívnou vzorkou populácie, ale ako s dokumentáciou interpretačných ciest a ako so spätnou väzbou pre iteráciu návrhu. V rámci Atlas re/mix je základnou jednotkou záznamu diptych vytvorený používateľom a doplnený minimálnym vysvetlením: aké prepojenie vnímal a či vnímal prvok objavu.

Tretím typom sú technické artefakty: zdrojový kód, skripty, konfigurácie a grafy. V praktických kapitolách sú tieto prvky chápané ako súčasť argumentu: ukazujú, ktoré rozhodnutia boli potrebné, kde vznikajú limity a čo je možné replikovať v iných prostrediach.

::: {.aside #aside:open-repo}
*Otvorený repozitár a reprodukovateľnosť*

Text práce, vybrané vstupné dáta a skripty na generovanie grafov sú publikované v otvorenom repozitári. Repozitár slúži ako doplnková dokumentácia k metodológii: umožňuje čitateľovi overiť niektoré tvrdenia a reprodukovať vizualizácie z rovnakých vstupov. [@rjabinin_dizertacna_praca_repo_2026]
:::

## 2.4 Spôsob práce a iterácie {#sec:metodologia-24}

Spôsob práce je založený na iterácii. Východiskom je identifikácia problému (napr. úzky vstup do zbierky, strata kontextu, predvídateľné cesty v katalógu), nasledovaná návrhom prototypu, jeho overením v situácii a následnou reflexiou. Praktické kapitoly 6 a 7 ukazujú tento postup na konkrétnych projektoch a experimentoch.

Vývoj prebieha v režime, ktorý sa blíži k agilnému procesu: rýchle prototypovanie, skoré zverejnenie funkčného minima a neskoršie dolaďovanie. Táto stratégia je v GLAM prostredí pragmatická. Umožňuje overiť predpoklady na reálnych používateľoch skôr, než sa investuje do finálneho riešenia, a zároveň vytvára priestor na učenie sa z kontextu inštitúcie.

Súčasťou iterácie sú aj technické porovnania. V rámci projektov pracujem s rôznymi prístupmi k indexácii a vyhľadávaniu (napr. vizuálna podobnosť cez embeddingy). Tieto rozhodnutia vnímam ako metodické aj kurátorské: spôsob, akým systém ponúka kandidátov, ovplyvňuje to, čo sa stane viditeľným a čo ostane skryté. Preto sa pri návrhu a hodnotení opieram aj o diskusiu o tom, ako rozhrania sprístupňujú zbierky „štedro“ (teda viaccestne a bez príliš úzkeho vstupu), a zároveň o upozornenia na skreslenia odporúčacích systémov, ktoré môžu zužovať katalóg na malú časť položiek. [@whitelaw_generous_interfaces_2015; @abdollahpouri_unfairness_popularity_bias_2019]

## 2.5 Kľúčové pojmy a pracovné definície {#sec:metodologia-25}

V práci používam niekoľko pojmov v špecifickom, pracovnom zmysle. Uvádzam ich explicitne, aby sa v ďalších kapitolách neopierali o implicitné (a často odlišné) definície.

*naratívna vrstva*  
Naratív v tejto práci nepoužívam ako synonymum kauzálneho príbehu. Naratívnu vrstvu chápem skôr ako spúšťač asociácií a ako súbor väzieb, ktoré sa odohrávajú v hlave návštevníka pri strete s dielom alebo so zostavou diel. Je to vrstva čítania, ktorá vzniká z kontextu, vzťahov a interpretácie. V digitálnej zbierke môže byť oslabená tým, že rozhranie uprednostní databázový režim (vyhľadávanie, filtre, katalóg) pred režimom, ktorý podporuje porovnávanie, prechádzanie a významové susedstvá. [@manovich_database_symbolic_form_1999; @manovich_language_new_media_2001]

*objav*  
Objavom rozumiem situáciu, keď používateľ nájde dielo alebo spojenie diel bez toho, aby ho presne hľadal. Nie je to náhoda bez významu, ale moment, keď sa z návrhu systému stane osobné rozhodnutie. V praxi je to často spojené s minimálnym pomenovaním prepojenia, ktoré dáva dvojici zmysel.

*serendipita*  
Serendipitu používam ako označenie pre užitočnú náhodu v rámci navrhnutých podmienok. Nie je to vlastnosť algoritmu samotného, ale vlastnosť situácie, v ktorej sa stretáva návrh systému, výber korpusu a konkrétna skúsenosť používateľa. Ako kultúrny a priestorový rámec pre tento typ skúsenosti mi slúži aj motív „zablúdenia“ a spomalenia, ktorý umožňuje prepnúť z režimu účelového vyhľadávania do režimu vnímania. [@solnit2006]

*rozhranie*  
Rozhranie v práci nechápem len ako vizuálny layout. Zahŕňa aj dátové a algoritmické vrstvy, ktoré určujú, čo sa dá nájsť a akým spôsobom. Rozhranie je preto zároveň kurátorská operácia: nastavuje viditeľnosť, poradie a možné susedstvá diel. [@whitelaw_generous_interfaces_2015]

## 2.6 Limity a etické rámce {#sec:metodologia-26}

Výskum je limitovaný tým, že mnohé pozorovania vznikajú v malých, situačných vzorkách a často v režime facilitovanej interakcie. Pri interpretácii výsledkov preto pracujem opatrne: nevyvodzujem štatistické závery a tvrdenia formulujem ako dizajnové zistenia alebo ako hypotézy pre ďalšie iterácie.

Etická časť sa týka najmä dvoch oblastí. Prvou je práca s dátami a právami: reprodukcie diel a metadáta môžu mať rôzne licenčné režimy a v praxi ovplyvňujú, čo sa dá zverejniť, tlačiť alebo archivovať. Pri práci s otvorenými dátami sa opieram o princípy otvoreného kultúrneho dedičstva a transparentnosti. [@openglam_principles_2018]

Druhou oblasťou je práca s návštevníckymi vstupmi. Ak prototyp pracuje s fotografiou z telefónu alebo so skenovaným predmetom, ide často o osobný materiál. V takom prípade je dôležité minimalizovať osobné identifikátory, zvoliť primeranú dobu uchovávania a jasne rozlišovať medzi tým, čo je potrebné pre výskumné overenie a čo by už bolo zbytočným zásahom do súkromia. Pri návrhu rozhraní zároveň beriem do úvahy širšie inštitucionálne záväzky starostlivosti o používateľov a o dáta, ktoré v digitálnych systémoch vznikajú. [@dekker_networks_of_care_2022]

Napokon, etickým a metodickým aspektom je aj transparentnosť algoritmických zásahov. Aj jednoduché pravidlá (napr. na zvyšovanie variability odporúčaní) menia to, čo používateľ vidí, a tým ovplyvňujú interpretáciu. V práci preto tieto zásahy pomenúvam a pri návrhoch do ďalšej iterácie zvažujem, ako ich sprístupniť tak, aby boli pre návštevníka čitateľné a férové.
