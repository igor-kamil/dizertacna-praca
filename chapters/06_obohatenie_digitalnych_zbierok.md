# 6. Prístupy k obohateniu a reinterpretácii digitálnych zbierok umenia

### 6.1 Úvod: Od vyhľadávania k objavovaniu

> “Visitors’ criticisms demand a shift from passive, encyclopaedic exhibitions with curatorial authority, to ones that engage visitors and place them at the centre of focus.”
> — [@popoli_derda_developing_experiences_2021]

Predchádzajúca kapitola pomenovala opakujúce sa limity online zbierok, ktoré sa navonok môžu javiť ako „problém rozhraní“, no v jadre sú problémom *spôsobu čítania* zbierky. Mitchell Whitelaw upozorňuje, že po desaťročiach digitalizácie síce vznikla hojnosť materiálu, ale dominantný režim prístupu – vyhľadávanie – je voči tejto hojnosti neveľkorysý: zadržiava informáciu a vyžaduje otázku. [@whitelaw_generous_interfaces_2015] V praxi sa to prekladá do potreby „vedieť, čo hľadám“, do hierarchií pozornosti, do izolovaného zobrazenia objektov bez vzťahov a často aj do plochých odporúčacích mechanizmov, ktoré zviditeľňujú najmä to, čo už je viditeľné.

Tento posun je užitočné čítať aj cez Manovicha: online zbierka je typicky databáza a používateľ sa v skutočnosti nestretáva so „zbierkou“, ale s konkrétnou interpretáciou databázy cez rozhranie. [@manovich_language_new_media_2001] Ak je hlavným režimom katalógový záznam a vyhľadávacie pole, naratívna vrstva sa prirodzene zredukuje na to, čo sa dá stabilne zapísať do polí a filtrov. Nestrácajú sa dáta, oslabuje sa kontext, poradie, intenzita pozornosti a rytmus objavu.

Kapitola 6 preto posúva ťažisko od diagnózy k aplikovaným zásahom. Jej cieľom nie je „vylepšiť databázu“, ale ukázať, ako môže dizajn rozhraní, naratívne vrstvenie a premyslené použitie technológií obnovovať moment prekvapenia, kontextu a *serendipity* – teda prechod od *hľadania* k *objavovaniu*. Východiskom je pritom logika veľkorysých rozhraní: najprv ukázať možnosti, vzorky a vzťahy, až potom vyžadovať otázku. [@whitelaw_generous_interfaces_archival_2012; @whitelaw_generous_interfaces_2015]

Zvolená forma kapitoly je zámerne praktická. Každá podkapitola má:

* stručne pomenovaný problém (spravidla priamo nadväzujúci na limity z kapitoly 5),
* svetovú referenciu (nie ako vzor na kopírovanie, ale ako overený jazyk riešenia),
* lokálnu implementáciu z praxe lab.SNG (s dôrazom na to, čo sa reálne dalo zaviesť, udržať a škálovať),
* krátku technickú poznámku (nie návod, skôr čitateľná mapa rozhodnutí),
* a *project card* ako kompaktný záznam: účel, kontext, role, stack, dáta, repozitár.

Dôležitý rámec: väčšina uvedených projektov stavia na Webe umenia ako na infraštruktúre a zdroji dát. Nové rozhrania tak nemusia „znovu nahrávať“ diela – pracujú s jednoznačnými identifikátormi a cez API ťahajú aktuálne metadáta aj vizuálnu reprezentáciu. Tento princíp zároveň podporuje *in-house* prístup: menšie „odbočky“ nemusia oslabovať jadro, ale môžu sa stať spôsobom, ako ho dlhodobo testovať, kultivovať a postupne dopĺňať o prenositeľné komponenty.

