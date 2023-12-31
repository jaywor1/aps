# ALU - sčítačka/odčítačka

Sčítačka je podstatná část ALU. Po určitých úpravách z ní můžeme udělat dokonce i odčítačku. Začneme jednoduše a to s jedno bitovou verzí.

### Half-adder (1 bit adder)

Pravdivnostní tabulka pro half-adder vypadá následovně.

| A | B | OUT | COUT |
|:-:|:-:|:---:|:----:|
| 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 1 |

Pomocí karnughovy mapy nebo i logiky (odkoukání), můžeme zjistit, že sčítání (`OUT`) je vlastně `XOR` a `COUT` je jenom `AND`. Takže half-adder vypadá následovně.

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/alu-half-adder.png">

### Full-adder

Full-adder využívá half adder a pomocí něj přijímá další argument a to `CIN`, neboli carry in.

Pravdivnostní tabulka pro full-adder vypadá následovně.

| CIN | A | B | OUT | COUT |
|:---:|:-:|:-:|:---:|:----:|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 0 |
| 0 | 1 | 0 | 1 | 0 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 1 |
| 1 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 1 |

Jediné co tedy uděláme je, že přidáme half-adder 2 krát jeden na `A+B` a druhý na výsledek z prvního `X` a `CIN`, neboli `X+CIN`.

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/alu-full-adder.png">