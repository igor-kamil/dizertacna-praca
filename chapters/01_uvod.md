# 1 Úvod {#sec:uvod}

> “With new media, the content of the work and the interface are separated.” [@manovich_language_new_media_2001]

V kamennej galérii sa príbeh zbierky skladá aj bez toho, aby sme ho tak nazvali: cez výber, poradie, susedstvá diel, texty, architektúru a spoločnú situáciu návštevy. V online prostredí tieto veci nie sú dané. Musia sa rozhodnúť a spraviť — v dátach, v pravidlách prepojení a najmä v rozhraní. Keď sa obsah oddelí od rozhrania, neexistuje neutrálne „sprístupnenie“: vždy ide o konkrétny spôsob, ako databázu previesť do skúsenosti návštevníka. Táto práca skúma, čo sa v tomto preklade stráca a ako sa dajú navrhovať rozhrania, ktoré podporujú nelineárne čítanie, objavovanie a vznik súvislostí.

Oficiálny názov dizertačnej práce znie *Digitálne naratívy, ne-lineárne príbehy a generatívna skutočnosť v dobe beznádeje*.[^gen] Pracovný názov používaný počas písania — *Online art collections as containers of visual storytelling* — v tejto verzii rukopisu používam ako podnadpis. Vystihuje konkrétnu výskumnú situáciu, v ktorej sa širší rámec „digitálnych naratívov“ stretáva s praktickým problémom: ako sa v online zbierkach umenia stráca (a ako sa dá obnovovať) naratívna vrstva, ktorá v galérii vzniká kombináciou výberu, priestorovej dramaturgie, sprievodných textov a spoločnej situácie návštevy.

Úvod má dve úlohy. Po prvé, pomenovať problém straty naratívnej vrstvy v online zbierkach a dôvody, pre ktoré je dnes relevantný. Po druhé, vyjasniť moju autorskú pozíciu a metodologický prístup, keďže poznanie v tejto práci vzniká v texte aj v návrhoch rozhraní, prototypoch a ich overovaní.

## 1.1 Kontext: digitálne naratívy a online zbierky ako infraštruktúry významu

Online zbierky umenia sa často opisujú jazykom prístupu: reprodukcie, základné údaje o dielach, informácie o právach a licencii, niekedy aj rozhranie pre ďalšie použitie dát (API). To všetko je dôležité, no „sprístupnenie“ len zriedka znamená „čítanie“. Typické rozhranie zbierky podporuje najmä vyhľadávanie, filtrovanie a prechod medzi izolovanými záznamami — teda režim, v ktorom zbierka funguje predovšetkým ako databáza. Manovich opisuje napätie medzi databázou a naratívom ako jednu zo základných vlastností digitálnych médií: databázová forma prirodzene tlačí k rovnocenným položkám a k prehľadávaniu, nie k súvislému poradiu a výkladu [@manovich_language_new_media_2001].

Tento režim je účinný pri odborných dopytoch, no slabšie funguje v situácii, keď návštevník ešte nevie, čo presne hľadá, alebo keď potrebuje najprv získať prehľad, aby si vôbec vedel položiť otázku. Vyhľadávacie pole je silné, keď poznám správne slová, no je úzke, keď potrebujem orientáciu, vzorku a kontext. Práve na tento posun reaguje Mitchell Whitelaw konceptom *generous interfaces* — rozhraní, ktoré namiesto toho, aby od používateľa vyžadovali otázku, najprv ukážu obraz zbierky a ponúknu viacero ciest vstupu [@whitelaw_generous_interfaces_2015].

V tejto práci tento deficit pomenúvam ako strata naratívnej vrstvy v online zbierkach. Naratívna vrstva tu neznamená povinný lineárny príbeh ani mechanické „pridanie textu“ k dielu. Ide o súbor podmienok, v ktorých sa význam môže skladať postupne: cez poradie, susedstvá, rytmus objavu, zrozumiteľné kurátorské rámce, viditeľné pravidlá výberu a čitateľné algoritmické zásahy. Naratív tu nevystupuje ako jediné vysvetlenie, ale ako spôsob, ako sa dá v zbierke nadväzovať súvislosť bez toho, aby bol výsledok uzavretý do jednej autoritatívnej interpretácie.

