# 6. Prístupy k obohateniu a reinterpretácii digitálnych zbierok umenia

> “Generous interfaces offer rich, browsable views; provide evocative samples of primary content; and support an understanding of context and relationships.”
> [@europeana2019_generousinterfaces]

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

