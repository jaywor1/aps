# Paměti - Asynchronní obvody

Asynchronní obvody fungují bez clocku, takže jakmile je na vstupu hodnota, zpracuje se.

#### SR (Set-Reset) latch

SR latch jde vytvořit mnoho způsoby, nejčastější jsou `SR NOR latch` a `SR NAND latch`

Obrázek `SR  NOR latch`

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/sr-latch.png">


Obrázek `SR NAND latch`

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/1024px-SR_Flip-flop_Diagram.svg.png" width="500px">

#### JK latch

JK latch se primárně používá na toggle.

Pravdivostní tabulka JK latch

| J | K | Q' | Poznámka |
|:-:|:-:|:--:|:-------:|
| 0 | 0 | Q | Beze změny |
| 0 | 1 | 0 | Reset |
| 1 | 0 | 1 | Set |
| 1 | 1 | Q | Toggle |

#### Gated D (Delay) latch

- Gatování - možnost vypnout či zapnout prvek, pomocí vstupu (typicky `ENABLE`).

D latch využívá vstup enable jako 2 vstup. Tvořící sérii pravidel.

| E | D | Q | $ \overline{Q} $ | Poznámka |
|:-:|:-:|:-:|:--------------:|:--------:|
| 0 | X | Q' | $ \overline{Q'} $ | Beze změny |
| 1 | 0 | 0 | 1 | Reset |
| 1 | 1 | 1 | 0 | Set |

`Gated D latch`

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/D-type_Transparent_Latch_(NOR).svg.png" width="500px">