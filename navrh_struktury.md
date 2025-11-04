# Návrh štruktúry dizertačnej práce — „Online art collections as containers of visual storytelling“


---

## Abstract (max. 300–350 slov)

Krátke zhrnutie motivácie, výskumných otázok, použitej metodológie (mixed methods — kvalitatívne + technické experimenty), hlavných príspevkov (analytických i praktických) a očakávaných výsledkov (nové návrhy rozhraní, prototypy a výstava).

---

## 1. Introduction

### 1.1 Context: Culture in Transformation
- Rámcovanie doby: kultúrna inštitúcia v čase neistoty, digitálny obrat a zmena paradigmy uchovávania.  
- Krátka reflexia „ťažkých časov kultúry“ – ako sa mení spôsob existencie diela mimo tradičných múrov galérie.  
- Vnímanie digitálnych médií ako priestoru starostlivosti, reinterpretácie a komunikácie.

### 1.2 Motivation and Research Background
- Osobná a profesionálna motivácia – 13 rokov v **lab.SNG** a skúsenosti s digitálnymi zbierkami, rozhraním webumenia.sk, otvorenými dátami.  
- Plynulý prechod od praktického vývoja k výskumnému uchopeniu témy.  
- Cieľ práce: pochopiť a rozvíjať spôsoby, ako digitálne nástroje umožňujú rozprávať príbehy prostredníctvom zbierok umenia.  

### 1.3 Author’s Position
- Pozícia autora ako „developer-researcher“ v rámci národnej kultúrnej inštitúcie.  
- Reflexia hranice medzi inštitucionálnym výskumom a umeleckým výskumom.  
- Kritická sebareflexia: výhody i obmedzenia práce zvnútra inštitúcie (SNG).  

### 1.4 Problem Statement and Research Questions
- Identifikácia centrálneho problému: strata naratívnej vrstvy v online zbierkach umenia.  
- Ako možno pomocou rozhrania, algoritmov a kurátorských stratégií obnoviť zmysel, súvislosť a serendipitu?  
- Otázky:  
  - Ako môžu byť online zbierky chápané ako rozprávači?  
  - Aký je ich príbeh v ére otvorených dát a generatívnych nástrojov?  
  - Ako možno rozhranie chápať ako kurátorský akt?

### 1.5 Overview of the Practical Part
- Teaser k praktickej časti: séria experimentálnych aplikácií (napr. *Atlas Re/mix*, *Ornament Explorer*, *Plenérizmus - Objav svoje obľúbené dielo*).  
- Tieto projekty ako „testovacie prostredia“ pre teoretické hypotézy práce.  
- Prepojenie s témou kurátorského rozhrania, serendipity a generatívnych naratívov.  

### 1.6 Structure and Outline
- Stručný prehľad architektúry práce (bude doplnené po finalizácii).  
- Popis logiky: od kontextu → teórie → metodológie → analýzy → experimentu → reflexie.  
- Krátke vysvetlenie, ako sa prelínajú teoretické a praktické časti. 

---

## 2\. Historical and institutional background

-   História katalogizácie v ČSSR / Československu: procesy v 1970s (normalizácia), centralizácia evidencie diel.
    
-   Zrod CEDVU — motivácie digitalizácie v 1990s (politický a technologický kontext).
    
-   Krátka historia SNG a vznik webumenia.sk (2013–2015), otvorenie verejných dát, lab.SNG.
    
-   Stav dnes: kolaborácie (21 múzeí), rozsah online katalógu (≈200k položiek), public-domain politika.
    
-   Metodológia archivnej práce (primárne zdroje, interview s aktérmi, interné dokumenty).
    

---

## 3. State of the Art: Local and Global Contexts

Táto kapitola predstavuje „stav disciplíny“ v oblasti online zbierok umenia – mapuje aktuálne prístupy k digitálnemu sprístupňovaniu, kurátorským rozhraniam a otvoreným dátam v globálnom aj lokálnom kontexte. Kapitola dopĺňa historický a inštitucionálny rámec a vytvára základ pre následnú analytickú a praktickú časť práce.

### 3.1 Global context

- **Rijksmuseum (NL)** – priekopník otvorených dát a public-domain politiky; ich API, download program a filozofia „Rijksstudio“ ako príklad demokratizácie kultúrneho dedičstva.  
- **Cooper Hewitt Smithsonian Design Museum (US)** – open collection API + **Cooper Hewitt Labs** ako model inštitucionálneho R&D s prepojením na kurátorov aj vývojárov.  
- **Science Museum Group (UK)** – „Never Been Seen“ initiative; dôraz na experimentálne prehliadanie a prácu s obrovským množstvom nezverejnených objektov.  
- **Whitney Museum of American Art**, **MoMA**, **Artsy** – rozhrania prehliadania a autorské API ako formy súkromno-verejných platforiem; rôzne stratégie prístupu k dátam a vizualizácii.  
- **IIIF (International Image Interoperability Framework)** – technologický rámec, ktorý prepája inštitúcie a umožňuje spoločné zdieľanie obrazových dát a manifestov; de facto globálny štandard pre interoperabilitu.  
- Prehľad trendov: „generous interfaces“, AI-asistované kurátorstvo, vizuálne vyhľadávanie, otvorené API ako platformy výskumu.

