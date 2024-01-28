# Sekvenční obvody

### Kombinační obvody

Kombinační obvody nemají žádné smyčky. Jedná se o obvody jako například vaše sčítačka, komparátor, atd.

Příkald kombinačního obvodu

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/kombinacni-1.png">

### Sekvenční obvody

Sekvenční obvody narozdíl od kombinačních mají cykly. Pomocí těchto cyklů nabírají zajímavé vlastnosti a to paměti.

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/sekvencni-1.png">

#### Znázornění v pravdivnostní tabulce

| A | B | B' |
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


### Využití sekvenčních obvodů pro paměť

Sekvenční obvody můžete využít pro paměť pomocí hradla `NAND`.

### Oscillation apparent

V rámci sekvenčních obvodů můžete narazit na chybu `Oscillation apparent`. Znamená to, že jste v nějakém paradoxním cyklu. Vyřešíte to následovně:
- Odstraníme problémový prvek
- `Reset Simulation` (`CTRL+R`)
- Pokud není zapnuté tak --> `Auto-Propagate` (`CTRL+E`) 