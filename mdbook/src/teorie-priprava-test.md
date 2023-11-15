# Teorie - Příprava na test

#### 1. **Nakresli logická hradla**, zapiš **operátor hradla jako výraz** (např. X=A+B), nakresli **pravdivostní tabulku**:

a) NOT
<details>
  <summary>Řešení - symbol</summary>
  <img src="/obrazky/1920px-NOT_ANSI_Labelled.svg.png" width=192px>
</details>
<details>
  <summary>Řešení</summary>

$X = \overline{A}$

|A|X|
|:-:|:-:|
|0|1|
|1|0|

</details>

b) OR
<details>
  <summary>Řešení - symbol</summary>
  
<img src="/obrazky/OR_ANSI_Labelled.svg.png" width="192px"/>
</details>
<details>
  <summary>Řešení</summary>

$X = A + B$

|A|B|X|
|:-:|:-:|:-:|
|0|0|0|
|0|1|1|
|1|0|1|
|1|1|1|

</details>

c) XNOR
<details>
  <summary>Řešení - symbol</summary>
<img src="/obrazky/1920px-XNOR_ANSI_Labelled.svg.png" width="192px"/>
</details>
<details>
  <summary>Řešení</summary>

$X = \overline{(A \bigoplus B)}$

|A|B|X|
|:-:|:-:|:-:|
|0|0|1|
|0|1|0|
|1|0|0|
|1|1|1|

</details>

d) AND
<details>
  <summary>Řešení - symbol</summary>
<img src="/obrazky/AND_ANSI_Labelled.svg.png" width="192px"/>
</details>
<details>
  <summary>Řešení</summary>
  
$X = A \cdot B$

|A|B|X|
|:-:|:-:|:-:|
|0|0|0|
|0|1|0|
|1|0|0|
|1|1|1|

</details>

#### 2. Pojmenuj následující hradla, zapiš jejich **výraz** a **pravdivnostní tabulku**

a) <img src="/obrazky/1920px-NOR_ANSI_Labelled.svg.png" width="192px"/>

<details>
  <summary>Řešení</summary>

NOR

$X = \overline{(A + B)}$

|A|B|X|
|:-:|:-:|:-:|
|0|0|1|
|0|1|0|
|1|0|0|
|1|1|0|

</details>

b) <img src="/obrazky/1920px-XOR_ANSI_Labelled.svg.png" width="192px"/>

<details>
  <summary>Řešení</summary>

XOR

$X = A \bigoplus B$

|A|B|X|
|:-:|:-:|:-:|
|0|0|0|
|0|1|1|
|1|0|1|
|1|1|0|

</details>

c) <img src="/obrazky/1920px-NAND_ANSI_Labelled.svg.png" width="192px"/>

<details>
  <summary>Řešení</summary>

NAND

$X = \overline{(A \cdot B)}$

|A|B|Q|
|:-:|:-:|:-:|
|0|0|1|
|0|1|1|
|1|0|1|
|1|1|0|

</details>

#### 3. Zapiš výraz pro výstupy zapojení a pro označené vodiče:

![](/obrazky/teorie-cviko-1.png)

<details>
  <summary>Řešení</summary>

a) $A+B$

b) $\overline{C}$

$X = (A+B) \bigoplus \overline{C}$

</details>

![](/obrazky/teorie-cviko-2.png)

<details>
  <summary>Řešení</summary>

a) $\overline{A}$

b) $B+C$

c) $\overline{(B+C) \bigoplus D}$

$X = \overline{A} * (B+C)$

$Y = (B+C) * \overline{(B+C) \bigoplus D}$

</details>


#### 4. Nakresli zapojení pro následující výraz a nakresli pravdivnostní tabulku

$X = (A \cdot B) + (\overline{A \bigoplus C}) + \overline{B}$

<details>
  <summary>Řešení - zapojení</summary>
<img src="/obrazky/teorie-cviko-3.png">

</details>
<details>
  <summary>Řešení - tabulka</summary>

|$A$|$B$|$C$|$A \cdot B$|$\overline{A \bigoplus C} $| $\overline{B}$ | $X$ |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| 0 | 0 | 0 | 0 | 1 | 1 | 1 |
| 0 | 0 | 1 | 0 | 0 | 1 | 1 |
| 0 | 1 | 0 | 0 | 1 | 0 | 1 |
| 0 | 1 | 1 | 0 | 0 | 0 | 0 |
| 1 | 0 | 0 | 0 | 0 | 1 | 1 |
| 1 | 0 | 1 | 0 | 1 | 1 | 1 |
| 1 | 1 | 0 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 1 | 0 | 1 |

</details>
