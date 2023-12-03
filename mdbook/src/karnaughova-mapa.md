# Karnaughova mapa

Karnaughova mapa je prostředek pro minimalizaci logických obvodů. Pro pochopení Karnaughovy mapy musíme první pochopit Grayův kód.

### Grayův kód

Grayův kód je binární číselná soustava, ve které se **každé dvě po sobě jdoucí hodnoty liší v jedné bitové pozici**.

Příkladná tabulka pro 3 bity (tučně zvýrazněný změněný bit):

|A|B|C|
|:-:|:-:|:-:|
|0|0|0|
|0|0|**1**|
|0|**1**|1|
|0|1|**0**|
|**1**|1|0|
|1|1|**1**|
|1|**0**|1|
|1|0|**0**|

### Karnaughova mapa - příklad 1

Máme pravdivnostní tabulku se vstupy \\(A,B,C,D\\) a výstupem \\(Q\\):

| A | B | C | D | Q | index bitu |
|:-:|:-:|:-:|:-:|:-:|:----------:|
| 0 | 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 0 | 1 | 1 | 1 |
| 0 | 0 | 1 | 0 | 1 | 2 |
| 0 | 0 | 1 | 1 | 1 | 3 |
| 0 | 1 | 0 | 0 | 0 | 4 |
| 0 | 1 | 0 | 1 | 0 | 5 |
| 0 | 1 | 1 | 0 | 0 | 6 |
| 0 | 1 | 1 | 1 | 0 | 7 |
| 1 | 0 | 0 | 0 | 1 | 8 |
| 1 | 0 | 0 | 1 | 1 | 9 |
| 1 | 0 | 1 | 0 | 1 | 10 |
| 1 | 0 | 1 | 1 | 1 | 11 |
| 1 | 1 | 0 | 0 | 1 | 12 |
| 1 | 1 | 0 | 1 | 1 | 13 |
| 1 | 1 | 1 | 0 | 0 | 14 |
| 1 | 1 | 1 | 1 | 0 | 15 |

1. Vytvoříme tabulku pomocí indexů v pravdivnostní tabulce (odvíjí se od Grayova kódu). Neboli doplníme do obrázku

<p><img src="/obrazky/K-map_minterms_A.svg.png" width="648px"></p>

Vznikne nám následující tabulka

<p><img src="/obrazky/karnaughova-mapa-1-1.png" width="512px"></p>

2. Zakroužkujeme sousedy

Musíme zakroužkovat všechny \\(1\\), kroužkujeme buď samostatnou \\(1\\) nebo sudé počty jedniček \\(2,4,6...\\)

<p><img src="/obrazky/karnaughova-mapa-1-2.png" width="512px"></p>

3. Vytvoříme výrazy

- Růžová - \\(A \cdot \overline{C}\\)
- Zelená - \\(A \cdot \overline{B}\\)
- Modrá - \\(\overline{B} \cdot C\\)
- Oranžová - \\(\overline{A} \cdot \overline{B} \cdot \overline{C} \cdot D\\)

4. Sečteme výrazy

\\((A \cdot \overline{C}) + (A \cdot \overline{B}) + (\overline{B} \cdot C ) + (\overline{A} \cdot \overline{B} \cdot \overline{C} \cdot D)\\)

5. Upravíme výraz

\\(A\overline{C}+A\overline{B}+\overline{B}C+\overline{A} \cdot \overline{B} \cdot \overline{C} \cdot D = A\overline{C} + \overline{B} \cdot (A + C + \overline{A} \cdot \overline{C} \cdot D)\\)

### Karnaughova mapa - příklad 2

Máme pravdivnostní tabulku se vstupy \\(A,B,C\\) a výstupem \\(Q\\):

| A | B | C | Q |
|:-:|:-:|:-:|:-:|
| 0 | 0 | 0 | 1 |
| 0 | 0 | 1 | 0 |
| 0 | 1 | 0 | 1 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 0 | 1 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 0 |
| 1 | 1 | 1 | 0 |


1. Vytvoříme si Karnaughovu mapu (tam kde jsou písmena, tak je hodnota nastavená na 1)

<p align="center">
  <img src="/obrazky/karnachova-mapa.png" width=512px/>
</p>

2.  Doplníme do tabulky

<p align="center">
  <img src="/obrazky/karnaughova-mapa-2.png" width=512px/>
</p>

3. Zakroužkujeme největší obdelníky a vyjádříme je

<p align="center">
  <img src="/obrazky/karnaughova-mapa-3.png" width=512px/>
</p>

Vidíme, že je blok nezávislý na tom jestli je \\(A\\) \\(0\\) nebo \\(1\\) , takže zahrneme jen proměnou \\(B\\) a \\(C\\)

- \\(B\\) musí být \\(0\\)
- \\(C\\) musí být \\(0\\)

\\(Q_1 = \overline{B} * \overline{C}\\)

Součin jsme použili, protože je \\(\*\\) totožné logickému *a zároveň platí* (v programovacím jazyku C -->`&&`)

Jelikož se jedná o torus (viz. gif), můžeme označit i hodnoty, které se nacházejí "vedle sebe" (na začátku a na konci)


<p align="center">
  <img src="/obrazky/Torus_from_rectangle.gif" width=512px/>
</p>


<p align="center">
  <img src="/obrazky/karnaughova-mapa-4.png" width=512px/>
</p>

Vidíme, že je výraz \\(Q_2\\) nezávislý na proměnné \\(B\\) (může být \\(0\\) nebo \\(1\\))

- \\(A\\) musí být \\(0\\)
- \\(C\\) musí být \\(0\\)

\\(Q_2 = \overline{A} * \overline{C}\\)

4. Sjednotíme výrazy

Výsledné výrazy sečteme

\\(Q = Q_1  + Q_2 = (\overline{B} * \overline{C}) + (\overline{A} * \overline{C})\\)

5. Výsledný výraz si můžeme postavit v logisimu viz. obrázek

<p align="center">
  <img src="/obrazky/karnaughova-mapa-1-logisim.png" width=648px/>
</p>

6. Zkontrolujeme pravdivnostní tabulku.
	1. Klikneme pravým tlačítkem na circuit v nabídce (základní je main)
	2. Klikneme na tlačítko **Build Circuit**
	3. Potvrdíme tlačítkem **OK**, popřípadě **Yes**
	4. Vybereme v nabídce **Table**
	5. Dostaneme tabulku viz. obrázek


<p align="center">
  <img src="/obrazky/karnaughova-mapa-1-table.png" width=312px/>
</p>


[Předchozí kapitola - Booleova-algebra](/kapitoly/booleova-algebra.md)