Súčasťou problému je aj to, že digitálne zbierky majú tendenciu „zrovnávať“ rôzne typy kontextu. Výstavný, publikačný, historický aj inštitucionálny kontext sa v online prostredí často redukujú na rovnaký formát: položka v zozname, stránka diela, prípadne krátky popis. V tejto redukcii sa stráca časovosť a situovanosť čítania: to, že dielo v galérii nevystupuje ako samostatný záznam, ale ako súčasť výberu, argumentu a priestoru. Práve preto je pre mňa rozhranie kľúčovým miestom výskumu: nie je neutrálne. Určuje, aké väzby sa dajú v zbierke objaviť, aké poradia sú možné a aké typy pozornosti online zbierka vyvoláva [@manovich_language_new_media_2001].

Dovetok *v dobe beznádeje* v názve práce používam ako pomenovanie krehkého kontextu, v ktorom sa digitálne zbierky prevádzkujú. Kultúrne inštitúcie sú vystavené organizačnej neistote, personálnym stratám a politickým tlakom. V takomto prostredí sa otázka naratívnej vrstvy spája aj s otázkou udržateľnosti: ako navrhovať digitálne systémy tak, aby prežili zmeny vedenia, rozpočtové šoky či výpadky tímov, a zároveň nestratili schopnosť sprostredkovať význam. Tento pohľad sa dá čítať aj cez optiku starostlivosti: Annet Dekker v koncepte *networks of care* ukazuje, že dlhodobé fungovanie digitálnych diel a infraštruktúr stojí na sieťach ľudí, nástrojov a postupov, ktoré umožňujú pokračovať aj vtedy, keď sa menia roly, odchádzajú jednotlivci alebo sa rozpadá stabilné zázemie [@dekker_networks_of_care_2022].

Konkrétne udalosti rokov 2024–2025 v Slovenskej národnej galérii tento rámec zviditeľnili aj mimo odbornej debaty. V auguste 2024 bola z funkcie odvolaná generálna riaditeľka Alexandra Kusá[^kusa] a začiatkom roka 2025 oznámila približne stovka zamestnancov a zamestnankýň svoj odchod k 1. aprílu 2025.[^odchody] V čase písania tejto práce nemám historický odstup, aby som dokázal dôsledky týchto udalostí vyhodnotiť v dlhom trvaní. Mám však priamu skúsenosť, že takéto situácie menia perspektívu: digitálne zbierky prestávajú byť len „ďalším projektom“ a stávajú sa infraštruktúrou pamäti, o ktorú je potrebné sa starať aj v podmienkach, ktoré si tím nevybral.

## 1.2 Motivácia a výskumné pozadie: od vývoja k reflexii

Na doktorandské štúdium som sa prihlásil pred piatimi rokmi s inou predstavou, než akú má dnešná verzia práce. V tom čase naplno fungoval lab.SNG a moja motivácia bola pragmatická: pokračovať vo vývoji digitálnych nástrojov pre galériu, prehlbovať technické kompetencie a rozvíjať prax, ktorá vznikala v každodennom tempe produkčnej práce. Tomu zodpovedal aj vtedajší rámec názvu: digitálne naratívy, nelineárne príbehy a generatívne procesy som vnímal skôr ako široký horizont, nie ako presne vyprofilovaný výskumný problém.

Postupne sa však môj záujem posúval od samotnej implementácie k širšiemu kontextu a diskurzu. Veľkú úlohu v tom zohralo prostredie, v ktorom sa technická práca prirodzene prepája s premýšľaním o kultúre a o zmysle digitálnych nástrojov. Dve línie vplyvu sa mi tu dlhodobo stretávali: na jednej strane kolega Philo van Kemenade a jeho dôraz na *knowledge-sharing* a komunitnú „konverzáciu“ okolo storytellingu (vrátane iniciatívy Storytellers United[^storytellers]); na druhej strane Michal Čudrňák, ktorý popri budovaní webumenia.sk systematicky prinášal do tímu literatúru a inštitucionálny rámec múzeí a galérií, často s dôrazom na otvorenosť a verejnú službu. Dôležité pre mňa neboli iba jednotlivé impulzy, ale praktiky: čítanie a zdieľanie, sledovanie odborných mailinglistov a komunít, a najmä vnútorné formáty, ktoré posúvali tím od „riešenia úloh“ k reflexii toho, čo naše rozhodnutia znamenajú pre prístup k dielam, pre verejnú pamäť a pre etiku digitálnej práce (napríklad interný e-mailový *lab.sng digest*).

