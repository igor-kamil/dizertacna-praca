# Návrh štruktúry dizertácie — „Online art collections as containers of visual storytelling“


---

## Abstract (max. 300–350 slov)

Krátke zhrnutie motivácie, výskumných otázok, použitej metodológie (mixed methods — kvalitatívne + technické experimenty), hlavných príspevkov (analytických i praktických) a očakávaných výsledkov (nové návrhy rozhraní, prototypy a výstava).

---

## 1\. Introduction

-   Kontext, motivácia.
    
-   10r webumenia.sk (kick-off).
    
-   Ciele dizertácie a hlavné výskumné otázky (RQ).
    
-   Metodologický prehľad (archívna práca, systémová analýza, implementácia prototypov, užívateľské štúdie, kvantitatívne merania).
    
-   Stručný opis praktickej časti (Atlas Re/mix + výstava).
    

### Možné výskumné otázky (RQ)

1.  Ako moderné online katalógy (napr. webumenia.sk) „obsahujú“ a „uchovávajú“ vizuálne príbehy diel a zbierok — čo sa stráca pri digitálnom sprostredkovaní?
    
2.  Aké technické a rozhraniové stratégie (IIIF, generous interfaces, vector search, contextual storytelling) pomáhajú obnoviť alebo vytvoriť naratívne vrstvy v online zbierkach?
    
3.  Aký je prínos systémov založených na vizuálnej podobnosti (img2vec/embeddingy) pre tvorbu nových, osobných príbehov (remix / mnemosyne-style montáže) pre verejnosť?
    
4.  Ako navrhnúť a vyhodnotiť interaktívnu skúsenosť (Atlas Re/mix), ktorá umožní ne-linkovaným návštevníkom vytvárať zmysluplné vizuálne spojenia medzi prírodným artefaktom a dielami zo zbierok?
    

---

## 2\. Historical and institutional background

-   História katalogizácie v ČSSR / Československu: procesy v 1970s (normalizácia), centralizácia evidencie diel.
    
-   Zrod CEDVU — motivácie digitalizácie v 1990s (politický a technologický kontext).
    
-   Krátka historia SNG a vznik webumenia.sk (2013–2015), otvorenie verejných dát, lab.SNG.
    
-   Stav dnes: kolaborácie (21 múzeí), rozsah online katalógu (≈200k položiek), public-domain politika.
    
-   Metodológia archivnej práce (primárne zdroje, interview s aktérmi, interné dokumenty).
    

---

## 3\. Literature review

-   Digitálne zbierky: teoretické prístupy — Generous Interfaces (2015) — rozobrať princípy a implikácie.
    
-   Lev Manovich — *The Language of New Media* (2001) — mediálnosť obrazu, digitálne representácie, databáza vs naratív.
    
-   Algoritmy a kultúra: „Filterworld: How Algorithms Flattened Culture“ — algoritmické dôsledky na diverzitu a „long tail“ problém.
    
-   Súčinné literatúry: digitálne humanitné vedy (digital humanities), muzeológia, vizuálna semiotika, UX pre DH.
    
-   Prehľad technických literatúr: IIIF, image retrieval, embeddingy (img2vec, CLIP), lematizácia/NLP v cultural heritage search.
    
-   Identifikuj medzery: malé štúdie o tom, ako digitálne katalógy konštruujú alebo znižujú naratívy diel.
    

---

## 4\. Technical architecture of online collections (case: webumenia.sk)

-   Vysvetlenie harvesting pipeline (zdroje: inštitucionálne databázy, CEDVU, importné procesy).
    
-   Metadata modely (MODS, Dublin Core, vlastné polia) a ich limity pre naratívne prepojenia.
    
-   IIIF — deep-zoom images (technical overview: IIIF image API, presentation API, benefits pre hi-res access).
    
-   Search architecture: Elasticsearch (indexing, analyzers, lemmatization, synonyms), full-text vs faceted search.
    
-   Open-source workflow: GitHub repo, CI/CD, community contributions.
    
-   Data governance, licensing (public domain vs rights-managed), etické & právne aspekty.
    
-   Diagramy + ukážky kľúčových JSON/IIIF manifestov.
    

---

## 5\. Limitations and critical analysis of online collections

-   Long-tail effect — kto dostane visibility (populárne diela vs menšina). Podpora / meranie as well.
    
-   Discoverability vs search model: potreba užívateľa poznať, čo hľadá → implicitná bariéra.
    
-   Strata „wow“ momentu — skúsenosť z fyzického múzea vs lineárne / predvídateľné online prehliadanie.
    
-   Chýbajúca naratívna vrstva: izolované záznamy, slabé prepojenia medzi dielami (tematické, chronologické, formálne).
    
