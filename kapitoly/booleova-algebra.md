# Booleova algebra

Booleova algebra je algebraická struktura se dvěma binárními a jednou unární operací. Budeme se soustředit na dvouprvkovou Booleovu algebru tj. budou 2 prvky: 
- $1$ - ($true$)
- $0$ - ($false$)

Má následující unární operace:

### Axiomy
| Název | Exprese 1 | Exprese 2 |
|:-----:|:-------:|:-:|
| komutativní | $x+y=y+x$ | $x\*y=y\*x$
| distrubutivní | $(x+y)\*z=x\*z+y\*z$ | $(x\*y)+z=(x+z)\*(y+z)$ |
| o neutralitě 0 a 1 | $x+0=x$ | $x*1=x$ |
| vyloučení třetího | $x+\neg{x} = 1$ | $x*\neg{x} = 0$ |

### De Morganovy zákony
| Zákon |
|:-----:|
|$\neg{x} + \neg{y} = \neg({x*y})$
|$\neg{x} \* \neg{y} = \neg({x+y})$

### Užitečné zákony
|Název| Exprese 1 | Exprese 2 |
|:-----:|:-------:|:-:|
| o idempotenci prvků|$x+x=x$|$x*x=x$|
| absorbce | $x+x\*y=x$ | $x\*(x+y)=x$ |
| dvojí negace | $\neg\neg{x} = x$ |