### 3.2 Local context

- **webumenia.sk (SNG)** – národný referenčný príklad; spolupráca 21 inštitúcií, politika public domain, rozhrania pre širokú verejnosť a otvorený kód.  
- **Slovakiana**, **CEAD.space**, **Artlist.cz** – porovnanie lokálnych prístupov (štátne vs nezávislé, kurátorské vs archivačné ambície).  
- **Digitální kurátor (Lukáš Pilka)** – prepojenie vedeckého výskumu a kurátorskej praxe; algoritmická analýza kultúrneho dedičstva.  
- Lokálne R&D aktivity: lab.SNG, projekty DAMU/UJEP – výskum digitálneho rozhrania ako umeleckej praxe.  
- Kľúčové problémy: fragmentácia, rôzna úroveň otvorenosti dát, absencia dlhodobého výskumu používateľských skúseností.

### 3.3 Syntéza a pozícia práce

- Porovnanie trendov: **otvorené vs kurátorsky kontrolované** kolekcie; **vizuálna prehliadateľnosť vs textová databázovosť**.  
- Identifikácia priestoru, v ktorom sa pohybuje táto dizertácia: experiment medzi otvorenými dátami a naratívnym rozhraním.  
- Určenie výskumnej medzery: chýba hlbšia analýza, ako technické a rozhraniové stratégie formujú príbehy digitálnych zbierok.

---

## 4\. Literature review

-   Digitálne zbierky: teoretické prístupy — Generous Interfaces (2015) — rozobrať princípy a implikácie.
    
-   Lev Manovich — *The Language of New Media* (2001) — mediálnosť obrazu, digitálne representácie, databáza vs naratív.
    
-   Algoritmy a kultúra: „Filterworld: How Algorithms Flattened Culture“ — algoritmické dôsledky na diverzitu a „long tail“ problém.
    
-   Súčinné literatúry: digitálne humanitné vedy (digital humanities), muzeológia, vizuálna semiotika, UX pre DH.
    
-   Prehľad technických literatúr: IIIF, image retrieval, embeddingy (img2vec, CLIP), lematizácia/NLP v cultural heritage search.
    
-   Identifikuj medzery: malé štúdie o tom, ako digitálne katalógy konštruujú alebo znižujú naratívy diel.
    

---

## 5\. Technical architecture of online collections (case: webumenia.sk)

-   Vysvetlenie harvesting pipeline (zdroje: inštitucionálne databázy, CEDVU, importné procesy).
    
-   Metadata modely (MODS, Dublin Core, vlastné polia) a ich limity pre naratívne prepojenia.
    
-   IIIF — deep-zoom images (technical overview: IIIF image API, presentation API, benefits pre hi-res access).
    
-   Search architecture: Elasticsearch (indexing, analyzers, lemmatization, synonyms), full-text vs faceted search.
    
-   Open-source workflow: GitHub repo, CI/CD, community contributions.
    
-   Data governance, licensing (public domain vs rights-managed), etické & právne aspekty.
    
-   Diagramy + ukážky kľúčových JSON/IIIF manifestov.
    

---

## 6\. Limitations and critical analysis of online collections

-   Long-tail effect — kto dostane visibility (populárne diela vs menšina). Podpora / meranie as well.
    
-   Discoverability vs search model: potreba užívateľa poznať, čo hľadá → implicitná bariéra.
    
-   Strata „wow“ momentu — skúsenosť z fyzického múzea vs lineárne / predvídateľné online prehliadanie.
    
-   Chýbajúca naratívna vrstva: izolované záznamy, slabé prepojenia medzi dielami (tematické, chronologické, formálne).
    
-   Algoritmická homogenizácia (filter bubble / popularity bias).
    
-   Metadata quality issues (inconsistent fields, multilinguality, authority control) a ich dopad na naratívnosť.
    
-   Príklady ilustrujúce vyššie body (case studies z webumenia.sk, analytics).
    

---

## 7\. Approaches to restoring and enriching storytelling

-   Generous Interfaces — princípy a praktické príklady (plenerizmus.sng.sk). Implementačné odporúčania (exploratory interfaces, serendipity, visual browsing).
    
-   Visual accenting / faceting — color search, pattern search (inšpirácia: Cooper Hewitt Labs).
    
-   Storytelling modules — tie-in exhibitions like 1989.sng.sk; kontextualizácia diel cez text, hisotické udalosti, mapy.
    
-   Spatial-temporal context — mobilné sprievodné aplikácie (atlas.sng.sk). Prepojenie fyzického a digitálneho.
    
-   Vizuálne vyhľadávanie a similarity search: img2vec, embeddings, CLIP — metódy na objavovanie ornamentov, motívov, formálnych prvkov.
    
-   Návrhy UX patterns a architektúry pre multi-layered discovery (metadata + visual similarity + curatorial narratives).
    

---

## 8\. Implementation: tools, datasets, and prototypes

