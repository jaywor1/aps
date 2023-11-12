# Teorie - Příprava na test

#### 1. **Nakresli logická hradla**, zapiš **operátor hradla jako výraz** (např. $X=A+B$), nakresli **pravdivostní tabulku**:

a) NOT
<details>
  <summary>Řešení</summary>
  
<img src="/obrazky/1920px-NOT_ANSI_Labelled.svg.png" width=192px>

$X = \overline{A}$

|A|X|
|:-:|:-:|
|0|1|
|1|0|

</details>

b) OR

<details>
  <summary>Řešení</summary>
  
<img src="/obrazky/OR_ANSI_Labelled.svg.png" width="192px"/>

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
  <summary>Řešení</summary>
  
<img src="/obrazky/1920px-XNOR_ANSI_Labelled.svg.png" width="192px"/>

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
  <summary>Řešení</summary>
  
<img src="/obrazky/AND_ANSI_Labelled.svg.png" width="192px"/>

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

