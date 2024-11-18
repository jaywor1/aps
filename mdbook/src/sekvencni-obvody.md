# Paměti - Sekvenční obvody

### Kombinační obvody

Kombinační obvody nemají žádné smyčky. Jedná se o obvody jako například vaše sčítačka, komparátor, atd.

Příklad kombinačního obvodu

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/kombinacni-1.png">

### Sekvenční obvody

Sekvenční obvody narozdíl od kombinačních mají cykly. Pomocí těchto cyklů nabírají zajímavé vlastnosti a to paměti.

Příkladný sekvenční obvod s `OR`

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/sekvencni-1.png">

#### Znázornění v pravdivostní tabulce

| A | X | X' |
|:-:|:-:|:--:|
| 0 | B | B |
| 1 | B | 1 |
| 0 | 1 | 1 |
| 1 | 1 | 1 |

Představte si B jako jakýkoliv output buď jedna nebo 2.
- 0 + `B` - existují 2 možnosti
    - 0 + **0** = 0
    - 0 + **1** = 1

Vidíme, že výstup se rovná vždy `B`, takže do tabulky dosadíme pro `B'` `B`

- 1 + `B` - existují 2 možnosti
    - 1 + **0** = 1
    - 1 + **1** = 1

Vidíme, že výstup se rovná vždy `1`, takže do tabulky dosadíme pro `B'` `1`

### Latch vs Flip Flop

#### Signály

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/signal-states.png">

Na následujícím obrázku vidíme 4 definice.

- `High Level` (Active-High) - zde probíhá ukládání
- `Low Level` (Active-Low) - značí se jako `CLK` nebo `ENA`
- `Rising/Falling edge` hodnota se zpracuje v okamžíku přechodu `CLK` signálu z high na low a opačně

#### Latch

Latch je *level-triggered*. To znamená, že latch bere vstup, když je zapnutý viz. obrázek

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/signal-latch.png">

#### Flip Flop

Flip flop je *edge-triggered*. To znamená, že buď bere vstup na `rising edge` nebo `falling edge`. Na následujícím obrázku bere vstup na `rising edge`.

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/signal-flip-flop.png">

### SR Latch

Sekvenční obvody můžete využít pro paměť pomocí hradla `OR`. Hradlo `OR` nám vstup zapne a nechá výstup neustále zapnutý, ale nemáme ho **zatím** jak vyresetovat.

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/sekvencni-1.png">

Abychom ho mohli vyresetovat, přidáme další vstup a to `R` jako reset.

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/rookie-sr-latch.png">

Zapíšeme do výrazu

$$ Q = S + B = Q + (Q \cdot \overline{R}) $$

Zapíšeme chování do pravdivostní tabulky

| R | S | Q | Q' |
|:-:|:-:|:-:|:--:|
| 0 | 0 | Q | Q |
| 0 | 1 | X | 1 |
| 1 | 0 | X | 0 |
| 1 | 1 | X | 1 |

Vytvořili jsme SR Latch, který se ale dá optimalizovat, tak abychom potřebovali 2 stejné gaty a to `NOR` viz. gif.

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/sr-latch-gif.gif">

### Oscillation apparent

V rámci sekvenčních obvodů můžete narazit na chybu `Oscillation apparent`. Znamená to, že jste v nějakém paradoxním cyklu. Vyřešíte to následovně:
- Odstraníme problémový prvek
- `Reset Simulation` (`CTRL+R`)
- Pokud není zapnuté tak --> `Auto-Propagate` (`CTRL+E`) 

### Bonusové materiály

-  Latch vs Flip Flop - [https://www.youtube.com/watch?v=LTtuYeSmJ2g](https://www.youtube.com/watch?v=LTtuYeSmJ2g)
- Latch a Flip Flop na wikipedii
    - Anglicky (víc informací) - [https://en.wikipedia.org/wiki/Flip-flop_(electronics)](https://en.wikipedia.org/wiki/Flip-flop_(electronics))
    - Česky - [https://cs.wikipedia.org/wiki/Bistabiln%C3%AD_klopn%C3%BD_obvod](https://cs.wikipedia.org/wiki/Bistabiln%C3%AD_klopn%C3%BD_obvod)