-   Datasets: export z webumenia.sk (sample subset), metadata + IIIF images; krátky popis spracovania.
    
-   Technické stacky: Elasticsearch + custom analyzers (lemmatizer, synonyms), IIIF server, image embedding pipeline (CNN pretrained / fine-tuned / img2vec), vector DB (faiss / annoy / milvus) — návrh a dôvody voľby.
    
-   Prototype 1: Generous browsing interface (filtering, themed pathways).
    
-   Prototype 2: Ornament Explorer — použitie img2vec pre ornament/similarity discovery (popis pipeline: preprocessing, embedding generation, indexing, retrieval).
    
-   Prototype 3 (aplikácia): **Atlas Re/mix** — UX flow, technická architektúra (mobile scanner → server-side embedding → similarity search → diptych composer → print/export).
    
-   Implementačné detaily, datové ukážky, kódy (odkazy na GitHub) a krátke screenshoty/flowy. 

---

## 9\. Applied part — Atlas Re/mix (dizajn výstavy / interaktívneho artefaktu)

-   Koncept: flâneur-style picking → scanning object → search in webumenia → create diptych → print / share.
    
-   Technická realizácia: scanner (webcam), preprocessing (crop, background removal), embedding + similarity retrieval, UI pre výber & kompozíciu, tlač/AR výstava.
    
-   Kurátorský rámec: ako vystaviť remixy, tlačové výstavy ako participatívne momenty.
    
-   Hodnotenie interakcie: user feedback, návštevnosť výstavy, kvalitatívne príbehy vzniknuté v procese.
    
-   Výstavný plán, logistika, sprievodné materiály.
    

---

## 10\. Methodology, Discussion & Reflection

Táto kapitola spája metodologický rámec s kritickou interpretáciou výsledkov, v súlade s umeleckým výskumom, kde hodnotenie nie je primárne kvantitatívne, ale reflektívne a diskurzívne.

### 10.1 Methodological stance

- Mixed methods v širšom zmysle: kombinácia archívneho výskumu, kurátorskej analýzy, technologického vývoja a umeleckého experimentu.  
- Pozícia autora ako „researcher-designer-curator“ – reflexia vlastnej praxe.  

### 10.2 Reflection on prototypes and results

- Čo fungovalo v prototypoch (Generous Interface, Ornament Explorer, Atlas Re/mix).  
- Čo prototypy odhalili o limitoch súčasných online zbierok (technické, kurátorské, naratívne).  
- Porovnanie s inšpiračnými príkladmi (Rijksmuseum, Cooper Hewitt Labs, Digitální kurátor).

### 10.3 Interpretation and future implications

- Teoretické dôsledky: ako môžu online zbierky slúžiť ako „kontajnery príbehov“.  
- Spoločenský a inštitucionálny dopad: otvorené dáta, zodpovednosť galérií, nové formy verejného prístupu.  
- Odporúčania pre budúcu prax: R&D v múzejných kontextoch, kurátorstvo AI, multimodálne rozhrania.  
- Limity a sebariadenie výskumu: časovosť, vlastná angažovanosť, špecifickosť umeleckého výskumu.

### 10.4 Publishing and care
Zamyslenie nad publikovaním (otvorením, sprístupnením, zdieľaním kódu, dát, rozhraní) ako formou starostlivosti („care“) o digitálne kultúrne dedičstvo.


---

## 11\. Conclusion & Future work

-   Zhrnutie príspevkov (teória + praktické riešenia).
    
-   Návrhy pre múzeá: politiku otvorených dát, design patterns pre generative interfaces, integračné postupy pre visual similarity.
    
-   Budúce smery: multimodálne embeddingy, generatívne naratívy (AI-asistant kurátor).
    

---

## 12\. Appendix

-   Technické appendices (kódy, nastavenia).
        
-   Ukážky ankiet a interview protokolov.
    

---

## Bibliography (vybrané kľúčové zdroje)

-   „Generous Interfaces: Interfaces for Digital Cultural Collections“ (2015).
    
-   Lev Manovich, *The Language of New Media* (2001).
    
-   *Filterworld: How Algorithms Flattened Culture* (autor/publikácia, doplniť presné citácie).
    
-   IIIF specification papers and practical guides.
    
-   Papers on image embeddings (img2vec papers, CLIP (Radford et al.), papers on image similarity & vector search).
    
-   Papers on museum digital interfaces and UX (several relevant DH & Museology sources).
    


---

## Expected contributions (explicitne vypíš)

1.  Analytická kapitola o tom, čo sa stráca/ostáva pri digitalizácii kultúrnych zbierok.
    
2.  Technický rámec pre integráciu IIIF + vector search + Elasticsearch pre naratívne obohatenie.
    
3.  Prototypy (Ornament Explorer, Atlas Re/mix) a otvorený kód/dátový set ako replikovateľný artefakt.
    
4.  Užívateľská štúdia dokumentujúca dopad navrhovaných rozhraní na discoverability a naratívne spojenia.
    
5.  Výstava/aplikačný deployment ako dôkaz koncepcie (public outreach).
    
