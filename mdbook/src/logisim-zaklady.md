# Logisim - Základy

Po úspěšném nainstalovaní `logisim-evolution` (viz. [návod](logisim-instalace.md)) a spuštěním, uvidíte tohle:

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/logisim-zaklady-uvod.png"/>

## Template

Jako první vám doporučuji nahrát template, kde jsou všechny gaty nastavené na narrow.

<a href="https://raw.githubusercontent.com/jaywor1/aps/main/logisim/template.circ" download>template.circ</a>

Nahrajeme template:

File --> Open --> vybereme `template.circ` soubor, který jsme stáhli.

Uložíme zvlášť, abychom nepřepsali náš template:

File --> Save As --> Uložíme nový soubor (taky můžeme použít zkratku `Ctrl + Shift + S`)

## Základy

### Kurzory

Kurzory se nachází v horním menu, levým kliknutím můžeme vybrat kurzor.

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/logisim-uvod-kurzory.png"/>

Jsou celkem 4
- Červený kurzor - interaktivní kurzor, měníme pomocí něj hodnoty nebo se pohybujeme v logickém obvodu
- Černý kurzor - měníme zapojení, vkládáme různé komponenty
- Dráty - tvoření drátů
- Text - na popsání obvodu

> Kurozry můžeme měnit pomocí zkratky `Ctrl + [1-4]`

### První obvod

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/logisim-uvod-2.png"/>

V zelénem obdelníku se vyskytují složky obsahující různé komponenty.

#### Zadání

Vytvořte logický obvod, který se bude chovat úplně stejně jako logický AND.

---

První si vytvoříme nový obvod a to tím, že klikneme pravým tlačítkem na název našeho projektu (složka ve ktéré máme obvod `main`). U mě je to `logisim-uvod` viz. obrázek

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/logisim-uvod-add-circuit.png">

Klikneme na `Add Circuit` a zvolíme jméno obvodu třeba `custom_and`, potvrdíme a klikneme na něj dvakrát pro otevření.

První rozklikneme složku `Wiring` a klikneme na komponent `Pin`. Komponent přetáhneme do obvodu dvakrát (AND má 2 vstupy)

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/logisim-uvod-4.png">

Poté tam dáme AND, který najdeme v `Gates/AND Gate` klikneme na komponentu a přidáme ji.

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/logisim-uvod-5.png">

Taky musíme přidat výstup (output pin), což je vlastně `Pin`. Takže přetáhneme komponentu do obvodu.

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/logisim-uvod-6.png">

Klikneme na náš pin a změníme jeho vlastnosti na následující.

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/logisim-uvod-output-pin.png">


Nezbývá nám nic jiného než obvod propojit a máme následující logický obvod. Přidáme labely pro přehlednost, které taky najdeme ve vlastnostech.

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/logisim-uvod-8.png">

Náš nově vytvořený obvod vložíme do `main`
  - Klikneme dvakrát na `main`
  - Vybereme `custom_and` a vložíme do obvodu
  - Přidáme nějaké input a output piny pro testování

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/logisim-uvod-custom-and.png">

Následovně můžeme měnit hodnotu input pinů a to, že vyberem červenou ruku nahoře v nabídce nebo pomocí zkratky `Ctrl + 1`



### Vlastnosti komponent

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/logisim-uvod-3.png" width=300px/>

Jsou 2 možnosti jak změnit vlastnosti komponent:
- Pouze pro jednu instanci komponentu
   - Změníme pomocí vybrání komponentu **v obvodu**
- Pro všechny instance kompenentu
    - Změníme pomocí vybrání komponentu **v nabídce**

Nejčastěji upravované vlastnosti jsou:
- `Facing` - Otočení komponenty
- `Label` - Text u komponenty
- `Gate Size` - Velikost hradla
- `Output?` - Jestli je `Pin` output nebo ne

### Cvičení

Vytvořte podobné obvody pro OR a XOR.