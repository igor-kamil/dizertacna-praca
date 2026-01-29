# 7. Atlas Re/mix — od digitálnej zbierky k tvorivému nástroju

## Preface

> “Never to get lost is not to live.
> Somewhere in the terra incognita in between lies a life of discovery.”
> — Rebecca Solnit, *A Field Guide to Getting Lost* [@solnit2006; @marginalian2014]

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

Tu sa prirodzene otvára aj otázka, ktorá sa pri montáži a *remixe* objavuje často: či skladanie existujúcich diel vytvára „nové dielo“, alebo skôr nový spôsob čítania. V rámci Atlas re/mix sa prikláňam k druhej možnosti. Diptych chápem ako dočasnú používateľskú interpretáciu. Je to gesto a stopa skúsenosti, nie náhrada originálu. Zároveň tu vzniká autorský moment: používateľ rozhoduje, čo prijme, a jednou vetou určuje, v čom spojenie spočíva. Význam teda nevzniká v algoritme, ale v kombinácii návrhu systému a interpretácie človeka. Neskôr sa k tomu vrátim v častiach o kurátorskom rámci a o tom, ako sa dá „interval“ udržať aj vo fyzickej inštalácii.

Projekt stojí na existujúcej infraštruktúre. Atlas re/mix je experimentálne rozhranie nad dátami z Webu umenia (webumenia.sk). [@webumeniaSite] V demoverzii pracujem so zúženým korpusom, aby bol objav čitateľný aj pri krátkom kontakte a aby sa dalo lepšie sledovať, čo spúšťa „fungujúce“ spojenia. Zároveň je to pragmatické rozhodnutie: prototypovanie podobnostného vyhľadávania je citlivé na kvalitu reprodukcií, na konzistenciu dát a na spôsob, akým sa diela do systému načítajú. Web umenia poskytuje aj otvorený vývojový kontext, na ktorý sa dá tento experiment technicky napojiť. [@webumeniaGithub]

Dôležitá je aj časová rovina. V čase písania kapitoly existuje funkčná demoverzia a prebieha jej testovanie; fyzická inštalácia je plánovaná na jún 2026. Text preto pracuje s dvoma stavmi projektu naraz: opisuje to, čo je overené na prototype, a zároveň pomenúva, čo sa ešte len navrhne a otestuje v priestore. Tento „rozostavaný“ stav nepovažujem za slabinu, ale za súčasť prístupu *research through design*: prototyp je nástroj, ktorý mi umožňuje zachytiť a pomenovať moment objavu skôr, než sa z projektu stane hotová výstava.
