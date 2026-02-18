# Dizertačná práca: Online art collections as containers of visual storytelling

![Status](https://img.shields.io/badge/Status-Dop%C3%ADsan%C3%A1%20a%20odovzdan%C3%A1-success?style=for-the-badge)

- **Autor:** Igor Rjabinin
- **Školiteľ:** András Cséfalvay
- **Školiteľka konzultantka** Zuzana Panák Husárová
- **Škola:** Vysoká škola výtvarných umení v Bratislave  

## Anotácia

Práca skúma digitálne naratívy a spôsoby rozprávania príbehov v kontexte online zbierok umenia.  
Zameriava sa na to, ako súčasné digitálne platformy (napr. webumenia.sk, Rijksmuseum, Cooper Hewitt Labs) sprístupňujú vizuálne diela a aké naratívne vrstvy tým vznikajú alebo zanikajú.  

Cieľom výskumu je analyzovať technické, kurátorské a interfejsové stratégie, ktoré ovplyvňujú vzťah medzi dátami, príbehom a návštevníkom.  

## Kontext

Téma nadväzuje na pôvodný výskum *Digitálne naratívy, ne-lineárne príbehy a generatívna skutočnosť v dobe beznádeje* (2021), ktorý sa sústreďoval na algoritmizáciu a interaktivitu v digitálnom storytellingu.  
Súčasná verzia rozvíja tieto otázky v špecifickom prostredí **online galérií a zbierok umenia**, kde sa prelína konzervácia, prezentácia a kurátorstvo ako formy digitálneho rozprávania.

## Kľúčové pojmy

`online art collections` · `storytelling` · `generous interfaces` · `digital humanities`

## Štruktúra repozitára

- `chapters/` – kapitoly dizertácie v Markdown formáte  
- `konzultacie/` – zápisy z konzultácií a akčné body  
- `notes/` – pracovné poznámky, porovnania, nápady  
- `literature/` – bibliografia a poznámky k literatúre  
- `figures/` – vizuálne materiály a diagramy  
- `data/` – dátové podklady a exporty  
- `scripts/` – pomocné skripty (Python)  
- `roadmap` – [časový plán písania a výskumu](roadmap.md)  

## Generovanie PDF

**Požiadavky:** Pandoc + XeLaTeX (macOS: `brew install pandoc` + [TinyTeX](https://yihui.org/tinytex/) ) + Ghostscript (pre kompresiu).

**TeX balíky (TinyTeX):**

```bash
tlmgr install hyphen-slovak
tlmgr install collection-langczechslovak
tlmgr install newunicodechar microtype xevlna tcolorbox etoolbox caption placeins enumitem
```

```bash
chmod +x build.sh      # prvýkrát
./build.sh             # vytvorí dissertation.pdf
```

### Konfigurácia

- `pandoc/defaults.yaml` – hlavné nastavenia Pandocu (formát, filtre, metadáta)
- `pandoc/preamble.tex` – LaTeX konfigurácia (typografia, vizuálne boxy, fonty)

### Možnosti kompresie PDF

PDF sa automaticky komprimuje pomocou Ghostscript (`gs`). Predvolená kvalita je `/ebook`.

```bash
./build.sh                      # default: /ebook (stredná kompresia)
PDFSETTINGS=/screen ./build.sh  # najväčšia kompresia (najnižšia kvalita)
PDFSETTINGS=/printer ./build.sh # vyššia kvalita
PDFSETTINGS=/prepress ./build.sh # najvyššia kvalita (približuje sa originálu)
FULL=1 ./build.sh               # bez kompresie (úplne preskočí Ghostscript)
```

## Generovanie autoreferátu

Autoreferát má samostatný build skript a jeden zdrojový súbor:

- `autoreferat.md` - hlavný vstup (text + titulné strany + obrazová príloha)
- `build_autoreferat.sh` - build do `autoreferat.pdf`
- `pandoc/autoreferat.defaults.yaml` - A5 nastavenia pre autoreferát

```bash
chmod +x build_autoreferat.sh   # prvýkrát
./build_autoreferat.sh          # vytvorí autoreferat.pdf
```

Voliteľné režimy kompresie sú rovnaké:

```bash
PDFSETTINGS=/screen ./build_autoreferat.sh
PDFSETTINGS=/printer ./build_autoreferat.sh
PDFSETTINGS=/prepress ./build_autoreferat.sh
FULL=1 ./build_autoreferat.sh
```

## Spúšťanie skriptov

Príklad (Python, venv + requirements):

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
python3 scripts/make_longtail_items.py
```

## Stav projektu

✅ *Dopísaná a odovzdaná*  
Aktuálnu verziu textu nájdeš v záložke `Releases` tohto repozitára.