![Dátový tok: Elasticsearch → Web umenia → (API, read-only) → satelitné projekty. Projekty čítajú z API; zdrojové dáta sa udržiavajú vo Webe umenia.](figures/fig-6-1-webumenia-dataflow.svg){#fig:webumenia-dataflow width=90%}

## 6.2 Veľkorysé rozhrania

> “Generous interfaces offer rich, browsable views; provide evocative samples of primary content; and support an understanding of context and relationships.”
> — [@whitelaw_generous_interfaces_archival_2012]

### Objavovanie namiesto vyhľadávania

Vyhľadávacie pole je dobrý sluha vtedy, keď už poznám správne slová. V digitálnych zbierkach však často začíname skôr orientáciou než otázkou: potrebujeme najprv získať predstavu, *čo v zbierke vôbec je*, aké sú v nej zhluky, rozdiely, opakovania a možné „cesty“ čítania. Mitchell Whitelaw tento posun pomenoval ako *generous interfaces*, v slovenčine ich v texte nazývam *veľkorysé rozhrania*: rozhrania, ktoré namiesto toho, aby od používateľa vyžadovali otázku, najprv ponúknu prehľad, vzorky a vzťahy v rámci kolekcie. [@whitelaw_generous_interfaces_2015]

Dôležité je, že veľkorysosť nie je univerzálna šablóna. Má byť tesne previazaná s povahou zbierky a s tým, čo je pre ňu prirodzene čitateľné. Preto sa veľkorysé rozhrania častejšie rodia ako *bespoke* riešenia: vyžadujú dizajnérske a kurátorské rozhodnutia, ktoré sa zvyčajne nedajú „kúpiť“ spolu s off-the-shelf systémom na správu zbierok. [@whitelaw_generous_interfaces_2015; @schema2019_gist_generous]

::: {.aside}
princípy veľkorysého rozhrania:

* *show first, don’t ask* (najprv ukáž, až potom pýtaj)
* *provide samples and clues* (pracuj so vzorkami z obsahu, nie iba s metadátami)
* *show relationships* (odhaľ vzťahy medzi vlastnosťami zbierky)
* *provide rich primary content* (doruč sľub rozhrania kvalitou primárneho obsahu)

 — [@haskiya2019evaluation]
:::


## Referenčný projekt zo sveta: *Dive into Color* (Cooper Hewitt Labs)

*Dive into Color* je interaktívna časová os, ktorá umožňuje prechádzať zbierku Cooper Hewitt podľa farieb, farebných harmónií a času. Kľúčové je, že používateľ nevstupuje cez otázku, ale cez mapu možností: rozhranie najprv ukáže štruktúru a vizuálne „vzorky“ kolekcie, a až potom umožní spresňovať výber. [@vane2018_making_diveintocolor]

Je to príklad veľkorysého rozhrania v tom, že navigačný jazyk nie je odvodený z katalógovej logiky (autor, technika, inventár), ale z vlastnosti, ktorá je prirodzene čitateľná aj bez expertízy a zároveň má zmysel pre daný typ zbierky: farba je pre dizajnérsku kolekciu legitímny „prvý dotyk“. Rozhranie potom dokáže robiť aj to, čo search typicky nevie: umožní vnímať zhluky, výnimky, časové posuny a vizuálne príbuznosti ešte predtým, než sa používateľ rozhodne, čo vlastne hľadá. [@vane2018_making_diveintocolor; @vane_diveintocolor_project]

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

*Dive into Color* ukazuje veľkorysé rozhranie postavené na vlastnosti, ktorú možno vo veľkom rozsahu extrahovať a škálovať (farba + čas) [@vane2018_making_diveintocolor]. *Plenérizmus* ukazuje veľkorysé rozhranie postavené na kategórii, ktorá je tematicky presná, no vyžaduje ľudské rozhodnutia a redakčnú disciplínu (nálada). Tento rozdiel je podstatný, lebo naznačuje, že „veľkorysosť“ sa dá dosiahnuť dvoma cestami: buď cez výpočtovo dostupnú vlastnosť zbierky, alebo cez kurátorsky pomenovaný jazyk, ktorý má oporu v téme a sprievodných textoch.

Pre účely tejto kapitoly je podstatné jedno: veľkorysé rozhranie vzniká vtedy, keď si inštitúcia trúfne pomenovať *navigačný jazyk zbierky* a dá mu takú formu, aby používateľ najprv videl možnosti a až potom musel vedieť otázku [@europeana2019_generousinterfaces]. Zároveň však platí, že samotné „ukázanie možností“ ešte automaticky nevytvára porozumenie. Veľkorysé rozhranie znižuje bariéru vstupu a pomáha objavovať, no kontext a interpretácia často vznikajú až v ďalšej vrstve – v krátkych kurátorských vstupoch, mikropríbehoch, vysvetľujúcich prepojeniach a edične kontrolovaných rámcoch. Práve preto ďalšia podkapitola presúva pozornosť od navigačného jazyka k naratívnym modulom: k tomu, ako sa k „objavovaniu“ dopĺňa čitateľný význam.

## 6.3 Naratívne moduly a kurátorské vrstvy
### *Scrollytelling a výstavné mikrostránky ako publikačná vrstva nad zbierkou*

> “The story is something that you have in your mind … and the immersive aspect of the exhibition is actually the way you translate the story … into reality.”
> — interviewee quoted in Popoli & Derda (2021) [@popoli_derda_developing_experiences_2021]


Výstavná mikrostránka je zvláštny druh online objektu. Nie je to katalóg, ktorý čaká na vyhľadávanie, ani bežná stránka výstavy na hlavnom webe inštitúcie. Je to publikačný formát: má vlastnú vizuálnu identitu, vlastnú dramaturgiu, vlastný tón, často aj vlastnú interakčnú logiku. V ideálnom prípade prekladá kvality výstavy do webového jazyka a zároveň využíva to, čo výstava nevie: hypertext, vysvetlivky, prepojenia na zdroje, multimédiá a prácu s detailom.

Jedným z najčitateľnejších webových jazykov, ktoré sa tu prirodzene udomácnili, je *scrollytelling* — longform rozprávanie, v ktorom sa obraz, text a interakcie skladajú do príbehu riadeného scrollom. V tomto formáte sa dá naratív udržať bez toho, aby čitateľ musel „navigovať“ ako v katalógu; príbeh ho nesie a zároveň mu dáva priebežné výhybky do detailu. [@shorthand_scrollytelling_intro; @eu_scrollytelling_guide]

Z pohľadu tejto práce sú naratívne moduly jednou z najpriamočiarejších odpovedí na limity online zbierok z predchádzajúcej kapitoly. Obnovujú hlas a kontext. Umožňujú „pomalé“ čítanie. A hlavne: vedia pracovať s dielom ako s dôkazom v argumente, nie iba ako s položkou v zozname.

::: {.aside}

čo tu nazývam naratívnym modulom: 

* *navigačný jazyk:* téma, kapitola, kurátorský hlas  
* *jednotka skladania:* odsek a sekcia (nie výsledok vyhľadávania)  
* *sľub:* „prejdem ťa témou“ a zároveň ti dám primárny materiál (detail, zoom, zdroje)  
* *riziko:* izolácia od hlavného webu, technologická krehkosť, miznutie po rokoch

:::

### Svetové referencie: keď mikrostránka drží tému pokope

Dobrým príkladom je digitálna vrstva k výstave Vermeer v Rijksmuseu: *Closer to Johannes Vermeer*. Je to samostatný webový naratív, ktorý nefunguje ako katalóg výstavy, ale ako sprievodca: vedie človeka cez maliarov život a diela, používa multimediálny hlas a drží rytmus kapitol. Zároveň je to „výstavná vrstva“, ktorá žije aj mimo návštevy múzea a presahuje čas výstavy. [@rijksmuseum_vermeer_hub; @rijksmuseum_closer_vermeer_story_2023; @fabrique_closer_vermeer_2023]

Druhá referencia je *Bosch. A story in pictures* z Museo del Prado. Prado to explicitne označuje ako interaktívny *scrollytelling* zdroj: príbeh je lineárny, scrollom vedený, no je pretkávaný obrazovým materiálom a vysvetlením kontextu. Je to dobrý príklad, že „výstavný“ web nemusí simulovať prechádzku priestorom; môže byť publikáciou, ktorá sa číta a zároveň ukazuje. [@prado_bosch_story_in_pictures_2016]

![Rijksmuseum: *Closer to Johannes Vermeer* – digitálny sprievodca k výstave ako samostatná naratívna vrstva.](figures/fig-6-3-rijks_vermeer_hero.png){#fig:rijks-vermeer-hero width=90%}

![Museo del Prado: *Bosch. A story in pictures* – explicitne označený *scrollytelling* formát.](figures/fig-6-3-prado_bosch_scrollytelling.png){#fig:prado-bosch-scrollytelling width=90%}

::: {.aside}
**Closer to Johannes Vermeer** [@rijksmuseum_vermeer_hub]

* *inštitúcia:* Rijksmuseum
* *účel:* digitálny sprievodca k výstave Vermeer (2023) a dlhšie žijúca vrstva „get closer“
* *forma:* longform kapitoly + multimédiá; téma drží pokope aj mimo výstavy
* *záznam o vzniku:* Fabrique (making-of / launch text)

:::

::: {.aside}

**Bosch. A story in pictures** [@prado_bosch_story_in_pictures_2016]

* *inštitúcia:* Museo del Prado
* *forma:* interaktívny *scrollytelling* zdroj
* *silná stránka:* lineárne čítanie + priebežné vizuálne „dôkazy“ a kontext

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

* *projekty:* `https://mzo.sng.sk`, `https://senxskutocnost.sng.sk`, `https://1989.sng.sk`
* *forma:* longform + kapitoly + diela z API + embed zoom
* *stack:* Grav (flat-file CMS) + Web umenia API + zoom komponent
* *workflow:* kurátorské podklady → edičný prepis → publikovanie ako web
* *open source:* repozitáre doplnené pri jednotlivých projektoch
:::

![Porovnanie storytellingových mikrostránok SNG: *mzo.sng.sk*, *senxskutocnost.sng.sk* a *1989.sng.sk* (úvodné obrazovky; spoločný „publishing“ jazyk, rozdielne vizuálne identity).](figures/fig-6-3-sng_storytelling_triptych.png){#fig:sng-storytelling-triptych width=100%}

### Prípadová štúdia: čisto online výstava k výročiu Novembra 1989

Postupne sme získali aj reputáciu na to, aby si galéria trúfla na čisto online výstavu k výročiu Novembra 1989. Tak vznikol projekt *Čas-opis 1989* (`https://1989.sng.sk`), ktorý dostal plnohodnotné promo ako iné výstavy — vrátane vizuálneho zásahu na fasáde SNG.

![*Čas-opis 1989* medzi dvoma médiami: promo na fasáde SNG (fyzický priestor) a podstránka "Cenzúra" na *1989.sng.sk* (digitálny priestor). Plagátová estetika funguje na oboch stranách ako spoločný vizuálny jazyk — v meste ako signál výstavy, na webe ako rozhranie pre „nástenky“ a skladanie materiálov v duchu roku 1989.](figures/fig-6-3-sng_1989_diptych_fasada_web.png){#fig:sng-1989-diptych width=100%}


Súčasťou webu je zdigitalizovaný denník výtvarníka Júliusa Kollera, ktorý detailne zapisoval udalosti dní okolo Novembra. Tu sme vedome využili „internetové“ vlastnosti publikačnej vrstvy. Jednou z nich bol crowdsourcing: prepisy skenovaných textov vytvárali dobrovoľníci, ktorí sa prihlásili cez výzvu na sociálnych sieťach. Druhou nuansou bola temporalita: od septembra do decembra stránka na úvodnej obrazovke zobrazuje „rovnaký deň“, ale v roku 1989 (vrátane počasia a udalostí), čím vzniká zvláštny efekt opakovania tém naprieč časom. A tretím prvkom boli interaktívne „nástenky“ k témam, ktoré sa dali skladať z podkladov cez vlastný vizuálny editor (s vedomým odkazom na plagátovú estetiku revolúcie).

::: {.aside}

**project card: 1989.sng.sk**

* *web:* `https://1989.sng.sk`
* *repozitár:* `https://github.com/SlovakNationalGallery/1989.sng.sk`
* *projektový tím:* Michal Čudrnák, Petra Hanáková, Lukáš Štepanovský, Zuzana Koblišková, Philo van Kemenade
* *vývoj webu:* Igor Rjabinin, Ernest Walzel, Martin Havala (lab.SNG)
* *vizuál/web dizajn:* Peter Gála

:::

Všetky tieto mikrostránky dnes fungujú aj ako referenčný zdroj. To je pre mňa dôležitý výsledok: ukazuje sa, že naratívna vrstva nad zbierkou nemusí byť len dočasný marketingový objekt. Keď je dobre napojená na dáta, keď má editorskú starostlivosť a keď sa o ňu niekto dlhodobo „stará“, vie prežiť a postupne sa stať súčasťou kultúrnej pamäti.

### Údržba je súčasť naratívu

Ak má výstavná mikrostránka prežiť, musí sa správať naraz ako publikácia aj ako produkt. Ako publikácia potrebuje editáciu, tón, štruktúru a archív. Ako produkt potrebuje infraštruktúru, údržbu, stabilné adresy a jasné vlastníctvo. Tate týmto smerom ukazuje veľmi praktickú cestu: mikrostránky netreba len tvoriť, ale aj archivovať ako záznamy, inak sa naratívna vrstva stratí tichšie než samotná výstava. [@tate_archiving_intermedia_microsite_2021]

Táto skúsenosť ukazuje ešte jednu vec: naratívna vrstva nemôže žiť iba na mikrostránkach. V expozícii sa číta inak — po útržkoch a v pohybe, s pozornosťou rozdelenou medzi dielo, priestor a ľudí okolo. Preto ďalšia podkapitola presúva dôraz z publikovania na situovanie: ako prepojiť fyzické miesto s digitálnym obsahom tak, aby fungoval aj v časovej logike návštevy.

## 6.4 Priestorový a časový kontext (spojenie fyzického a digitálneho)

> “‘Post-digital’ thus refers to a state in which the disruption brought upon by digital information technology has already occurred.” 
> [@Cramer2015, p. 17]

Cramer tým nepriamo pripomína jednu praktickú vec: prepojenie „digitálneho“ a „fyzického“ dnes často nie je špeciálny efekt, ale základná podmienka čitateľnosti. Návštevník má v ruke mobil, v priestore stojí pred dielom, a prirodzene očakáva, že medzi týmito dvoma režimami bude existovať most. Pre galériu to znamená posun v naratívnej práci: ak online zbierka trpí stratou kontextu, jednou z ciest je *situovaný storytelling* — naratív zakotvený v mieste a v prítomnosti, ktorý vzniká priamo „pri diele“, nie až pri domácom čítaní katalogizačného záznamu.

### Problém: ako urobiť z fyzickej návštevy vstup do digitálneho príbehu (bez toho, aby mobil „vyhral“ nad dielom)

Na rozdiel od čisto online naratívnych modulov (mikrostránky, longformy) má mobilný sprievodca v expozícii inú dynamiku pozornosti. V miestnosti už existuje silný „primárny obsah“ — samotné dielo. Digitálna vrstva má byť pomocná: má vedieť rýchlo doručiť kontext, spustiť drobný príbeh, ukázať vzťahy a nechať návštevníka vrátiť sa späť k pohľadu. To je špecifický typ časovania: namiesto lineárnej kapitoly pracujeme s krátkymi vstupmi, mikro-rozhodnutiami a s rytmom pohybu v priestore.

Preto je kľúčové nehľadať len „čo zobrazovať“, ale aj *ako* vyvolať digitálnu vrstvu tak, aby nebola rušivá. Inak povedané: ak má byť naratív situovaný, musí byť situované aj jeho ovládanie.

### Svetová referencia: MAK App ako vzor „jemného“ vstupu do vrstvy

Pri návrhu Atlasu SNG sa pre nás stala dôležitou referenciou *MAK LAB APP* (`lab.mak.at`), ktorá vznikla ako digitálne rozšírenie expozície *MAK Design Lab* vo Viedni [@mak2020press]. V práci venovanej prístupnosti múzeí v Rakúsku počas pandémie COVID-19 používa Karolina Duelli tento projekt ako príklad toho, ako sa „dvere múzea“ dajú aspoň čiastočne nahradiť digitálnym rozhraním: ambíciou aplikácie je „teach essential topics for shaping the future in times of digital modernity and climate change“ a jej obsah je použiteľný naprieč zariadeniami (mobil, tablet, laptop), teda aj mimo priamej návštevy [@duelli2021museums, p. 10]. Pandemický kontext je tu dôležitý z dvoch konkrétnych dôvodov. Po prvé, presun na *bring your own device* znižuje závislosť od zdieľaných dotykových kioskov v priestore (ktoré sa v čase hygienických obmedzení stávajú problematické). Po druhé, rozhranie, ktoré funguje aj „z domu“, vytvára kontinuitu kontaktu so zbierkou počas lockdownu a podporuje návrat k dielam po návšteve — napríklad cez uložené položky alebo cez „hru“ so systémom (v našom prípade sa neskôr ukázalo, že ľudia radi skúšajú zadávať kódy aj naslepo a hádať, aké dielo sa otvorí).

Pre náš kontext však nebol rozhodujúci tematický rámec obsahu, ale forma interakcie: *MAK LAB APP* pracuje s kurátorsky rámcovanými prechádzkami (*paths*), umožňuje vytvárať si vlastnú „kolekciu“ objektov a ponúka nezvykle účinný spôsob zadávania kódu (gesto pripomínajúce *pattern lock* na zamknutej obrazovke). Tento typ rozhrania zároveň dobre nadväzuje na tézu z 5. kapitoly: digitálna dostupnosť sa stala súčasťou základného štandardu sprístupňovania zbierok, ale sama osebe ešte nezaručuje porozumenie ani kvalitnú skúsenosť; je to skôr nové pozadie, v ktorom sa rieši orientácia, kontext a návratnosť pozornosti.

![MAK app (MAK Design Lab): príklad mobilného sprievodcu, ktorý kombinuje kurátorsky rámcované trasy (paths) s jednoduchým a neinvazívnym vstupom do obsahu.](figures/fig-6-4-mak-app.jpg){#fig:mak-app width=100%}

Dôležité je, že tento model nevyžaduje, aby návštevník pri diele „namieril“ telefón a pracoval s kamerou. Vstup do digitálnej vrstvy je rýchly, diskrétny a sociálne kompatibilný so skupinovou návštevou: kód je čitateľný pre viacerých ľudí naraz, takže si ho môžu paralelne zadať do vlastných zariadení bez toho, aby sa navzájom blokovali skenovaním (ako pri QR). Práve v tom sme videli prenositeľný princíp: nie kopírovanie konkrétnych funkcií, ale potvrdenie, že fyzické dielo môže mať nenápadný identifikátor, ktorý otvára priestorovo ukotvený detail bez vizuálne agresívneho značenia.

### Prax v lab.SNG: *Atlas SNG* ako post-digitálny sprievodca budovou

V roku 2022 sme dostali príležitosť navrhnúť mobilného sprievodcu pre novú budovu SNG: *Atlas SNG* (`https://atlas.sng.sk`). Cieľ bol od začiatku dvojitý:

1. prepojiť diela vo fyzickej expozícii s digitálnym obsahom tak, aby vstup bol rýchly a nerušil,
2. vytvoriť platformu pre nenútené „príbehové“ režimy návštevy — vrátane interaktívnych prechádzok typu *choose your own adventure*.

![Použitie v priestore: mobilný sprievodca má fungovať ako krátky „zásah do kontextu“, po ktorom sa pozornosť prirodzene vracia späť k dielu.](figures/fig-6-4-atlas-sng-in-situ.jpg){#fig:atlas-sng-in-situ width=90%}

Jadro návrhu bolo v modelovaní tempa a smeru. Návštevník si mal vedieť určiť vlastný rytmus: nie byť ťahaný lineárnym audio-guide scenárom, ale mať možnosť nechať sa „odprevadiť“ k dielam, ktoré dávajú zmysel v rámci témy, nálady alebo zvedavosti. Do digitálnej vrstvy sme preto pridávali videá s komentármi, možnosť ukladať si obľúbené diela a vracať sa k nim neskôr, a napokon aj hravý motív „pátračky“: mesačná téma, ku ktorej boli vybrané súvisiace diela — po ich nazbieraní sa odomkla odmena (káva/nápoj v kaviarni alebo zľava v kníhkupectve). Táto drobnosť je pre mňa dôležitá: digitálna vrstva sa tu neuzatvára sama do seba, ale cielene sa „vracia“ do fyzického sveta ako motivácia k pohybu a pozornosti.

::: {.aside}
**project card: Atlas SNG**

* *web:* `https://atlas.sng.sk`
* *open source:* `https://github.com/SlovakNationalGallery/atlas.sng.sk`
* *stack:* Vue.js + Web umenia API + doplnkové dáta (kódy, videá, „pátračka“)
* *redakčný workflow:* AirTable ako jednoduché CMS pre netechnických editorov (read/write roly, API napojenie)
* *vedenie projektu:* Michal Čudrnák
* *obsah:* Lukáš Štepanovský, Viera Kleinová, Michaela Kováčová, Romana Halgošová, Zuzana Koblišková, Karin Vicianová
* *dizajn:* Filip Ruisl
* *vývoj:* Igor Rjabinin, Mayo Horkovič, František Sebestyén, Rastislav Chynoranský, Ernest Walzel
:::

### Implementačná poznámka: fyzické ID ako most do API

Technicky je tento typ prepojenia dosť priamočiary: fyzický identifikátor (kód pri diele) sa mapuje na jednoznačný identifikátor diela a ten potom otvára digitálnu vrstvu cez API. Dôležitejšie než samotné API je však to, že vzniká „dvojvrstvový“ dátový model: základné metadáta a vizuálny obsah prichádzajú z Webu umenia, no situačné prvky (kód, video, tematické prechádzky, pátračky, odmeny) žijú v samostatnej edičnej vrstve. V Atlas SNG sme túto vrstvu vedome nebudovali ako vlastné CMS; použili sme AirTable, lebo umožňoval rýchlu správu obsahu ľuďmi mimo vývoja a zároveň sa dal čisto napojiť do aplikácie.

### Prečo „bodky“ (a čo sa ukázalo v praxi)

![Označenie diel pre vstup do digitálnej vrstvy: bodkový kód v Atlase SNG (vľavo) v porovnaní s typickým QR značením v expozícii (vpravo). Zdroj obrázkov: Atlas SNG [@sngAtlasPage]; QR príklad [@qrgatewaySelfGuidedTours].](figures/fig-6-4-codes-diptych.jpg){#fig:atlas-vs-qr width=100%}

::: {.aside}
**prečo bodky namiesto QR**

* QR je vizuálne výrazný a v expozícii často pôsobí rušivo.
* QR je ťažšie „paralelizovať“ v skupine: kód typicky skenuje jeden človek, kým bodkový kód vie celá skupina zadať naraz.
* v tlmenom svetle je skenovanie nepraktické a svetlo displeja býva rušivé pre okolie; zadanie kódu je diskrétnejšie.
* kód sa dá zapamätať a dopísať aj počas chôdze k ďalšiemu dielu (čo pri QR nefunguje).
* 3×3 mriežka dáva 2^9 možností (512; bez „prázdneho“ stavu 511). Keď kódy nie sú „spojité“ ťahy, vieme využiť všetky kombinácie.
:::

Táto voľba sa veľmi dobre overila aj produkčne. Pre označovanie diel stačil papierový „blueprint“ a kruhové nálepky; kódy sa dali vytvárať ad-hoc kýmkoľvek, bez špeciálneho hardvéru a bez zásahu do výstavnej grafiky. V testovaní sa objavili aj drobné, ale výrečné situácie: napríklad rodič ocenil, že keď dieťa odbehlo do vedľajšej miestnosti, stále vedel kód dokončiť „spamäti“ — presne ten typ časovej a priestorovej elasticity, ktorý v expozícii reálne nastáva.

::: {#fig:atlas-sng-flow .figure}
![](figures/fig-6-4-atlas-1-kod.jpg){width=49%} ![](figures/fig-6-4-atlas-2-detail.jpg){width=49%}

Ovládací „flow“ v Atlase SNG: zadanie bodkového kódu (vľavo) a detail diela s rozšíreným kontextom (karta autora, sprievodné video z inštalácie v expozícii a prepojenie na Web umenia) (vpravo).
:::


### Poučenie: nie všetky naratívne režimy prežijú realitu expozície

Zaujímavé je, že sa nám nepotvrdilo všetko, čo na papieri znelo dobre. Prechádzky sme časom z aplikácie odstránili a nevrátili. V praxi sa ukázali ako trochu nemotorné — a hlavne, v expozícii je často lepšie, keď sa návštevník pozerá na dielo a nie na displej. Naopak, kódy a návrat k uloženým dielam sa ukázali ako stabilné jadro: podporujú krátke vstupy do kontextu aj neskorší „after-visit“ návrat.

Ak to mám zhrnúť v pojmoch tejto kapitoly: priestorový kontext funguje vtedy, keď digitálna vrstva rešpektuje primát fyzickej skúsenosti. A časový kontext sa zlepšuje vtedy, keď aplikácia vytvára drobné momenty *temporal serendipity* — náhodných návratov, dopísaní, znovu-objavení — bez toho, aby návštevu násilne linearizovala.

## 6.5 Vizuálna podobnosť a AI: od filtrov k objavovaniu príbuznosti (od *facets* k *machine vision*)

Textové vyhľadávanie a kurátorské kategórie nás v online zbierkach držia v režime *viem, čo hľadám*: autor, názov, obdobie, technika, ikonografický motív. V praxi je to účinné, ale zároveň to zužuje pole možných objavov – najmä tam, kde je naratívna vrstva oslabená alebo úplne chýba. Ak je dielo v rozhraní redukované na reprodukciu + inventárne minimum, používateľ sa ťažko „zachytí“ o niečo, čo by ho viedlo ďalej. Jedna z ciest, ako znovu otvoriť priestor pre serendipitu, je doplniť textové indexy o vizuálne indexy: farbu, tvar, ornament, rytmus, kompozíciu – teda vlastnosti, ktoré sa v dejinách umenia bežne používajú pri formálnej analýze, ale v online rozhraniach sú často neprítomné.

V posledných rokoch sa tento prístup posúva od jednoduchých filtrov (*facets*) k strojovému videniu a vektorovým reprezentáciám obrazov: namiesto „nájdi červené“ sa pýtame „nájdi príbuzné“ – diela, ktoré sa podobajú spôsobom, ktorý nevieme dopredu pomenovať jedným slovom. V tejto podkapitole preto *faceting* a vizuálnu podobnosť zámerne rámujem ako vstupnú bránu k AI v múzeách: nie ako marketingové „AI features“, ale ako konkrétny mechanizmus, ktorý môže doplniť chýbajúci *wow moment* a obnoviť objavovanie v situáciách, kde samotné metadáta nestačia.

### Svetová referencia: Cooper Hewitt Labs (farba a tvar ako navigácia)

Dobrou „pred-AI“ referenciou sú experimenty Cooper Hewitt Labs, ktoré dlhodobo skúšajú, čo sa stane, keď sa zmení primárny index prehliadania zbierok. Namiesto tém a autorov ponúkli napríklad prehliadanie podľa farby (*browse by color*) [@cooperhewitt2013giv] a neskôr projekt *Dive into Color*, ktorý prepája farbu, farebné harmónie a čas [@vane2018_making_diveintocolor]. Paralelne vznikali aj pokusy o čítanie zbierky cez tvarové vlastnosti a „shape browsing“ [@ridge2012shape].

Podstatné je, že nejde o „dekoratívne filtre“. Je to zámerná zmena epistemického režimu rozhrania: farba a tvar sa stávajú legitímnou cestou, ako sa v zbierke orientovať aj bez predchádzajúceho kontextu. V prostredí galérie je to mimoriadne relevantné: návštevník často nevie pomenovať, čo ho pri diele zaujalo, ale vie to rozpoznať, keď to uvidí znova v inom objekte.

### AI ako urýchľovač serendipity – a zároveň zdroj nových rizík

Akonáhle sa podobnosť počíta algoritmicky, vstupuje do hry problém „čiernej skrinky“: model nerozhoduje neutrálne, ale podľa skúsenosti, ktorú získal z tréningových dát a z kategórií, ktoré do sveta vkladáme my. Crawford a Paglen to v *Excavating AI* formulujú priamo: tréningové datasety nie sú len „surovina“ pre algoritmy, ale aj politika – rozhodovanie o tom, čo obrázky znamenajú a akú sociálnu prácu tieto reprezentácie vykonávajú [@crawford2019excavating].

Pre múzeá je toto dvojnásob citlivé, pretože mnohé bežné modely strojového videnia stoja na datasetoch typu ImageNet a na architektúrach, ktoré z neho vyrástli (napr. *ResNet*) [@russakovsky2015ilsvrc; @he2016resnet]. Tieto datasety reprezentujú predovšetkým „súčasný svet“ a jeho kategórie – preto pri historických dielach vznikajú komické aj systematické omyly (svätožiary ako klobúky, anjeli ako vtáky) [@pilka2022digitalcurator, s. 90–93], ale dôležitejšie: vznikajú aj sociálne a demografické skreslenia, ktoré sa ukazujú napríklad pri komerčných klasifikátoroch pohlavia a farby pleti [@buolamwini2018gendershades]. V múzejnom kontexte sa tak „podobnosť“ nikdy nesmie tváriť ako objektívna pravda – je to návrh na objavovanie, ktorý musí byť čitateľne rámovaný, auditovateľný a v ideálnom prípade doplnený o vysvetlenie (prečo sa tieto dve veci stretli vedľa seba).

V literatúre o AI v múzeách sa opakovane objavuje aj druhý praktický problém: AI býva izolovaná do pilotov, ktoré nie sú prepojené s jadrom digitálnej infraštruktúry múzea a po skončení projektu zostane iba demo. Ako sektorová mapa a reflexia AI ukazujú, udržateľnosť často naráža na kapacity, dátovú pripravenosť a na to, či má inštitúcia zadefinované, čo vlastne chce AI dosiahnuť (výskum? prístupnosť? objavovanie? interné procesy?) [@thiel2023aiinmuseums]. Súvisiaci prúd kritiky „black-box“ kultúry v digitálnych nástrojoch (aj v kultúrnej pamäti) zdôrazňuje potrebu dokumentovať rozhodnutia, zviditeľňovať skryté predpoklady a navrhovať rozhrania tak, aby používateľ vedel, kedy ide o fakt a kedy o strojový odhad [@cernaSkrinka2022blackbox].

### Kurátorský protipól: *Digital Curator* – keď AI vytvára zmysluplné „konštelácie“

::: {.aside}
**project card: Digital Curator**

* *názov:* Digital Curator
* *URL:* <https://digitalcurator.art>
* *autor:* Lukáš Pilka
* *koncept:* kurátorsky rámované „konštelácie“ a kolekcie generované z klasifikácie a vizuálnych/tematických vzťahov medzi dielami
* *zmysel pre túto kapitolu:* ukážka, že AI môže byť použiteľná tam, kde je jasný kurátorský rámec (čo sa meria, čo je „podobnosť“, ako sa to zobrazuje) – a nie iba ako izolovaný pilot
* *vzťah k SNG:* otvorenosť dát umožnila zahrnutie diel SNG do experimentu; projekt sa stal aj praktickým kontaktným bodom pre spoluprácu
:::

Na opačnom póle „samoúčelnej AI“ stojí projekt *Digital Curator* Lukáša Pilku, ktorý ukazuje, že pri dobre zvolenom rámci môže automatická analýza vytvárať prekvapivo presvedčivé vizuálne a symbolické konštelácie naprieč zbierkami – nie ako autoritatívna interpretácia, ale ako nástroj na kurátorské kladenie otázok a generovanie nových ciest čítania [@pilka2022digitalcurator; @pilkaDigitalCuratorSite; @thiel2023aiinmuseums]. Pre mňa je na tomto projekte podstatné najmä to, že „kurátorovanie“ sa tu nedeje magicky v modeli, ale v dizajne celého systému: v tom, čo sa meria, ako sa to vizualizuje a aké typy spojení sa používateľovi ponúknu.

Zároveň je pre SNG dôležité aj praktické prepojenie: otvorenosť dát umožnila, že vybrané diela zo zbierok SNG sa mohli stať súčasťou experimentu, a teda aj súčasťou širšieho stredoeurópskeho vizuálneho priestoru, v ktorom sa historické vplyvy a motivické migrácie často ukážu zreteľnejšie než v izolovaných národných databázach.

::: {#fig:digitalcurator-diptych .figure}
![](figures/fig-6-5-digitalcurator-1.jpg){width=49%}
![](figures/fig-6-5-digitalcurator-2.jpg){width=49%}

Digital Curator: (vľavo) naratívne rámovanie „cestovania“ diel medzi zbierkami; (vpravo) využitie počítačového videnia a (vlastných) modelov na detekciu ikonografických motívov ako podklad pre generovanie kurátorských konštelácií [@pilkaDigitalCuratorSite].
:::

### Lokálna línia: *Ornament Explorer* (MK&G Hamburg) – podobnosť ako „gesto prechádzky“ v expozícii

::: {.aside}
**project card: Ornament Explorer**

* *názov:* Ornament Explorer
* *URL:* <http://ornament-explorer.mkg-hamburg.de>
* *repozitár (open source):* <https://github.com/igor-kamil/mkg-ornament>
* *inštitúcia / kontext:* MK&G Hamburg, NEO Lab; nadväzuje na prototyp *Objektforscher* (Data Exploration Sprint)
* *vznik / nasadenie:* prototyp → nasadenie v expozícii *Ornament: Exemplary Beauty* (dotykový displej v priestore)
* *cieľ:* hravé a intuitívne objavovanie ~12 000 objektov súvisiacich s ornamentom cez vizuálnu podobnosť a tematické skupiny
* *tím (research & development):* Michal Čudrnák, Igor Rjabinin, Philo van Kemenade, František Sebestyén
* *technológie:* Laravel; Python; Weaviate (vektorová databáza / similarity search)
* *interakčný model:* horizontálne „podľa podobnosti“ (vektorový priestor), vertikálne „podľa času“ (metadáta)
* *výstup pre používateľa:* prekvapivé príbuznosti ornamentu naprieč storočiami, materiálmi a typmi objektov
:::

Priamo k téme vizuálnej podobnosti sa viaže aj môj projekt *Ornament Explorer* (vznikol z prototypu *Objektforscher* v rámci *Data Exploration Sprint* v MK&G Hamburg) [@mkgNeoLab; @cudrnak2023medium]. V expozícii *Ornament: Exemplary Beauty* bolo sprístupnených viac než 12 000 objektov súvisiacich s ornamentom; rozhranie pritom stojí na jednoduchej, telesne čitateľnej navigácii: horizontálne sa pohybujeme „podľa podobnosti“ (AI), vertikálne „podľa času“ (metadáta) [@mkgOrnamentExhibition; @mkgExploreAI]. Výsledkom sú situácie, ktoré by klasické vyhľadávanie často nevyrobilo: rovnaké alebo príbuzné ornamentálne riešenie sa objaví naprieč storočiami, materiálmi a typmi objektov – a práve tento preskok (z „tohto“ do „príbuzného“) vytvára objavný moment.

![Ornament Explorer v expozícii MK\&G Hamburg: vizuálna podobnosť sa používa ako horizontálna navigácia (AI), čas a metadáta ako vertikálna os.](figures/fig-6-5-ornament-explorer-in-situ.jpg){#fig:ornament-explorer-in-situ width=100%}

![Ukážka rozhrania Ornament Explorer: prehliadanie „príbuzných“ objektov bez potreby poznať správne termíny alebo ikonografiu.](figures/fig-6-5-ornament-explorer-ui.png){#fig:ornament-explorer-ui width=100%}

### Implementation note: od *img2vec* k *CLIP* a vektorovej databáze

Technicky sa podobné systémy dnes typicky skladajú z troch krokov:

1. *Vizuálne embeddingy*: obraz sa transformuje na vektor (napr. cez CNN typu *ResNet* [@he2016resnet] alebo cez multimodálny model *CLIP*, ktorý umožňuje pracovať aj s textovo-obrazovými väzbami [@radford2021clip]).
2. *Indexovanie a vyhľadávanie vektorov*: nad embeddingami sa používa vektorové vyhľadávanie (v našom prípade Weaviate), ktoré vie vrátiť najbližších susedov v priestore podobnosti.
3. *Prepojenie s metadátami*: vizuálny návrh (podobnosť) sa kombinuje s „tvrdými“ údajmi (čas, materiál, autor, taxonómie) – aby používateľ mohol objavovať, ale aj interpretovať.

Kľúčové je, že tento mechanizmus sa dá chápať ako rozšírenie kurátorského aparátu, nie ako jeho náhrada. Model ponúka spojenia; zmysel im dáva až používateľ v kontexte, ktorý mu rozhranie sprostredkuje.

### Reflexia: od „hľadania rovnakého“ k „hľadaniu príbuzného“

Pre tému straty naratívnej vrstvy je vizuálna podobnosť užitočná práve tým, že nevyžaduje, aby bol príbeh dopísaný vopred. Je to generátor možností: namiesto jedného správneho čítania ponúka pole príbuzností, ktoré sa dajú následne kurátorsky pomenovať, komentovať alebo nechať otvorené. Zároveň však prináša novú povinnosť: pomenovať hranice algoritmu, priznať jeho skreslenia a nenechať ho tváriť sa ako „neutrálny zrak“ [@crawford2019excavating; @buolamwini2018gendershades].

Tu sa podľa mňa priamo stretáva táto podkapitola s tézami z kapitoly 5: ak online zbierky strácajú *wow moment* tým, že z diel robia izolované záznamy bez situovania, potom vizuálna podobnosť je jeden z mechanizmov, ktorý vie vytvoriť „nové situovanie“ – nie cez lineárny príbeh, ale cez sieť príbuzností. Otázka, ktorú si tu kladiem (a ktorú by som v ďalšej kapitole už testoval experimentom), znie: *kedy sa podobnosť stáva zmysluplnou skúsenosťou a kedy len nekonečným scrollom?* A čo musí urobiť rozhranie, aby človeka viedlo späť k dielu – nie preč od neho.

## 6.6 Záver: Odbočky, ktoré zlepšujú jadro

Výber príkladov v tejto kapitole bol nevyhnutne selektívny. V praxi lab.SNG existujú desiatky realizácií a je pravdepodobné, že iní kolegovia by ako ilustratívne zvolili odlišné projekty – už len podľa toho, či by kládli dôraz na výstavný formát, edukáciu, archiváciu alebo experiment. Aj pri skladaní materiálu bolo cítiť napätie medzi tým, čo všetko by „znieslo viac priestoru“, a tým, čo by už čitateľa unavilo. Každá z tém by sa dala rozvinúť do samostatnej kapitoly; tu však mali zostať v režime praktického *handbooku* – ako mapa možností, nie encyklopédia.

Kapitola môže miestami pôsobiť ako kritika „online databázy“. V skutočnosti je to skôr kritika redukcie zbierky na databázový režim používania. Viaceré opísané zásahy vznikli práve preto, že databázový základ bol stabilný a dôveryhodný: dáta mali jednotné identifikátory, metadáta boli spravované v jednom systéme a reprodukcie mali konzistentnú kvalitu. To, čo sa menilo, bol spôsob sprostredkovania – od statického prehliadania k situačnému čítaniu, od izolovaných objektov k vzťahom, od predvídateľných vstupov k prekvapeniu.

Práve tu sa ukazuje praktická výhoda *in-house* vývoja. Know-how zostáva v inštitúcii a aj jednorazové či úzko tematické aplikácie môžu slúžiť ako testovacie polia pre jazyk rozhraní, komponenty a pracovné postupy. V SNG sa tento prístup postupne ustálil aj ako spôsob skladania z opakovane použiteľných stavebných blokov: odbočky a prototypy sa neberú ako „odpad“ popri hlavnom produkte, ale ako spätná väzba, ktorá pomáha vyladiť nosné platformy a zároveň učí tím recyklovať technológie, moduly a rozhodnutia.

Zároveň má kapitola ešte jednu, praktickú rovinu: väčšina uvedených riešení nie je len opísaná, ale aj zdieľaná. Pri každom projekte uvádzam odkaz na repozitár; projekty sú publikované ako open source pod MIT licenciou, takže čitateľ sa môže pozrieť „pod kapotu“, overiť konkrétne implementačné rozhodnutia, alebo si riešenie lokálne vyskúšať a adaptovať. V tomto zmysle kapitola nie je iba retrospektívou, ale aj pozvánkou k recyklácii postupov a k zdieľaniu infraštruktúr v komunite GLAM – v duchu princípu *sharing is caring* [@sanderhoff_sharing_caring_openness_2014].

Napokon je dôležité priznať aj osobnejšiu motiváciu, ktorá v tejto kapitole postupne vystupuje na povrch: skúsenosť s *Ornament Explorerom* a práca s vizuálnou podobnosťou cez AI ostali pre mňa podnetné aj po tom, čo spolupráca s MK&G formálne skončila. Fascinácia „prekvapivými príbuznosťami“ vo vektorovom priestore – a otázka, ako z nich spraviť zmysluplnú skúsenosť – sa stala priamym východiskom pre experiment *Atlas Re/mix* v nasledujúcej kapitole. Tá už ide o krok ďalej: namiesto utilitárnej aplikácie pod hlavičkou inštitúcie otvára tému remixu a opätovného použitia zdigitalizovaných diel vo vlastnej tvorivej praxi. Inými slovami, ak kapitola 6 mapovala spôsoby, ako obnoviť naratív a serendipitu v rámci sprostredkovania zbierok, kapitola 7 skúša, čo sa stane, keď sa digitálne dielo prestane správať iba ako „záznam v databáze“ a začne fungovať ako materiál.
