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

| Název | Operátor | Operátor v predikátové logice | Definice |
| :-:|:-:|:-:|:-:|
| Negace | $\overline{x}$ | $\neg{x}$ | Neguje vstup, tedy z 1 dostaneme 0 a obráceně |
| Disjunkce (spojení) | $+$ | $\lor$ | Logické **nebo** |
| Konjunkce (průsek) | $\cdot$ | $\land$ |Logické **a** |
| XOR | $\bigoplus$ | $\nRightarrow$ | Exkluzivní disjunkce/OR |


### Axiomy
| Název | Součet | Součin |
|:-----:|:-------:|:-:|
| komutativní | $x+y=y+x$ | $x{\cdot}y=y{\cdot}x$ |
| distrubutivní | $(x+y){\cdot}z=x{\cdot}z+y{\cdot}z$ | $(x \cdot y)+z=(x+z){\cdot}(y+z)$ |
| o neutralitě 0 a 1 | $x+0=x$ | $x{\cdot}1=x$ |
| vyloučení třetího | $x+\overline{x} = 1$ | $x{\cdot}\overline{x} = 0$ |

### De Morganovy zákony
| Zákon |
|:-----:|
|$\overline{x} + \overline{y} = \overline{(x{\cdot}y)}$|
|$\overline{x} {\cdot} \overline{y} = \overline{(x+y)}$|

### Užitečné zákony
|Název| Součet | Součin |
|:-----:|:-------:|:-:|
| asociativní | $x+(y+z)=(x+y)+z$ | $x{\cdot}(y{\cdot}z)=(x{\cdot}y){\cdot}z$ |
| o idempotenci prvků (absorbce) |$x+x=x$|$x{\cdot}x=x$|
| absorbce | $x+x{\cdot}y=x$ | $x{\cdot}(x+y)=x$ |
| dvojí negace | $\overline{\overline{{x}}} = x$ | $\overline{\overline{{x}}} = x$ |


[Další kapitola - Hradla](/kapitoly/hradla.md)

[Hlavní menu](/README.md)