Práve vďaka tejto skúsenosti som si postupne uvedomil, že ak má byť táto práca obhájiteľná ako výskum, nemôže zostať pri opise technológií a programovacích jazykov. Musí sa opierať o rámce galerijného a muzeálneho prostredia a o debaty o tom, čo v digitálnych zbierkach znamená rozprávanie, sprostredkovanie a kontext. Inak povedané: nestačí vedieť, ako systém postaviť. Treba vedieť aj to, aký typ čítania umožňuje, komu slúži a aké slepé miesta si pritom vytvára.

Pôvodná predstava výsledného projektu bola pritom konkrétna: sprievodca galériou Atlas SNG. Tento zámer sa však časom vyvíjal vlastnou cestou a stal sa len jednou vrstvou širšieho skúmania online zbierok. Popri tom na mňa pôsobilo aj prostredie Vysokej školy výtvarných umení v Bratislave: možnosť byť súčasťou ateliérových konzultácií mi umožnila zblízka pozorovať iné tempo tvorby, iné formy argumentácie a aj istú „zdravú drzosť“ v experimentovaní. Táto skúsenosť ma viedla k tomu, aby som prototypy rozhraní nevnímal iba ako nástroje optimalizácie, ale aj ako výskumné situácie: miesta, kde sa dá skúmať pozornosť, interpretácia a vznik významu v priamom kontakte s konkrétnym spôsobom prechádzania zbierky.

## 1.3 Pozícia autora: medzi inštitúciou, vývojom a výskumom

V tejto práci vystupujem v hybridnej pozícii autora, ktorý sa pohybuje medzi vývojom, kurátorskou logikou a dizajnom rozhraní. Časť materiálu vznikla „zvnútra“ inštitúcie (lab.SNG, webumenia.sk), časť mimo nej — najmä v neskoršom experimente, ktorý vzniká už po mojom odchode z tímu. Táto dvojitá perspektíva je dôležitá, pretože problém naratívnej vrstvy má vždy aj organizačný rozmer: inak sa navrhuje, keď je tím stabilný a má čas na iterácie, a inak, keď je potrebné systém udržať v prevádzke a preniesť ho do neistého obdobia.

Táto pozícia umožňuje opísať technické rozhodnutia ako súčasť kurátorského aparátu (nie ako neutrálne implementačné detaily). Zároveň však prináša riziká: slepé miesta autora zvnútra inštitúcie, sklon k preferovaniu určitých prístupov a obmedzenú generalizáciu pozorovaní. Preto v metodologickej kapitole explicitne pracujem s reflexivitou, s dokumentovaním rozhodnutí a s pomenovaním limitov.

V tejto súvislosti uvádzam aj motivačnú myšlienku, ktorú tu parafrázujem podľa Daniela Pastirčáka: úspechy síce zvykneme oslavovať, no ich poučenie býva často ťažko prenositeľné a neraz závisí od náhody; práve pri neúspechoch a stratách však človek naráža na svoje hranice a môže sa odraziť k obratu (*metanoia*) — k zmene smerovania, ktorá vedie k intenzívnejšej transformácii. V čase písania tejto práce ešte nemám odstup, aby som dôsledky nedávnych udalostí dokázal vyhodnotiť. Mám však jasno v tom, že práve nedostatok času na reflexiu bol dlhodobo slabým miestom mojej praxe: v období intenzívneho vývoja bolo vždy jednoduchšie pustiť sa do ďalšieho projektu, než systematicky popísať a odovzdať poznanie z predchádzajúcich. Táto dizertácia je pokusom túto medzeru zaceliť.

## 1.4 Problém a výskumné otázky

Centrálny problém práce formulujem takto: online zbierky umenia často strácajú naratívnu vrstvu, pretože dominantný spôsob sprístupnenia vychádza z databázového režimu (vyhľadávanie, filtre, katalogizované poradie), ktorý uprednostňuje stabilné polia pred vzťahmi, situáciou a kontextom.

Z tohto problému vyplývajú hlavné výskumné otázky:

