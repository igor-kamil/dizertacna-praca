# 7. Atlas Re/mix — od digitálnej zbierky k tvorivému nástroju

## Preface

> “Never to get lost is not to live.
> Somewhere in the terra incognita in between lies a life of discovery.”
> — Rebecca Solnit, *A Field Guide to Getting Lost* [@solnit2006; @marginalian2014]

![Pop-up testovanie Atlas re/mix v Hajovni (Banská Štiavnica, 25. 1. 2026): základné pracovisko a miesto interakcie.](figures/fig-7-0-hajovna-popup-installation-table.jpg){#fig:hajovna-table width=80%}

Táto kapitola je praktickou odpoveďou na problém, ktorý v práci opisujem ako stratu naratívnej vrstvy v online zbierkach. Namiesto dopĺňania ďalších textov skúšam zmeniť samotný vstup do zbierky. Návštevník nezačína tým, že vie, čo hľadá. Začína tým, čo práve žije: prinesie do systému svoju situáciu vo forme fotografie alebo nájdeného predmetu. Z toho potom vzniká diptych a krátke pomenovanie spojiva.

Do návrhu inštalácie v Prüger-Wallnerovej záhrade chcem vložiť ešte jeden dôležitý moment: zmenu tempa. Hneď pri vstupe do záhrady má návštevník dostať výzvu, aby spomalil a prešiel do režimu potulovania sa. Nie presun z bodu A do bodu B, ale krátka prechádzka, v ktorej si človek môže všimnúť detail, ktorý ho zastaví. Tento detail (predmet, stopa, textúra, farba) sa potom stáva vstupom do zbierky.

> Aside: *flâneur*, *flânerie*
> *Flâneur* je postava človeka, ktorý sa pohybuje bez pevného cieľa a všíma si drobnosti, rytmus a náhody. *Flânerie* je tento spôsob chôdze a vnímania. V kontexte Atlas re/mix ide o pracovnú metódu: spomaliť, nechať sa viesť zaujímavým detailom a až potom vstúpiť do zbierky.

Praktickú časť rámujem tromi výskumnými otázkami. Pomáhajú mi udržať smer, aby z prototypu nevznikla len funkčná aplikácia, ale argument, ktorý sa dá obhájiť v rámci práce.

1. Ako sa dá vstúpiť do online zbierky inak než cez vyhľadávanie, filtre a katalógové poradie?
   Atlas re/mix odpovedá rozhraním, ktoré začína osobným vstupom (fotografia z prostredia) a pokračuje výberom z ponúkaných spojení podľa vizuálnej podobnosti. Navigácia cez kategórie sa tu posúva do úzadia. Do popredia ide rozhodnutie používateľa.

2. Môže takýto vstup podporiť vznik významu, ktorý aspoň čiastočne nahrádza chýbajúcu naratívnu vrstvu?
   Nesledujem, či systém „správne“ odporúča diela. Zaujíma ma, či sa pri výbere diptychu objaví spojivo, ktoré je pre používateľa čitateľné a osobné, a či sa význam rodí už z podobnosti alebo až v momente, keď človek spojenie pomenuje.

3. Má tento prístup hodnotu ako nástroj objavovania, teda ako spôsob, ako naraziť na dielo, ku ktorému by sa návštevník inak nedostal?
   Túto otázku viažem na serendipitu a na „prelomenie“ predvídateľných ciest v zbierke. Zaujíma ma, či návštevník vníma výsledok ako objav, a či by sa k nemu bežným spôsobom vôbec dostal.

Kapitola pracuje s dvoma stavmi projektu, ktoré od seba jasne odlišujem. Prvým je demoverzia rozhrania a jej krátke testovanie v pop-up situácii (Hájovňa, Banská Štiavnica, 25. 1. 2026). Druhým je návrh fyzickej inštalácie plánovanej na jún 2026. V texte preto striedam opis toho, čo už viem ukázať na prototype, a návrh toho, čo sa ešte len materializuje v priestore. Súčasťou plánovanej inštalácie je aj zvuková vrstva: ku každému diptychu má vzniknúť jednoduchý zvukový priestor, poskladaný z terénnych nahrávok z Prüger-Wallnerovej záhrady (zvukový rámec pripravuje Jonatán Pastirčák). Podrobnejšie sa jej venujem v časti o výstavnom dizajne.

## 7.1 Koncepčný rámec: význam medzi obrazmi

> “With the picture atlas *Mnemosyne*, Warburg created an «iconology of intervals» where meaning arose in-between the images.”
> — Simen Joachim Helsvig, *Kunstkritikk* (2015) [@kunstkritikk2015]

Atlas re/mix vznikol z potreby nájsť iný spôsob, ako vstúpiť do online zbierky. Bežné rozhrania nás vedú cez vyhľadávanie, filtre a katalógové poradie. Keď vieme, čo hľadáme, funguje to dobre. Keď však chceme skôr objavovať než verifikovať, rýchlo narazíme na limity: rozhranie nás vracia k tým istým typom ciest a rozhodnutí. Zbierka môže byť veľká, ale spôsob vstupu býva úzky.

Warburgova predstava „ikonológie intervalov“ je pre tento projekt dôležitá práve tým, že presúva pozornosť z jednotlivého obrazu na vzťah medzi obrazmi. Neberiem ju ako historický návod na výklad. Beriem ju ako pracovný princíp: zmysel sa môže objaviť v medzere medzi dvoma obrazmi, keď ich vedome položíme vedľa seba. Atlas re/mix preto nie je nástroj na „nájdenie správneho diela“, ale na návrh dvojíc. Dielo sa v ňom nestáva cieľom vyhľadávania, ale partnerom vo vzťahu, ktorý treba potvrdiť alebo odmietnuť.

Hlavná otázka projektu je jednoduchá: môže vyhľadávanie podľa vizuálnej podobnosti otvoriť taký typ objavu, ktorý nie je len formálnou zhodou, ale spustí interpretáciu? V praxi ma zaujíma chvíľa, keď sa z návrhu systému stane osobné „áno, toto spolu drží“. Niekedy k tomu vedie farba alebo tvar. Niekedy nálada. Často však rozhoduje situácia používateľa, ktorá je prítomná vo vstupnej fotke: miesto, deň, práca, drobný nález. V takom momente podobnosť nie je cieľ. Je to prvý impulz. To podstatné sa deje až potom, keď si človek začne spojenie vysvetľovať a pomenúvať.

![Diptych zo skúšobnej prevádzky: stopy veveričky v snehu a štúdia psa.](figures/fig-7-1-atlas-remix-diptych-stopa-pritomnost.png){#fig:diptych-stopa width=80%}

Tu sa prirodzene otvára aj otázka, ktorá sa pri montáži a *remixe* objavuje často: či skladanie existujúcich diel vytvára „nové dielo“, alebo skôr nový spôsob čítania. V rámci Atlas re/mix sa prikláňam k druhej možnosti. Diptych chápem ako dočasnú používateľskú interpretáciu. Je to gesto a stopa skúsenosti, nie náhrada originálu. Zároveň tu vzniká autorský moment: používateľ rozhoduje, čo prijme, a jednou vetou určuje, v čom spojenie spočíva. Význam teda nevzniká v algoritme, ale v kombinácii návrhu systému a interpretácie človeka. Neskôr sa k tomu vrátim v častiach o kurátorskom rámci a o tom, ako sa dá „interval“ udržať aj vo fyzickej inštalácii.

Projekt stojí na existujúcej infraštruktúre. Atlas re/mix je experimentálne rozhranie nad dátami z Webu umenia (webumenia.sk). [@webumeniaSite] V demoverzii pracujem so zúženým korpusom, aby bol objav čitateľný aj pri krátkom kontakte a aby sa dalo lepšie sledovať, čo spúšťa „fungujúce“ spojenia. Zároveň je to pragmatické rozhodnutie: prototypovanie podobnostného vyhľadávania je citlivé na kvalitu reprodukcií, na konzistenciu dát a na spôsob, akým sa diela do systému načítajú. Web umenia poskytuje aj otvorený vývojový kontext, na ktorý sa dá tento experiment technicky napojiť. [@webumenia_elasticsearch_public_api_wiki_2020]

Dôležitá je aj časová rovina. V čase písania kapitoly existuje funkčná demoverzia a prebieha jej testovanie; fyzická inštalácia je plánovaná na jún 2026. Text preto pracuje s dvoma stavmi projektu naraz: opisuje to, čo je overené na prototype, a zároveň pomenúva, čo sa ešte len navrhne a otestuje v priestore. Tento „rozostavaný“ stav nepovažujem za slabinu, ale za súčasť prístupu *research through design*: prototyp je nástroj, ktorý mi umožňuje zachytiť a pomenovať moment objavu skôr, než sa z projektu stane hotová výstava.

## 7.2 Dizajn interakcie: od situácie k diptychu

Demoverziu Atlas re/mix som pripravil ako overenie dvoch vecí naraz. Prvou bola technická stránka podobnostného vyhľadávania: po skúsenosti s projektom *ornament-explorer* som mal dôveru v princíp, ale nevedel som, aké výsledky bude dávať na reprodukciách z Webu umenia. Druhou bola interakcia: či sa dá z osobného vstupu (fotografia alebo nájdený predmet) spraviť jasný a opakovateľný proces, ktorý vedie k diptychu a krátkemu pomenovaniu spojiva.

### Testovacia sada: Edmund Gwerk

Keďže prototyp vznikal v Banskej Štiavnici, zvolil som zámerne obmedzený korpus diel, ktorý je pre miesto prirodzene „lokálny“ a zároveň zvládnuteľný na rýchle testovanie. V demoverzii som pracoval s dielami Edmunda Gwerka (1895–1956), maliara, reštaurátora a historika umenia, ktorý pôsobil aj v Banskej Štiavnici. [@webumeniaGwerk3433] Prakticky to znamenalo, že systém nehľadal naprieč celým Webom umenia, ale iba v jednej autorskej sade (v čase prototypovania som mal k dispozícii 188 položiek s reprodukciou v mojej pracovnej sade).

Poznámka: v Štiavnici je živá aj pamäť na jeho manželku, literárnu historičku a prekladateľku Alžbetu Göllnerovú-Gwerkovú. [@gruskova_tichy_pobyt_na_2022]

### Vstup: koláž na stole alebo „posledná fotka“

Návštevníci pop-up testovania v Hajovni mali dve možnosti, ako do systému vložiť svoj vstup:

1. koláž alebo objekt na osvetlenom stole (pripravené predmety v interiéri),
2. vlastná fotografia z telefónu.

Keďže vonku bol lejak a nebolo reálne zbierať predmety v okolí, v praxi prevládala druhá možnosť. Inštrukcia bola zámerne jednoduchá: vyber jednu z posledných (nedávnych) fotiek v telefóne, ideálne z toho istého dňa. Fotku mi návštevníci poslali cez AirDrop alebo WhatsApp a ja som ju nahral do aplikácie. Tento „ručný“ krok beriem ako dočasné riešenie typické pre prototypovanie: v tejto fáze bolo dôležitejšie otestovať princíp vstupu a kvalitu návrhov než vybudovať hotový kanál na odosielanie.

### Krokový priebeh v rozhraní

Interakcia je navrhnutá tak, aby mala jasné rozhodovacie miesto a jasný výstup:

1. používateľ vloží vstupný obraz (nahratie fotografie alebo zachytenie objektu),
2. po kliknutí na tlačidlo *Search this image* systém vyhľadá vizuálne podobné diela v zvolenom korpuse,
3. používateľ prechádza kandidátov cez *Prev/Next* a hľadá dvojicu, ktorá mu dáva zmysel,
4. ak nájde *match*, uloží diptych, vyberie 1–3 dôvody „prečo to sedí“ a (voliteľne) doplní jednu vetu.

Rozhranie tým drží jasné rozdelenie rolí: systém navrhuje kandidátov, človek rozhoduje, či vznikol diptych.

![Demoverzia Atlas re/mix: vstupný obraz, návrh kandidáta a krok „prečo to sedí“ (tagy + jedna veta).](figures/fig-7-2-atlas-remix-ui-search-save.png){#fig:atlas-remix-ui width=100%}

V praxi bolo dôležité, aby sa odporúčané diela príliš neopakovali. Keďže vstupy návštevníkov mali podobné motívy (sneh, ruky, uhlie, stôl), hrozilo, že systém bude ukazovať stále tie isté diela. Preto som do demoverzie doplnil jednoduchý mechanizmus „negatívneho hodnotenia“: diela, ktoré boli zobrazené nedávno, sa dočasne znevýhodnili. Tento zásah cielene zvyšoval variabilitu a podporoval serendipitu, zároveň však menil poradie odporúčaní spôsobom, ktorý nie je pre používateľa úplne transparentný. V ďalších iteráciách preto budem musieť rozhodnúť, či a ako tento mechanizmus sprístupniť (napr. ako voľbu režimu alebo ako stručné vysvetlenie v rozhraní).

### Používateľská situácia a asistencia

Počas testovania som bol pri interakcii prítomný ako facilitátor a pomáhal som s nahraním vstupnej fotky. Z hľadiska dizajnu je to opäť dočasná podmienka prototypu. Zároveň to ukazuje, čo musí byť v ďalšej verzii vyriešené tak, aby rozhranie fungovalo samostatne: spôsob získania vstupného obrazu bez asistencie a bez „technického medzi-kroku“, ktorý narúša plynulosť zážitku.

![Použitie demoverzie v pop-up situácii: návštevník pracuje s návrhmi kandidátov a rozhoduje o diptychu.](figures/fig-7-2-hajovna-user-interaction.jpg){#fig:hajovna-user-interaction width=80%}

### 7.3 Technologická realizácia demoverzie

V časti 7.2 som popísal, ako interakciu vidí návštevník. Tu rozoberám technologickú realizáciu demoverzie: ako som pripravil dáta, ako vznikajú embeddingy, ako prebieha podobnostné vyhľadávanie a prečo som pri tomto prototype prešiel z Weaviate na PostgreSQL + pgvector. Dôležitá podmienka bola prevádzka bez internetu. Pri pop-up testovaní som nemohol rátať so stabilným pripojením, preto aplikácia bežala úplne offline a všetky dáta aj index boli pripravené vopred.

<!--![Making-of demoverzie Atlas re/mix počas vývoja v Banskej Štiavnici.](figures/fig-7-3-making-of-prototype-banska-stiavnica.jpg){#fig:atlas-remix-making-of width=90%}-->

::: {.aside}
**technologická karta demoverzie (verzia 25. 1. 2026)

> backend: Laravel (PHP)
> frontend: Livewire
> prevádzka: offline (lokálny server + lokálna databáza)
> dáta: Web umenia stiahnuté vopred (reprodukcie + metadáta) [@webumeniaSite]
> embedding: CLIP, dávkovo vypočítané pre korpus; embedding vstupu počítaný v Pythone volanom z Laravelu
> index: PostgreSQL + pgvector
> výstup: top-*k* kandidátov zoradených podľa podobnosti + uloženie zvoleného diptychu a krátke odôvodnenie

:::

#### Dáta a offline režim

Aby rozhranie fungovalo bez pripojenia, dáta som pripravoval v dvoch krokoch. Najprv som si cez API/Web umenia stiahol metadáta a reprodukcie pre zvolený korpus (v demoverzii Edmund Gwerk; dôvody výberu sú v 7.2). Následne som nad lokálnou sadou vypočítal embeddingy a uložil ich do databázy. V čase použitia teda aplikácia nič nesťahovala. Pracovala s lokálnymi súbormi a lokálnou databázou.

Tento prístup bol dôležitý aj z hľadiska stability interakcie. Keď návštevník klikne *Search this image*, očakáva okamžitú odozvu. Offline prevádzka zároveň vylučuje „tiché zlyhania“, ktoré sú pri výstavných podmienkach bežné: pomalé Wi-Fi, výpadok API, obmedzené pokrytie.

#### Embeddingy: CLIP a výpočet vstupu

Z predchádzajúcich prototypov som mal skúsenosť s embeddingmi typu img2vec (v zásade „features“ z modelu trénovaného na klasifikáciu). V Atlas re/mix som prešiel na CLIP, pretože lepšie drží podobnosť aj pri vstupoch, ktoré nie sú len ornament alebo textúra, ale situácia: priestor, predmety, postavy, kombinácie farieb, povrchov a kompozície. Pri dielach z Webu umenia mi CLIP dával presvedčivejšie párovania, aspoň v tom zmysle, že návštevníci ich častejšie vedeli obhájiť jednou vetou.

Embeddingy diel som počítal dávkovo v Pythone a uložil do databázy. Pri vyhľadávaní sa počíta iba embedding vstupu. Aj ten sa počíta v Pythone: Laravel zavolá lokálny skript, odovzdá cestu k nahranej fotografii a dostane späť vektor. Tým sa výpočtovo náročná časť drží mimo webovej vrstvy a webová aplikácia zostáva jednoduchá: rieši upload, UI stav a následný dotaz do vektorového indexu.

#### Index a vyhľadávanie: PostgreSQL + pgvector

V *ornament-explorer* (pozri kapitolu 6) som používal Weaviate, ktorý je veľmi pohodlný ako hotový vektorový engine. V Atlas re/mix som však chcel mať v tejto fáze všetko v jednom balíku, ktorý viem spustiť lokálne bez ďalších služieb. Preto som zvolil PostgreSQL a rozšírenie pgvector. Získal som tým dve praktické výhody: jednoduchú prevádzku v offline režime a možnosť ukladať na jednom mieste aj „aplikačné“ dáta (uložené diptychy, tagy, poznámky) aj samotný vektorový index.

V databáze to znamenalo udržiavať tabuľku diel, tabuľku embeddingov (pre konkrétny model) a tabuľku uložených diptychov. Vyhľadávanie potom vyzerá ako jeden dotaz: „nájdi top-*k* najbližších vektorov k vektoru vstupu“. Rozhranie z toho následne zobrazí kandidátov v poradí podobnosti a používateľ sa medzi nimi pohybuje cez *Prev/Next*.

V demoverzii som doplnil aj jednoduché znevýhodnenie nedávno zobrazených diel, aby sa odporúčania pri podobných vstupoch príliš neopakovali. Tento zásah zvyšoval variabilitu a podporoval objavovanie, ale zároveň upravoval poradie návrhov spôsobom, ktorý nie je pre návštevníka viditeľný. V ďalšej iterácii preto rátam s tým, že to bude treba riešiť transparentnejšie (napríklad ako režim alebo jasne pomenované pravidlo).

#### Kde končí algoritmus a začína interpretácia

Technológia v Atlas re/mix nie je navrhnutá tak, aby „určila význam“. Jej úloha je navrhnúť susedstvá, ktoré by sa bez podobnostného vyhľadávania pravdepodobne neobjavili. Zmysel sa v projekte rodí až v ďalšom kroku: keď človek vyberie jeden kandidát a pomenuje spojivo. Preto je pre mňa dôležitejšie, že systém vráti viac možností, než to, že jedna z nich je „najpresnejšia“. Z hľadiska práce je potom jadrom vyhodnotenia nie presnosť algoritmu, ale to, či a ako návštevníci dokážu návrh prijať ako diptych, ktorý dáva zmysel. K zberu týchto odôvodnení a k prvým pozorovaniam sa vraciam v časti 7.5.

### 7.4 Pop-up test v Hajovni a prvé pozorovania z demoverzie (25. 1. 2026)

Demoverziu Atlas re/mix som prvýkrát nasadil v pop-up situácii v kultúrnom centre Hajovňa v Banskej Štiavnici (25. 1. 2026). Cieľom nebolo spraviť reprezentatívny používateľský výskum, ale overiť, či je navrhnutý spôsob vstupu do zbierky v praxi zrozumiteľný a či vedie k momentu objavu: k situácii, keď sa z návrhu systému stane osobné „toto spolu drží“.

Podmienky boli improvizačné a do veľkej miery určovali aj priebeh testu. Počas dňa pršalo, takže zber predmetov v exteriéri (flâneursky režim a nález v okolí) sa dal realizovať len obmedzene. Osvetlený stôl s objektmi bol k dispozícii, ale v praxi sa častejšie využívala možnosť pracovať s fotografiou z telefónu. Inštrukcia bola zámerne jednoduchá: vybrať jednu z posledných alebo nedávnych fotiek, ideálne z toho istého dňa. Fotku účastníci posielali cez AirDrop alebo WhatsApp a ja som ju nahrával do aplikácie (offline režim bol nutný kvôli nestabilnému pripojeniu; dáta aj embeddingy boli pripravené vopred).

Vzorka bola malá: vzniklo 18 uložených diptychov od 14 ľudí. Tento rozsah nepovažujem za slabinu, pokiaľ zostanem pri tom, čo sa z neho dá poctivo vyčítať: základné typy asociácií, praktické limity rozhrania a prvé indikácie, či rozhranie podporuje objavovanie inak než bežný katalóg.

#### Čo sa zaznamenávalo (stručný protokol)

Po uložení diptychu som zbieral krátku odozvu cez jednoduchý dotazník. V tejto fáze mi išlo o minimum údajov, ktoré pomôžu interpretovať vzniknuté diptychy bez toho, aby som zbieral citlivé osobné dáta. Záznam bol anonymizovaný cez kód/iniciály.

Dotazník obsahoval tieto položky:

* ID / iniciály
* vekové rozpätie
* vzťah k umeniu (laik, študent, pro)
* digitálna istota (low, medium, high)
* počet diptychov (1 alebo 2)
* úroveň asistencie (0–3)
* dôvody výberu (1–3 tagy: farba, tvar, textúra, nálada, motív, kontrast, spomienka, miesto, práca, iné)
* serendipita (áno/nie + krátky opis)
* význam (krátky text)
* čo zlepšiť (krátky text)
* odkaz/ID páru (interný link)
* znalosť webumenia.sk (áno/nie)

Poznámka k etike: účastníci neboli evidovaní menom a všetky záznamy používam iba v agregovanej alebo anonymizovanej podobe (kódy P01, P02…).

#### Čo sa ukázalo v praxi (prvé pozorovania)

Aj pri malej vzorke bolo vidieť, že „fungujúce“ diptychy sa nerodia iba z vizuálnej podobnosti v úzkom zmysle. Často sa opierajú o jeden dominantný prvok (farba, tvar, textúra), ale význam vzniká až vtedy, keď sa k tomu pripojí situácia návštevníka (konkrétny predmet, práca, počasie, nálada dňa). Inak povedané: podobnosť je spúšťač, nie cieľ.

Nasledujúce príklady nečítam ako výklad Gwerka, ale ako ukážky typov spojenia, ktoré sa v demoverzii objavili.

Najprv príklad, kde sa spojenie opiera o motív a pocit prítomnosti (stopa ako znak niekoho, kto tu bol):

![Diptych zo skúšobnej prevádzky: stopa v snehu a štúdia psa. Spojivo je motív stopy a pocit prítomnosti.](figures/fig-7-1-atlas-remix-diptych-stopa-pritomnost.png){#fig:diptych-stopa width=80%}

Druhý príklad ukazuje situačný most „práca“ a telesný detail (rukavica, špina, materiál). Tu nejde len o farbu, ale o to, že vstupný obraz nesie kontext dňa a činnosti:

![Diptych: žltá rukavica z dielne a dielo Edmunda Gwerka. Spojivo je práca, materiál a „tón dňa“, nie iba farba.](figures/fig-7-4-atlas-remix-diptych-rukavica-praca.png){#fig:diptych-rukavica width=80%}

Tretí príklad pracuje s tónom a atmosférou (svetlo, sezónnosť, ticho). Takéto spojenia sú pre mňa dôležité, lebo sa nedajú zredukovať na jediný objekt, ale skôr na náladový „výrez“:

![Diptych: list a Gwerkovo dielo Zrod svetla. Spojivo je tón, sezónnosť a atmosféra.](figures/fig-7-4-atlas-remix-diptych-list-zrod-svetla.png){#fig:diptych-list width=80%}

V odpovediach (tagy + krátke texty) sa pri týchto prípadoch opakovane objavoval posun od „podobá sa“ k „hovorí mi to niečo o mne / o dnešku / o situácii“. Pre hodnotenie projektu je to dôležitejšie než otázka, či algoritmus vrátil „najpresnejší“ výsledok. Zaujíma ma, či systém vytvoril podmienky na to, aby návštevník vedel vzťah pomenovať.

#### Limity a čo z toho vyplýva pre ďalšiu iteráciu

Táto demoverzia má jasné limity: malá vzorka, výrazná asistencia (nahrávanie fotiek), zjednodušený vstup (často „posledná fotka“ namiesto flâneurskeho nálezu v priestore) a dočasné pravidlá v odporúčaniach (znevýhodňovanie nedávno zobrazených diel). Zároveň však test ukázal, že princíp diptychu je pre ľudí čitateľný a že aj obmedzený korpus vie produkovať osobné a prekvapivé spojenia.

V ďalšej iterácii (jún 2026) bude dôležité presunúť dôraz z asistovaného uploadu na samostatný vstup návštevníka, vrátiť do procesu flâneursky režim v záhrade a prepojiť vizuálny diptych so zvukovou vrstvou (sonifikácia a soundscape z terénnych nahrávok z Prugerky). Tým sa „vstup do zbierky“ prestane odohrávať len na displeji a získa priestorový charakter. Podrobnejšie sa tomu venujem v časti o návrhu inštalácie.

### 7.5 Kurátorský rámec a návrh fyzickej inštalácie (jún 2026)

Demoverzia Atlas re/mix ukázala, že diptych vie vzniknúť aj v krátkom kontakte a aj bez toho, aby návštevník poznal zbierku alebo vedel pomenovať, čo presne hľadá. Fyzická inštalácia v júni 2026 má tento princíp posunúť do priestoru tak, aby vstup do zbierky nebol len interakcia na displeji, ale sled telesných krokov: prechod, nález, prinesenie, skenovanie, rozhodnutie. Zmyslom nie je „pridať výstavu k aplikácii“, ale vytvoriť podmienky, v ktorých sa dá moment objavu zopakovať bez asistencie a s väčšou pozornosťou.

Kombinácia záhrady a domčeka je tu kľúčová. Záhrada funguje ako prechodový režim a domček ako miesto koncentrácie. Návštevník je už pri vstupe do záhrady vyzvaný spomaliť a prepnúť spôsob vnímania do režimu *flânerie* — nie presun z bodu A do bodu B, ale krátke potulovanie sa s otvorenou pozornosťou. Úloha je jednoduchá: cestou si všimnúť a zobrať niečo malé, čo ho zaujme (kamienok, halúzka, list). Tento predmet nie je artefakt „na zber“, ale osobný spúšťač. Je to niečo, čo si návštevník vybral sám, v danom momente a v danom priestore.

Skenovanie (alebo zachytenie predmetu) prebieha až v domčeku na druhej strane záhrady. Táto vzdialenosť nie je logistická náhoda, ale súčasť dramaturgie: návštevník musí prejsť celý priestor, aby sa „nájdené“ dostalo do „spracovania“. V domčeku sa potom predmet premení na vstup do online zbierky. Systém na základe vizuálnej podobnosti navrhne dielo z Webu umenia a návštevník rozhodne, či vznikol diptych. V ideálnom prípade sa práve tu odohrá prechod od náhody k osobnosti: nie je to len náhodný výber zo zbierky, ale náhodný výber viazaný na konkrétnu situáciu a konkrétny predmet.

Aby mohol fungovať Warburgov „interval“, priestor musí vytvárať niekoľko základných podmienok. Po prvé, čas: návštevník musí mať možnosť zostať pri výbere dlhšie než pár sekúnd, vrátiť sa o krok späť a skúsiť ďalšieho kandidáta bez tlaku na rýchly výsledok. Po druhé, ticho a izoláciu: domček nemá byť rušivé rozhranie, ale miesto, kde sa dá sústrediť na vzťah medzi dvoma obrazmi. Po tretie, jasnú mieru vedenia: na začiatku stačí jedna výzva a jedna úloha; zvyšok má byť čitateľný z rozhrania a z priestoru.

Súčasťou inštalácie má byť aj zvuková vrstva. Pri fyzickej verzii nechcem, aby sa diptych uzavrel iba do vizuálneho páru na displeji. K vstupnej fotke/predmetu má vzniknúť sonifikácia a jednoduchý soundscape, ktorý vytvorí pre návštevníka zvukový priestor „na mieru“. Zvukový materiál bude postavený z terénnych nahrávok z Prugerky (field recording) pripravených Jonatanom Pastirčákom. V praxi to znamená, že rozhodnutie „toto sedí“ nebude len vizuálne. Bude mať aj časový charakter: návštevník bude chvíľu v zvuku, ktorý sa viaže na jeho vstup, a tým sa posilní pocit, že vstup do zbierky je situácia, nie kliknutie.

Materializácia výsledkov má mať dve úrovne. Prvou je bezprostredný výstup pre návštevníka: ak diptych funguje, môže si ho vytlačiť a odniesť. Táto možnosť nie je len suvenír; je to potvrdenie, že vznikol konkrétny vzťah, ktorý stojí za fixáciu. Druhou úrovňou je výstavná stopa: diptychy môžu vytvárať priebežnú „stenu párov“ (tlačené výstupy, prípadne projekcia), ktorá ukazuje, že zbierka sa dá čítať cez množstvo osobných vstupov, nie len cez jednu kurátorskú líniu. Dôležité je, aby táto stena nebola súťažou ani rebríčkom. Skôr mapou rôznych spôsobov, ako ľudia spájajú svet okolo seba so zbierkou.

Z demoverzie sa do fyzickej inštalácie prenáša jadro: osobný vstup, viac návrhov kandidátov, rozhodnutie používateľa a krátke pomenovanie spojiva. Mení sa však režim. V demoverzii bolo veľa krokov asistovaných (upload cez mobil, improvizované podmienky). Vo fyzickej verzii musí byť vstup samostatný a plynulý. Zároveň sa posilní to, čo v Hajovni fungovalo len okrajovo: flâneursky režim v priestore, nález predmetu a prechod cez záhradu ako súčasť dramaturgie. Tým sa Atlas re/mix zmení z prototypu rozhrania na kurátorské prostredie, v ktorom sa digitálna zbierka správa ako partner pre osobnú skúsenosť návštevníka.

### 7.6 Záver: čo demoverzia už ukázala a čo ešte ostáva otvorené

Demoverzia Atlas re/mix bola od začiatku chápaná ako experiment. Nešla po reprezentatívnych zisteniach ani po „správnosti“ odporúčaní. Skôr skúšala, či sa dá navrhnúť taký vstup do online zbierky, ktorý sa nebude správať ako vyhľadávač, ale ako situácia. V tomto zmysle je metodickým rámcom umelecký výskum: práca cez prototyp, cez skúšanie v konkrétnych podmienkach a cez iterácie, ktoré sú zároveň návrhom aj spôsobom poznávania.

Vrátené k otázkam z 7.0 sa zatiaľ ukazuje najmä toto.

Po prvé, princíp osobného vstupu funguje ako spúšťač objavovania. Keď návštevník neštartuje z kategórií a filtrov, ale z vlastnej fotografie alebo nájdeného detailu, zbierka sa prestáva javiť ako „niečo mimo mňa“. Aj pri malom korpuse sa objavujú spojenia, ktoré by sa pri bežnom vyhľadávaní pravdepodobne nevynorili. Dôležitý nie je samotný moment podobnosti, ale následný krok: výber a pomenovanie spojiva. Práve tu sa „návšteva online zbierky“ mení na osobnú skúsenosť.

Po druhé, demoverzia naznačila, že význam sa nerodí automaticky z vizuálnej podobnosti. Podobnosť je východiskový impulz. Význam vzniká až vtedy, keď človek nájde spôsob, ako vzťah pomenovať: cez motív, náladu, situáciu, prácu, spomienku alebo miesto. Tento posun je pre tému práce podstatný: naratívna vrstva sa tu nevracia ako dodatočný text, ale ako nutnosť interpretácie vložená priamo do interakcie.

Zároveň sa ukázali hranice, ktoré treba priznať. Prvou je veľkosť a charakter korpusu: zúženie na jedného autora pomáha čitateľnosti experimentu, ale zároveň obmedzuje typy spojení, ktoré môžu vzniknúť. Druhou je kvalita a povaha vstupných obrazov: mobilné fotky a skeny nesú veľa náhody (svetlo, rozmazanie, kompozícia), čo môže podobnostné vyhľadávanie posunúť k „formálnym rýmom“ bez zmyslu. Tretia hranica je rozdiel medzi podobnosťou a významom. Algoritmus môže ponúknuť kandidáta, ktorý je vizuálne blízky, ale interpretačne prázdny. A naopak, niekedy môže zmysel vzniknúť až na kandidátovi, ktorý nie je „najbližší“ v technickom zmysle. Táto nezhoda nie je chyba; je to vlastnosť situácie, v ktorej sa stretáva výpočtový návrh a ľudské čítanie.

Cieľom iterácie do júna 2026 je preto nie „zlepšiť presnosť“, ale stabilizovať podmienky pre osobný objav. Znamená to posunúť sa od asistovaného prototypu k samostatnému režimu použitia, posilniť flâneursky vstup v záhrade (nález, prechod, prinesenie) a doplniť zvukovú vrstvu, ktorá dá diptychu čas a priestor. Zároveň to znamená otvoriť otázku transparentnosti: ak systém mení poradie návrhov kvôli variabilite, musí byť jasné, že nejde o „pravdu“ zbierky, ale o návrhový nástroj na hľadanie spojení.

Ak má mať Atlas re/mix hodnotu pre tému tejto práce, nespočíva v tom, že nahradí katalógové rozhrania. Skôr v tom, že ukáže jednu konkrétnu možnosť, ako sa dá online zbierka navštíviť iným spôsobom: ako priestor na osobné spojenia, ktoré sa nedajú naplánovať dopredu, ale dajú sa navrhnúť tak, aby mali šancu vzniknúť.
