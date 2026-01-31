# 1. Úvod

## 1.1 Kontext: od sprístupnenia k čítaniu

Digitalizácia zbierok umenia za posledné dve dekády zásadne rozšírila prístup k dielam: v online prostredí sú dostupné reprodukcie, metadáta, niekedy aj otvorené API a možnosti opätovného použitia. Tento posun však neznamená automaticky porozumenie. Online zbierky sú často organizované tak, aby podporovali vyhľadávanie a filtrovanie, no slabšie podporujú orientáciu bez predchádzajúcej otázky, vytváranie súvislostí a vznik interpretačných väzieb medzi dielami. V tejto práci tento deficit pomenúvam ako stratu naratívnej vrstvy v online zbierkach.

Východiskom je presvedčenie, že „narácia“ v digitálnej zbierke nemusí znamenať lineárny príbeh. Môže ísť o podmienky, v ktorých sa význam skladá postupne: cez poradie, susedstvá, rytmus objavu, kurátorské rámce a čitateľné algoritmické zásahy. Rozhranie tu preto nechápem iba ako vizuálny povrch, ale ako kombináciu dátových, technických a interakčných rozhodnutí, ktoré spoluurčujú, čo a ako sa dá v zbierke čítať.

## 1.2 Motivácia a výskumné pozadie

Táto dizertačná práca vyrastá z dlhodobej praxe v prostredí digitálnych zbierok, kde sa problém naratívnej vrstvy objavuje opakovane: pri návrhu vyhľadávania, pri publikovaní výstavných mikrostránok, pri experimentovaní s vizuálnou podobnosťou a napokon pri návrhoch nových vstupov do zbierky mimo katalógového režimu. Praktické kapitoly práce sa opierajú o skúsenosti z vývoja a prevádzky Webu umenia a z experimentov realizovaných v režime kurátorsko-technického výskumu a prototypovania.

Motiváciou nie je „pridať viac textu“ k dielam. Cieľom je overiť, či a ako možno naratívnu vrstvu obnovovať návrhom rozhraní: tak, aby podporovali objavovanie, serendipitu a tvorbu významových väzieb bez toho, aby zbierku uzavreli do jedného autoritatívneho výkladu.

## 1.3 Pozícia autora

V práci vystupujem v hybridnej pozícii autora, ktorý sa pohybuje medzi vývojom, kurátorskou logikou a dizajnom rozhraní. Táto pozícia umožňuje popisovať technické rozhodnutia ako súčasť kurátorského aparátu (a nie ako neutrálne „implementačné detaily“), no zároveň prináša riziká: slepé miesta autora zvnútra inštitúcie, preferovanie určitých prístupov a obmedzenú generalizáciu pozorovaní. Tieto limity preto v metodologickej kapitole priznávať a pracujem s nimi ako so súčasťou výskumného rámca.

## 1.4 Problém a výskumné otázky

Centrálny problém práce formulujem takto: online zbierky umenia často strácajú naratívnu vrstvu, pretože dominantný spôsob sprístupnenia vychádza z databázového režimu (vyhľadávanie, filtre, katalogizované poradie), ktorý uprednostňuje stabilné polia pred vzťahmi a kontextom.

Z tohto problému vyplývajú hlavné výskumné otázky:

1. Ako sa dá vstúpiť do online zbierky inak než cez vyhľadávanie, filtre a katalógové poradie?
2. Aké rozhranové a algoritmické stratégie môžu podporiť vznik významu, ktorý aspoň čiastočne nahrádza oslabenú naratívnu vrstvu?
3. Akú hodnotu majú tieto stratégie ako nástroje objavovania (serendipity) a ako sa dajú navrhovať tak, aby zostali čitateľné a férové?

## 1.5 Prístup, materiál a metódy

Práca kombinuje analytický a praktický postup. Pracujem s tromi typmi materiálu: (1) texty a existujúce rámce o digitálnych zbierkach a rozhraniach, (2) inštitucionálne a historické dáta o infraštruktúre Webu umenia a jeho vývoji, (3) prototypy a situačné overenia, ktoré chápem ako výskumné artefakty (*research through design*). Dôležitou súčasťou argumentu sú aj technické artefakty (kód, konfigurácie, grafy), ktoré slúžia ako kontrolovateľná stopa rozhodnutí.

## 1.6 Štruktúra práce

Kapitola 2 definuje metodologický rámec a kľúčové pojmy. Kapitola 3 mapuje vývoj online zbierok a situuje Web umenia do širšieho ekosystému. Kapitola 4 ukazuje, ako technická architektúra určuje rámec možností a typy čítania zbierky. Kapitola 5 pomenúva limity reprezentácie a mechanizmy, ktoré prispievajú k strate naratívnej vrstvy. Kapitola 6 predstavuje prístupy k obnovovaniu kontextu a serendipity cez dizajn rozhraní (od naratívnych modulov po vizuálnu podobnosť). Kapitola 7 rozvíja experiment Atlas re/mix ako praktický test alternatívneho vstupu do zbierky a ako návrh situovaného rozhranového scenára. Záverečné kapitoly následne syntetizujú zistenia, limity a odporúčania pre prax.