-   Algoritmická homogenizácia (filter bubble / popularity bias).
    
-   Metadata quality issues (inconsistent fields, multilinguality, authority control) a ich dopad na naratívnosť.
    
-   Príklady ilustrujúce vyššie body (case studies z webumenia.sk, analytics).
    

---

## 6\. Approaches to restoring and enriching storytelling

-   Generous Interfaces — princípy a praktické príklady (plenerizmus.sng.sk). Implementačné odporúčania (exploratory interfaces, serendipity, visual browsing).
    
-   Visual accenting / faceting — color search, pattern search (inšpirácia: Cooper Hewitt Labs).
    
-   Storytelling modules — tie-in exhibitions like 1989.sng.sk; kontextualizácia diel cez text, hisotické udalosti, mapy.
    
-   Spatial-temporal context — mobilné sprievodné aplikácie (atlas.sng.sk). Prepojenie fyzického a digitálneho.
    
-   Vizuálne vyhľadávanie a similarity search: img2vec, embeddings, CLIP — metódy na objavovanie ornamentov, motifov, formálnych prvkov.
    
-   Aby Warburg & Mnemosyne — remix ako metodológia pre tvorbu nových naratívov.
    
-   Návrhy UX patterns a architektúry pre multi-layered discovery (metadata + visual similarity + curatorial narratives).
    

---

## 7\. Implementation: tools, datasets, and prototypes

-   Datasets: export z webumenia.sk (sample subset), metadata + IIIF images; krátky popis spracovania.
    
-   Technické stacky: Elasticsearch + custom analyzers (lemmatizer, synonyms), IIIF server, image embedding pipeline (CNN pretrained / fine-tuned / img2vec), vector DB (faiss / annoy / milvus) — návrh a dôvody voľby.
    
-   Prototype 1: Generous browsing interface (filtering, themed pathways).
    
-   Prototype 2: Ornament Explorer — použitie img2vec pre ornament/similarity discovery (popis pipeline: preprocessing, embedding generation, indexing, retrieval).
    
-   Prototype 3 (aplikácia): **Atlas Re/mix** — UX flow, technická architektúra (mobile scanner → server-side embedding → similarity search → diptych composer → print/export).
    
-   Implementačné detaily, datové ukážky, kódy (odkazy na GitHub) a krátke screenshoty/flowy.
    

---

## 8\. Evaluation & methodology

Mix kvalitatívnych a kvantitatívnych metód:

### Quantitative

-   Metrics for discovery: diversity metrics (e.g., Gini coefficient of visibility), novelty/serendipity scores, click-through rates in prototypes.
    
-   Retrieval metrics for visual search: precision@k, recall@k, mean average precision (MAP) on curated ground-truth pairs (napr. ornament matches).
    
-   A/B testing interface variants (search-first vs browse-first).
    

### Qualitative

-   User studies: think-aloud sessions, semi-structured interviews with rôznymi skupinami (curators, students, verejnosť).
    
-   Case studies: deeper analysis of several themed journeys (e.g., creating a narrative around 1989 theme).
    
-   Expert evaluations: kurátori a historiografi hodnotia kvalitu naratívnych výstupov (relevance, contextual richness).
    

### Mixed

-   Log analysis: path analysis, drop-off points, time-to-serendipity.
    
-   Evaluačné kritériá pre Atlas Re/mix: zmysluplnosť vytvoreného diptychu (v subjektívnom hodnotení užívateľa), emocionálny engagement, porovnanie s kontrolnou skupinou.
    

---

## 9\. Applied part — Atlas Re/mix (dizajn výstavy / interaktívneho artefaktu)

-   Koncept: flâneur-style picking → scanning object → search in webumenia → create diptych → print / share.
    
-   Technická realizácia: scanner (webcam), preprocessing (crop, background removal), embedding + similarity retrieval, UI pre výber & kompozíciu, tlač/AR výstava.
    
-   Kurátorský rámec: ako vystaviť remixy, tlačové výstavy ako participatívne momenty.
    
-   Hodnotenie interakcie: user feedback, návštevnosť výstavy, kvalitatívne príbehy vzniknuté v procese.
    
-   Výstavný plán, logistika, sprievodné materiály.
    

---

## 10\. Discussion

-   Interpretácia výsledkov (čo fungovalo, čo nie).
    
-   Teoretické implikácie pre galérie (prepojenie databázy a naratívu).
    
-   Politické & etické otázky: verejné financovanie, otvorenosť dát, zodpovednosť voči verejnosti (v kontexte nedávnych udalostí v SNG).
    
-   Limity práce (dataset, generalizability, technical constraints).
    

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

## Bibliography (vybrané kľúčové zdroje — zahrň svoje požadované)

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
    
