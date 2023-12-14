# Logisim - Základy

Po úspěšném nainstalovaní `logisim-evolution` (viz. [návod](/kapitoly/logisim-instalace.md)) a spuštěním, uvidíte tohle:

<img src="/obrazky/logisim-zaklady-uvod.png"/>

## Template

Jako první vám doporučuji nahrát template, kde jsou všechny gaty nastavené na narrow.

![Download - template](/logisim/template.circ)

Nahrajeme template:

File --> Open --> vyberem `template.circ` soubor, který jsme stáhli.

Uložíme zvlášť, abychom nepřepsali náš template:

File --> Save As --> Uložíme nový soubor (taky můžeme použít zkratku `Ctrl + Shift + S`)

## Základy

<img src="/obrazky/logisim-uvod-2.png"/>

V zeléném obdelníku se vyskytují složky obsahující různé komponenty.

První rozklikneme složku `Wiring` a klikneme na komponent `Pin`

Následně máme komponent vybraný a můžeme ho hodit do našeho obvodu (Do červené plochy z obrázku)

## Vlastnosti komponent

<img src="/obrazky/logisim-uvod-3.png"/>

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

Vytvořte obvod, kde budou 2 piny označené `A`,`B` a budou procházet hradlem `AND` do výstupního pinu `C`

<details>
  <summary>Řešení</summary>
<img src="/obrazky/logisim-uvod-reseni.png"/>
</details>