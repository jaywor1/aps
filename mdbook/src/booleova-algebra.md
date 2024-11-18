# Obsah kapitoly

<!-- toc -->

# Booleova algebra

Booleova algebra je algebraická struktura se dvěma binárními a jednou unární operací.

Jedná se o šestici ($A$, $\land$, $\lor$, $-$,  $0$, $1$), kde $A$ je neprázdná množina

- Nejmenší prvek $0 \in A$
- Největší prvek $1\in A$
- Unární operace (negace) $\overline{0} = 1$

Budeme se soustředit na dvouprvkovou Booleovu algebru tj. budou 2 prvky:

- $1$ - ($true$)
- $0$ - ($false$)

### Základní matematické symboly

| Název | Znak | Definice |
| :-:|:-:|:-:|
| Negace | $\neg$ nebo $\overline{x}$ | Neguje vstup, tedy z 1 dostaneme 0 a obráceně |
| Disjunkce (spojení) | $\lor$ nebo $+$  | Logické **nebo** |
| Konjunkce (průsek) | $\land$ nebo $\cdot$ | Logické **a** |


### Axiomy
| Název | Součet | Součin |
|:-----:|:-------:|:-:|
| komutativní | $x+y=y+x$ | $x{\cdot}y=y{\cdot}x$ |
| distrubutivní | $(x+y){\cdot}z=x{\cdot}z+y{\cdot}z$ | $(x \cdot y)+z=(x+z){\cdot}(y+z)$ |
| neutralita 0 a 1 | $x+0=x$ | $x{\cdot}1=x$ |
| agresivita 0 a 1 | $x+1=1$ | $x{\cdot}0=0$ |
| vyloučení třetího | $x+\overline{x} = 1$ | $x{\cdot}\overline{x} = 0$ |

### Dualita Booleovy algebry
Prohozením $0 \leftrightharpoons 1$ a zároveň $+ \leftrightharpoons \cdot$ v celém obvodu/výrazu zůstane chování (logická funkce) zachovaná (samozřejmě při prohození 1 a 0 i na vstupech/výstupech).
Toto chování vychází ze symetrie námi vybraných operátorů $+$ a $\cdot$ k modelování Booleovy algebry.
| Výraz | Duální výraz |
|:-----:|:------------:|
| $x \cdot \overline{y + \overline{z}}$ | $\overline{\overline{x} + \overline{\overline{y} \cdot \overline{\overline{z}}}}$ |

### De Morganovy zákony
| Zákon |
|:-----:|
|$\overline{x} + \overline{y} = \overline{(x{\cdot}y)}$|
|$\overline{x} {\cdot} \overline{y} = \overline{(x+y)}$|

Zákon je efektivně lokální aplikací duality Booleovy algebry.
Pokud v nějaké sekci obvodu vyměníme $+$ (OR) za $\cdot$ (AND) a obráceně, a na rozhraní sekce všechny znegujeme všechny signály (tím uvnitř sekce vyměníme 1 a 0), tak chování celého obvodu zůstane zachováno.  
Z toho vyplývá, že lze vytvořit verzi De Morganových zákonů i pro 3 a více vstupů, klidně s odlišnými operátory.

### Užitečné zákony
|Název| Součet | Součin |
|:-----:|:-------:|:-:|
| asociativní | $x+(y+z)=(x+y)+z$ | $x{\cdot}(y{\cdot}z)=(x{\cdot}y){\cdot}z$ |
| o idempotenci prvků (absorbce) |$x+x=x$|$x{\cdot}x=x$|
| absorbce | $x+x{\cdot}y=x$ | $x{\cdot}(x+y)=x$ |
| dvojí negace | $\overline{\overline{{x}}} = x$ | $\overline{\overline{{x}}} = x$ |

### Hradlo XOR

Hradlo XOR můžeme kdykoliv zaměnit za disjunktivní normální formu (DNF) jeho logické funkce:

$x \oplus y = x \cdot \overline{y} + \overline{x} \cdot y$
