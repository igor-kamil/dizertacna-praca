# 6. Prístupy k obohateniu a reinterpretácii digitálnych zbierok umenia

> “Generous interfaces offer rich, browsable views; provide evocative samples of primary content; and support an understanding of context and relationships.”
> — [@whitelaw_generous_interfaces_archival_2012]

## 6.2 Veľkorysé rozhrania

### Objavovanie namiesto vyhľadávania

Vyhľadávacie pole je dobrý sluha vtedy, keď už poznám správne slová. V digitálnych zbierkach však často začíname skôr orientáciou než otázkou: potrebujeme najprv získať predstavu, *čo v zbierke vôbec je*, aké sú v nej zhluky, rozdiely, opakovania a možné „cesty“ čítania. Mitchell Whitelaw tento posun pomenoval ako *generous interfaces*, v slovenčine ich v texte nazývam *veľkorysé rozhrania*: rozhrania, ktoré namiesto toho, aby od používateľa vyžadovali otázku, najprv ponúknu prehľad, vzorky a vzťahy v rámci kolekcie. [@whitelaw_generous_interfaces_2015]

Dôležité je, že veľkorysosť nie je univerzálna šablóna. Má byť tesne previazaná s povahou zbierky a s tým, čo je pre ňu prirodzene čitateľné. Preto sa veľkorysé rozhrania častejšie rodia ako *bespoke* riešenia: vyžadujú dizajnérske a kurátorské rozhodnutia, ktoré sa zvyčajne nedajú „kúpiť“ spolu s off-the-shelf systémom na správu zbierok. [@whitelaw_generous_interfaces_2015; @schema2019_gist_generous]

::: {.aside}
princípy veľkorysého rozhrania (Haskiya)

* *show first, don’t ask* (najprv ukáž, až potom pýtaj)
* *provide samples and clues* (pracuj so vzorkami z obsahu, nie iba s metadátami)
* *show relationships* (odhaľ vzťahy medzi vlastnosťami zbierky)
* *provide rich primary content* (doruč sľub rozhrania kvalitou primárneho obsahu)
[@europeana2019_generousinterfaces]
:::

## Referenčný projekt zo sveta: *Dive into Color* (Cooper Hewitt Labs)

*Dive into Color* je interaktívna časová os, ktorá umožňuje prechádzať zbierku Cooper Hewitt podľa farieb, farebných harmónií a času. Kľúčové je, že používateľ nevstupuje cez otázku, ale cez mapu možností: rozhranie najprv ukáže štruktúru a vizuálne „vzorky“ kolekcie, a až potom umožní spresňovať výber. [@vane2018_making_diveintocolor]

Je to ukážkovo veľkorysé rozhranie v tom, že navigačný jazyk nie je odvodený z katalógovej logiky (autor, technika, inventár), ale z vlastnosti, ktorá je prirodzene čitateľná aj bez expertízy a zároveň má zmysel pre daný typ zbierky: farba je pre dizajnérsku kolekciu legitímny „prvý dotyk“. Rozhranie potom dokáže robiť aj to, čo search typicky nevie: umožní vnímať zhluky, výnimky, časové posuny a vizuálne príbuznosti ešte predtým, než sa používateľ rozhodne, čo vlastne hľadá. [@vane2018_making_diveintocolor; @vane_diveintocolor_project]

