# Paměti - Synchronní obvody

### Synchronní obvody

Jsou ovládané extra clockem (`CLK`), který určuje kdy obvod pracuje. Příkladné obvody jsou:

- SR-flip-flop
- T-flip-flop
- D-flip-flop

V následující kapitole se podíváme na D-flip-flop, jelikož je nejzajímavější.

#### Jak synchronizovat obvod? (Rising/Falling edge detektor)

Vytvoření Rising/Falling edge detektoru viz. obrázek

Rising edge detektor (pomocí `NOT` delaye)

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/sekvencni-rising-edge-detector.png">

U falling edge detektoru jen prohodíme `NAND` gatu za `AND` gatu.

#### D (Data) Flip Flop

Pravdivostní tabulka

| Clock | D | $Q_{next}$ |
|:-----:|:-:|:----------:|
| `Rising edge` | 0 | 0 |
| `Rising edge` | 1 | 1 |
| `Non-rising` | X | Q |

D flip-flop jde vytvořit mnoha způsoby. Ukážeme si dva, a to klasickou variantu a master-slave variantu.

**Klasická varianta**

Můžeme vystavět pomocí 6 `NAND` gate.

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/Edge_triggered_D_flip_flop.svg.png">

Můžeme přidat 2 vstupy a to na set a reset. Stačí nám jen `NAND` gaty předělat na 3 vstupové.

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/Edge_triggered_D_flip_flop_with_set_and_reset.svg.png">

**Master-slave-edge-triggered D-flip-flop**

Vytvoříme ho pomocí 2 `gated D latch`. Pozor, aktivuje se na `Falling edge`.

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/Negative-edge_triggered_master_slave_D_flip-flop.svg.png">

Implementace pro `Rising edge`

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/1024px-D-Type_Flip-flop_Diagram.svg.png
">

#### Shift Register

Shift register je jeden z nejčastějších pamětí. Je tvořen z několika D flip-flopů a můžeme do něj uložit několika bitové vstupy. Zde je příklad 4 bitového shift registru.

Při každém clocku se načte bit a uloží se do prvního flip-flopu, každý další bit se posune o jedno k výstupu, poslední bit se zahodí.

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/1024px-4_Bit_Shift_Register_001.svg.png
">

### Bonusové materiály

- Shift register anglická wikipedie - [https://en.wikipedia.org/wiki/Shift_register](https://en.wikipedia.org/wiki/Shift_register)
- Flip-flopy a latche - [https://en.wikipedia.org/wiki/Flip-flop_(electronics)](https://en.wikipedia.org/wiki/Flip-flop_(electronics))
