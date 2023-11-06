2# Karnaughova mapa

Karnaughova mapa je prostředek pro minimalizaci logických obvodů.

### Vysvětlení na příkladu

Máme pravdivnostní tabulku se vstupy $A,B,C$ a výstupem $Q$:

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


1. Vytvoříme si Karnachovu mapu (tam kde jsou písmena, tak je hodnota nastavená na 1)



![](/obrazky/karnachova-mapa.png)

2.  Doplníme do tabulky

![](/obrazky/karnaughova-mapa-2.png)

4. Zakroužkujeme největší obdelníky a vyjádříme je

![](/obrazky/karnaughova-mapa-3.png)

Vidíme, že je blok nezávislý na tom jestli je $A$ $0$ nebo $1$ , takže zahrneme jen proměnou $B$ a $C$

- $B$ musí být $0$
- $C$ musí být $0$

$$Q_1 = \overline{B} * \overline{C}$$

Součin jsme použili, protože je $*$ totožné logickému *a zároveň platí* (v programovacím jazyku C -->`&&`)

Jelikož se jedná o torus (viz. gif), můžeme označit i hodnoty, které se nacházejí "vedle sebe" (na začátku a na konci)

![](/obrazky/Torus_from_rectangle.gif)


![[karnaughova-mapa-4.png]]

![](/obrazky/karnaughova-mapa-4.png)

Vidíme, že je výraz $Q_2$ nezávislý na proměnné $B$ (může být $0$ nebo $1$)

- $A$ musí být $0$
- $C$ musí být $0$

$$Q_2 = \overline{A} * \overline{C}$$

4. Sjednotíme výrazy

Výsledné výrazy sečteme

$$Q = Q_1  + Q_2 = (\overline{B} * \overline{C}) + (\overline{A} * \overline{C})$$

5. Výsledný výraz si můžeme postavit v logisimu viz. obrázek

![](/obrazky/karnaughova-mapa-1-logisim.png)

6. Zkontrolujeme pravdivnostní tabulku.
	1. Klikneme pravým tlačítkem na circuit v nabídce (základní je main)
	2. Klikneme na tlačítko **Build Circuit**
	3. Potvrdíme tlačítkem **OK**, popřípadě **Yes**
	4. Vybereme v nabídce **Table**
	5. Dostaneme tabulku viz. obrázek


![](/obrazky/karnaughova-mapa-1-table.png)
