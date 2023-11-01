# Booleova algebra

Booleova algebra je algebraická struktura se dvěma binárními a jednou unární operací.

Jedná se o šestici ($A$, $\land$, $\lor$, $-$,  $0$, $1$), kde $A$ je neprázdná množina

- Nejmneší prvek $0 \in A$ 
- Největší prvek $1\in A$
- Unární operace (negace) $\overline{0} = 1$

Budeme se soustředit na dvouprvkovou Booleovu algebru tj. budou 2 prvky: 
- $1$ - ($true$)
- $0$ - ($false$)

### Základní matematické symboly

| Název | Znak | Definice |
| :-:|:-:|:-:|
| Negace | $\neg$ nebo $\overline{x}$ | Neguje vstup, tedy z 1 dostaneme 0 a obráceně |
| Disjunkce (spojení) | $\cup$ nebo $\lor$  | Sjednocuje 2 množiny, logické **nebo** |
| Konjunkce (průsek) | $\cap$ nebo $\land$ | Průnik 2 množin, logické **a** |


### Axiomy
| Název | Součet | Součin |
|:-----:|:-------:|:-:|
| komutativní | $x+y=y+x$ | $x\*y=y\*x$ |
| distrubutivní | $(x+y)\*z=x\*z+y\*z$ | $(x\*y)+z=(x+z)\*(y+z)$ |
| o neutralitě 0 a 1 | $x+0=x$ | $x*1=x$ |
| vyloučení třetího | $x+\overline{x} = 1$ | $x*\overline{x} = 0$ |

### De Morganovy zákony
| Zákon |
|:-----:|
|$\overline{x} + \overline{y} = \overline{(x*y)}$|
|$\overline{x} \* \overline{y} = \overline{(x+y)}$|

### Užitečné zákony
|Název| Součet | Součin |
|:-----:|:-------:|:-:|
| asociativní | $x+(y+z)=(x+y)+z$ | $x*(y*z)=(x*y)*z$ |
| o idempotenci prvků (absorbce) |$x+x=x$|$x*x=x$|
| absorbce | $x+x\*y=x$ | $x\*(x+y)=x$ |
| dvojí negace | $\overline{\overline{{x}}} = x$ | $\overline{\overline{{x}}} = x$ |


[Další kapitola - Hradla](hradla.md)

[Menu - Teorie](../teorie.md)

[Hlavní menu](/README.md)