![*Dive into Color* (Cooper Hewitt Labs): vstup cez farebné harmónie a časovú os.](figures/fig-6-2-dive-into-color-ui.png){#fig:dive-into-color-ui width=90%}

![*Dive into Color* v expozícii: dotykové rozhranie ako „kolekčný prehľad“ v priestore.](figures/fig-6-2-dive-into-color-in-situ.jpg){#fig:dive-into-color-insitu width=90%}

::: {.aside}

 * *názov projektu:* *Dive into Color*
 * *účel a kontext použitia:* explorácia zbierky podľa farby; vystavené v rámci výstavy *Saturated: The Allure and Science of Color*
 * *role a autori:* Olivia Vane (vývoj/dizajn)
 * *dáta a zdroj:* zbierka Cooper Hewitt (Collections API)
 * *rozhranie a režim:* timeline + výber farebných harmónií; vhodné aj pre dotyk
 * *repo / zdroje:* https://www.oliviavane.co.uk/dive-into-color
 * *poznámky k implementácii:* navigačný jazyk je „vlastnosť zbierky“ (farba), nie katalógová kategória

:::

## Prípadová štúdia z lab.SNG: *plenerizmus.sng.sk*

### Keď sa do zbierky vstupuje cez *náladu*

*Plenérizmus* vznikol z praktickej potreby výstavy: diel je veľa, no fyzický priestor má limit. Kurátorka (Katarína Beňová) navrhla, aby sa „nezmestiteľná“ časť výberu sprístupnila na Webe umenia a dala sa prehliadať na veľkej dotykovej obrazovke pri vstupe do expozície. V tejto fáze to ešte vyzeralo ako bežná online kolekcia.

Zlom nastal pri hľadaní vhodného vstupu. Nechcel som, aby dotyková obrazovka skončila ako veľký zoznam, v ktorom sa pozornosť vždy zlomí na prvých položkách. Z rozhovorov s galerijnou pedagogikou prišlo slovo, ktoré presne sedelo na tematiku plenéru: nejde len o motív, ale o zachytenie *nálady* (*stimmung*), prchavého dojmu. Tento jazyk mal oporu aj v dobových zápisníkoch a denníkoch. A tak sa dizajnová otázka otočila: čo ak sa do kolekcie nevstupuje cez autora či názov, ale cez náladu?

Výsledné rozhranie stojí na trojici volieb: *motív*, *nálada* a *počasie*. Diela boli ručne otagované týmito kategóriami a cez API Webu umenia sa skladali dotazy tak, aby zvolená kombinácia priviedla návštevníka k jednému konkrétnemu dielu. Tento „mechanizmus výberu“ vytvára dva efekty, ktoré v search režime často chýbajú: pocit prekvapenia (zbierka odpovedá inak, než čakám) a pocit objavu (výsledok nie je len správna odpoveď, ale nový obraz, ku ktorému som sa nedostal cez meno autora). Súčasťou rozhrania boli aj krátke citáty zo zápisníkov, ktoré návštevníka naladia na spôsob čítania diel ako záznamu dojmu, nie iba katalógového objektu.

![*plenerizmus.sng.sk*: výber podľa *motívu*, *nálady* a *počasia* ako vstup do kolekcie (kiosk režim).](figures/fig-6-2-plenerizmus-ui.png){#fig:plenerizmus-ui width=90%}

![Použitie v priestore: dotyková obrazovka pri vstupe do expozície.](figures/fig-6-2-plenerizmus-in-situ.jpg){#fig:plenerizmus-insitu width=90%}


::: {.aside}

* *názov projektu:* *plenerizmus.sng.sk*
* *účel a kontext použitia:* doplnok k výstave „Z akadémie do prírody. Podoby krajinomaľby v strednej Európe 1860–1890“; dotykový kiosk pri vstupe
* *role a autori:* vývoj a dizajn: Igor Rjabinin, Lukáš Štepanovský, Pavlína Morháčová; kurátorka výstavy: Katarína Beňová
* *výskumný vstup:* rozhovory s galerijnou pedagogikou (Peter Pivoda, Miroslava Mišová) ako zdroj konceptu „nálady“
* *dáta a zdroj:* diela z Webu umenia cez API; nad nimi ručne vytvorené tagy (*motív / nálada / počasie*)
* *rozhranie a režim:* touch-first, výstup do detailu a zoomu; možnosť pokračovať na mobile (QR)
* *repozitár (open source):* `https://github.com/SlovakNationalGallery/plenerizmus.sng.sk`
* *poznámky k implementácii:* kurátorské tagovanie je súčasťou „navigačného jazyka“, nie len doplnkové metadáta

:::

## Porovnanie a prenositeľné poučenie

*Dive into Color* ukazuje veľkorysé rozhranie postavené na vlastnosti, ktorá sa dá vo veľkom rozsahu extrahovať a škálovať (farba + čas). [@vane2018_making_diveintocolor] *Plenérizmus* ukazuje veľkorysé rozhranie postavené na kategórii, ktorá je tematicky presná, no vyžaduje ľudské rozhodnutia (nálada). Tento rozdiel je podstatný, lebo naznačuje, že „veľkorysosť“ sa dá dosiahnuť dvoma cestami: buď cez výpočtovo dostupnú vlastnosť zbierky, alebo cez kurátorsky pomenovaný jazyk, ktorý má oporu v téme a sprievodných textoch.

Pre handbook si z toho beriem jednu jednoduchú vetu: veľkorysé rozhranie vzniká vtedy, keď si inštitúcia trúfne pomenovať *navigačný jazyk zbierky* a dá mu takú formu, aby používateľ najprv videl možnosti a až potom musel vedieť otázku. [@europeana2019_generousinterfaces]

## 6.3 Naratívne moduly a kurátorské vrstvy
### *Scrollytelling a výstavné mikrostránky ako publikačná vrstva nad zbierkou*

> “The story is something that you have in your mind … and the immersive aspect of the exhibition is actually the way you translate the story … into reality.”
> — interviewee quoted in Popoli & Derda (2021) [@popoli_derda_developing_experiences_2021]


Výstavná mikrostránka je zvláštny druh online objektu. Nie je to katalóg, ktorý čaká na vyhľadávanie, ani bežná stránka výstavy na hlavnom webe inštitúcie. Je to publikačný formát: má vlastnú vizuálnu identitu, vlastnú dramaturgiu, vlastný tón, často aj vlastnú interakčnú logiku. V ideálnom prípade prekladá kvality výstavy do webového jazyka a zároveň využíva to, čo výstava nevie: hypertext, vysvetlivky, prepojenia na zdroje, multimédiá a prácu s detailom.

Jedným z najčitateľnejších webových jazykov, ktoré sa tu prirodzene udomácnili, je *scrollytelling* — longform rozprávanie, v ktorom sa obraz, text a interakcie skladajú do príbehu riadeného scrollom. V tomto formáte sa dá naratív udržať bez toho, aby čitateľ musel „navigovať“ ako v katalógu; príbeh ho nesie a zároveň mu dáva priebežné výhybky do detailu. [@shorthand_scrollytelling_intro; @eu_scrollytelling_guide]

Z pohľadu tejto práce sú naratívne moduly jednou z najpriamočiarejších odpovedí na limity online zbierok z predchádzajúcej kapitoly. Obnovujú hlas a kontext. Umožňujú „pomalé“ čítanie. A hlavne: vedia pracovať s dielom ako s dôkazom v argumente, nie iba ako s položkou v zozname.

::: {.aside}

čo tu nazývam naratívnym modulom: 

- *navigačný jazyk:* téma, kapitola, kurátorský hlas  
- *jednotka skladania:* odsek a sekcia (nie výsledok vyhľadávania)  
- *sľub:* „prejdem ťa témou“ a zároveň ti dám primárny materiál (detail, zoom, zdroje)  
- *riziko:* izolácia od hlavného webu, technologická krehkosť, miznutie po rokoch

:::

### Svetové referencie: keď mikrostránka drží tému pokope

Dobrým príkladom je digitálna vrstva k výstave Vermeer v Rijksmuseu: *Closer to Johannes Vermeer*. Je to samostatný webový naratív, ktorý nefunguje ako katalóg výstavy, ale ako sprievodca: vedie človeka cez maliarov život a diela, používa multimediálny hlas a drží rytmus kapitol. Zároveň je to „výstavná vrstva“, ktorá žije aj mimo návštevy múzea a presahuje čas výstavy. [@rijksmuseum_vermeer_hub; @rijksmuseum_closer_vermeer_story_2023; @fabrique_closer_vermeer_2023]

Druhá referencia je *Bosch. A story in pictures* z Museo del Prado. Prado to explicitne označuje ako interaktívny *scrollytelling* zdroj: príbeh je lineárny, scrollom vedený, no je pretkávaný obrazovým materiálom a vysvetlením kontextu. Je to dobrý príklad, že „výstavný“ web nemusí simulovať prechádzku priestorom; môže byť publikáciou, ktorá sa číta a zároveň ukazuje. [@prado_bosch_story_in_pictures_2016]

![Rijksmuseum: *Closer to Johannes Vermeer* – digitálny sprievodca k výstave ako samostatná naratívna vrstva.](figures/fig-6-3-rijks_vermeer_hero.png){#fig:rijks-vermeer-hero width=90%}

![Museo del Prado: *Bosch. A story in pictures* – explicitne označený *scrollytelling* formát.](figures/fig-6-3-prado_bosch_scrollytelling.png){#fig:prado-bosch-scrollytelling width=90%}

::: {.aside}
**Closer to Johannes Vermeer** [@rijksmuseum_vermeer_hub]

*inštitúcia:* Rijksmuseum
*účel:* digitálny sprievodca k výstave Vermeer (2023) a dlhšie žijúca vrstva „get closer“
*forma:* longform kapitoly + multimédiá; téma drží pokope aj mimo výstavy
*záznam o vzniku:* Fabrique (making-of / launch text)

:::

::: {.aside}

**Bosch. A story in pictures** [@prado_bosch_story_in_pictures_2016]

*inštitúcia:* Museo del Prado
*forma:* interaktívny *scrollytelling* zdroj
*silná stránka:* lineárne čítanie + priebežné vizuálne „dôkazy“ a kontext

:::

### Limitácia, ktorú si tieto projekty nesú: krehkosť a izolácia

Výstavné mikrostránky majú nespochybniteľné výhody. Vedia vytvoriť imerzívny zážitok. Vedia sklbiť identitu výstavy (vizuálny jazyk, rytmus miestností/podstránok, kurátorský hlas) s vlastnosťami internetu (hypertext, prepojenia, vysvetlivky, interakcie, zoom, zvuk, video). To je presne typ „prekladu príbehu do reality“, ktorý sa v literatúre o imerzívnom storytellingu opakovane vracia ako kľúčová hodnota. 

Zároveň však tieto weby často žijú v izolácii od hlavného webu inštitúcie. Majú vlastnú infraštruktúru a neraz aj náročnejší technologický stack. Po skončení výstavy sa prestanú udržiavať, a časom skončia — niekedy kvôli aktualizáciám, inokedy úplne banálne, lebo „vyprší doména“. Tate to v texte o archívovaní Intermedia Art microsite pomenúva veľmi priamo: aj keď web ešte „existuje“, sedí na zastaranom serveri a časom ho bude treba odstaviť; navyše, bežné web-archivačné crawlery často nedokážu zachytiť všetky dynamické časti (napr. video, interaktívne prvky). [@tate_archiving_intermedia_microsite_2021]

Táto krehkosť nie je okrajová téma. Je to druhá strana naratívnej vrstvy: nielen že sa ťažko vytvára, ale ešte ťažšie sa udržiava ako „inštitucionálna pamäť“.

::: {.aside}

**Tate ako referenčný rámec „prežitia mikrostránok“** [@tate_archiving_intermedia_microsite_2021]

Tate archívuje Intermedia Art microsite ako záznam (public record) a opisuje nástroje aj limity web archívovania.
Pre mňa je to argument, že výstavné mikrostránky treba brať ako publikačné objekty, ktoré potrebujú údržbu a archív rovnako ako katalógy.

:::

### Prax v SNG: mikrostránky ako „lego“ nad Webom umenia

V SNG bola dlhodobo možnosť zapojiť lab.SNG do výstav: niekedy cez onsite prvky (interaktívne prehliadače skicárov, porovnania pred/po reštaurovaní, hravé rozhrania), inokedy cez dedikované mikrostránky. Už od skorých projektov (napr. `https://dvekrajiny.sng.sk/` [@dvekrajiny_sng_2014]) sa postupne ustálil prístup, v ktorom sa tvorba novej mikrostránky mení na skladanie z recyklovateľných komponentov — tak trochu ako lego.

Jedna z praktických podmienok bola, že každá mikrostránka žije ako *subdoména pod sng.sk*. Pre mňa to nie je maličkosť; je to spôsob, ako znížiť riziko, že projekt skončí len preto, že niekde „vyprší doména“. Táto obava nie je hypotetická — aj v našom prostredí existujú staršie projekty, ktoré zanikli práve takto, bez veľkého dramatického momentu, len tichým vyhasnutím infraštruktúry (napr. webstránka k projektu "*Prerušená pieseň*").

Časom sa ustálil aj technologický stack. Používali sme open-source flat-file CMS Grav (`getgrav.org`) ako redakčné prostredie. Výhoda bola dvojitá: po prvé, obsah sa dal editovať ako publikácia (sekcie, kapitoly, tonalita). Po druhé, diela sa nemuseli znovu nahrávať — v mikrostránke stačilo použiť jednoznačný identifikátor a cez API Webu umenia natiahnuť vždy aktuálne metadáta aj najkvalitnejšiu vizuálnu reprezentáciu. Pre tento typ publikovania sme zároveň vyvinuli embedovateľný zoom (opäť z webumenia.sk), aby sa čitateľ mohol ponoriť do detailu bez opustenia príbehu.

V tejto línii vznikli výstavné longformy ako `https://mzo.sng.sk` a `https://senxskutocnost.sng.sk`. Slúžili na zakontextovanie výstavy, sprístupnenie materiálu a najmä na „off-site“ skúsenosť: po návšteve výstavy sa dalo v téme pokračovať a študovať ju v pokoji, s detailom a vysvetlením.

Dôležitý most bol aj jazyk. Kurátorské podklady často prirodzene smerujú k odbornej presnosti. Pre internet sme potrebovali udržať korektnosť, ale nájsť čitateľný tón a formát. V našom workflow sa preto ustálilo pravidlo: kurátori dodali podklady a editorský tím ich prepísal do webového jazyka. V praxi tento „tone of voice“ (často práve vďaka editácii Lukáša Štepanovského) dal mikrostránkam osobité čaro a čitateľnosť.

::: {.aside}
**project card: SNG storytellingové mikrostránky (skupina)**

*projekty:* `https://mzo.sng.sk`, `https://senxskutocnost.sng.sk`, `https://1989.sng.sk`
*forma:* longform + kapitoly + diela z API + embed zoom
*stack:* Grav (flat-file CMS) + Web umenia API + zoom komponent
*workflow:* kurátorské podklady → edičný prepis → publikovanie ako web
*open source:* repozitáre doplnené pri jednotlivých projektoch
:::

### Prípadová štúdia: čisto online výstava k výročiu Novembra 1989

Postupne sme získali aj reputáciu na to, aby si galéria trúfla na čisto online výstavu k výročiu Novembra 1989. Tak vznikol projekt *Čas-opis 1989* (`https://1989.sng.sk`), ktorý dostal plnohodnotné promo ako iné výstavy — vrátane vizuálneho zásahu na fasáde SNG.

![Promo k projektu *Čas-opis 1989* na fasáde SNG (2019).](figures/fig-6-3-sng_fasada_1989.jpg){#fig:sng-fasada-1989 width=90%}

Súčasťou webu je zdigitalizovaný denník výtvarníka Júliusa Kollera, ktorý detailne zapisoval udalosti dní okolo Novembra. Tu sme vedome využili „internetové“ vlastnosti publikačnej vrstvy. Jednou z nich bol crowdsourcing: prepisy skenovaných textov vytvárali dobrovoľníci, ktorí sa prihlásili cez výzvu na sociálnych sieťach. Druhou nuansou bola temporalita: od septembra do decembra stránka na úvodnej obrazovke zobrazuje „rovnaký deň“, ale v roku 1989 (vrátane počasia a udalostí), čím vzniká zvláštny efekt opakovania tém naprieč časom. A tretím prvkom boli interaktívne „nástenky“ k témam, ktoré sa dali skladať z podkladov cez vlastný vizuálny editor (s vedomým odkazom na plagátovú estetiku revolúcie).

::: {.aside}
** project card: 1989.sng.sk**

*web:* `https://1989.sng.sk`
*repozitár:* `https://github.com/SlovakNationalGallery/1989.sng.sk`
*projektový tím:* Michal Čudrnák, Petra Hanáková, Lukáš Štepanovský, Zuzana Koblišková, Philo van Kemenade
*vývoj webu:* Igor Rjabinin, Ernest Walzel, Martin Havala (lab.SNG)
*vizuál/web dizajn:* Peter Gála

:::

Všetky tieto mikrostránky dnes fungujú aj ako referenčný zdroj. To je pre mňa dôležitý výsledok: ukazuje sa, že naratívna vrstva nad zbierkou nemusí byť len dočasný marketingový objekt. Keď je dobre napojená na dáta, keď má editorskú starostlivosť a keď sa o ňu niekto dlhodobo „stará“, vie prežiť a postupne sa stať súčasťou kultúrnej pamäti.

### Údržba je súčasť naratívu

Ak má výstavná mikrostránka prežiť, musí sa správať naraz ako publikácia aj ako produkt. Ako publikácia potrebuje editáciu, tón, štruktúru a archív. Ako produkt potrebuje infraštruktúru, údržbu, stabilné adresy a jasné vlastníctvo. Tate týmto smerom ukazuje veľmi praktickú cestu: mikrostránky netreba len tvoriť, ale aj archivovať ako záznamy, inak sa naratívna vrstva stratí tichšie než samotná výstava. [@tate_archiving_intermedia_microsite_2021]