1. Ako sa dá vstúpiť do online zbierky inak než cez vyhľadávanie, filtre a katalógové poradie?
2. Aké dizajnové a algoritmické stratégie môžu podporiť vznik významu, ktorý aspoň čiastočne nahrádza oslabenú naratívnu vrstvu?
3. Ako navrhovať tieto stratégie tak, aby zostali čitateľné, udržateľné a férové voči dielam aj voči návštevníkom?

Popri nich sledujem aj sprievodnú otázku, ktorá sa viaže k dovetku „v dobe beznádeje“: čo znamená navrhovať digitálne zbierky ako infraštruktúry, ktoré majú prežiť obdobia neistoty, a aké typy „starostlivosti“ (technickej, organizačnej, publikačnej) si to vyžaduje.

## 1.5 Prístup, materiál a metódy

Práca kombinuje analytický a praktický postup. Opiera sa o tri typy materiálu: (1) texty a rámce o digitálnych zbierkach, rozhraniach a naratíve, (2) inštitucionálnu a technickú dokumentáciu týkajúcu sa webumenia.sk a súvisiacich aplikácií, (3) prototypy a situačné overenia, ktoré chápem ako výskumné artefakty v prístupe *research through design*.

Dôležitou súčasťou argumentu sú aj technické artefakty (kód, konfigurácie, vizualizácie), ktoré slúžia ako kontrolovateľná stopa rozhodnutí. Nejde mi o to vytvoriť „univerzálne riešenie“ pre všetky zbierky, ale pomenovať prenositeľné princípy a ukázať ich na konkrétnych prípadoch: kde fungujú, kde zlyhávajú a aké kompromisy prinášajú.

## 1.6 Štruktúra práce: tri celky, jedna línia

Práca pozostáva z troch celkov, ktoré na seba nadväzujú, no každý z nich sa dá čítať aj relatívne samostatne:

1. Prvý celok ukazuje, že vývoj online zbierok je len ďalšou kapitolou v príbehu, ktorý sa začal oveľa skôr: katalogizáciou, uchovávaním, evidenciou a štandardizáciou (kapitola 3).
2. Druhý celok opisuje vývoj a prax predovšetkým v prostredí lab.SNG: webumenia.sk, jeho slabiny a aplikácie, ktoré sa pokúšali tieto slabiny adresovať návrhom rozhraní a publikovaním (kapitoly 4–6).
3. Tretí celok predstavuje samostatný experiment, ktorý vzniká v čase, keď už nie som súčasťou lab.SNG: Atlas Re/mix ako test alternatívneho vstupu do zbierky a ako návrh tvorivého scenára práce s dielami (kapitola 7).

Metodologický rámec a kľúčové pojmy zavádzam v kapitole 2. Na ňu nadväzuje historicko-inštitucionálny kontext online zbierok (kapitola 3), technická analýza princípov a architektúry Webu umenia (kapitola 4), diskusia o limitoch reprezentácie a o súčasnej debate (kapitola 5) a kapitola o prístupoch k obohateniu a reinterpretácii digitálnych zbierok (kapitola 6). Práca vyústi do experimentu Atlas Re/mix (kapitola 7), ktorý slúži ako praktický test a zároveň ako návrh situovaného rozhranového scenára práce so zbierkou.

[^gen]: Pojem *generatívna skutočnosť* je súčasťou registrovaného názvu témy. V texte ho nepoužívam ako samostatný teoretický rámec; ťažisko práce je v otázke naratívnej vrstvy online zbierok a v návrhu rozhraní, ktoré umožňujú význam čitateľne skladať.
[^kusa]: K odvolaniu Alexandry Kusej 7. augusta 2024 pozri napr. STVR, „Martina Šimkovičová odvolala riaditeľku SNG Alexandru Kusú“ (7. 8. 2024): https://spravy.stvr.sk/2024/08/ministerku-simkovicova-odvolala-generalnu-riaditelku-slovenskej-narodnej-galerie/
[^odchody]: K hromadným výpovediam a odchodu približne 100 zamestnancov od 1. apríla 2025 pozri napr. SME, „Stovka zamestnancov SNG dáva výpoveď“ (27. 1. 2025): https://www.sme.sk/kultura/c/stovka-zamestnancov-sng-dava-vypoved-galeria-je-na-pokraji-historickeho-kolapsu
[^storytellers]: Komunita Storytellers United: https://storytellers.link
