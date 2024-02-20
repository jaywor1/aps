# CPU - Programování

Velmi zkrácená dokumentace pro customasm...

Pro vaše CPU budete muset vytvořit example program. Velmi doporučuji webovou aplikaci `customasm`
- git - [https://github.com/hlorenzi/customasm](https://github.com/hlorenzi/customasm)
- web - [https://hlorenzi.github.io/customasm/web/](https://hlorenzi.github.io/customasm/web/)
- wiki - [https://github.com/hlorenzi/customasm/wiki](https://github.com/hlorenzi/customasm/wiki)


Jelikož má customasm svou vlastní dokumentaci, tak tuhle část projdu velmi zkráceně...

### Subruledef

První si nadefinujeme podpravidla (typy) jako například registry apod.

```
#subruledef register
{
    A => 0x0
    B => 0x1
    C => 0x2
    D => 0x3
}
```

### Ruledef (instrukce)

Zde nadefinujeme instrukce, viz. příkladná `mv` instrukce. Dejme tomu, že opcode pro mov instrukci je `1001` a šířka instrukcí je 16 bitů.

```
#ruledef
{
    mv {src: register},{dst: register} => 0b1001 @ src`4 @ dst`4 @ 0x0
}
```

- `mv` - název instrukce
- `{src: register}` - název parametru a typ, zde typ definovaný v `subruledef` register
- `,` - separátor
- `{dst: register}` - druhý argument `dst`
- `=>` - operátor přepiš jako
- `0b1001` - `0b` znamená zapsáno v bitech a `1001` je opcode instrukce
- `@` - používá se jako separátor
- `` src`4 `` - argument src zakóduj jako 4 bitový
- `` dst`4 `` - stejné
- `0x0` - `0x` hexdecimální zápis čísla `0`, pro doplnění do 16 bitů (naše šířka instrukce)

Dobré podotknout, že jako typ zde používám pouze register, ale velmi často použijete i další typy a to:
- `uXX` - unsigned hodnoty
- `sXX` - signed hodnoty
- `iXX` - signed nebo unsigned hodnoty

### Programování

Typicky začnete program s `start`. Velmi doporučuji psát komentáře pomocí `;`

```
start:
    ; přesune hodnotu z registru C do registru D
    mv C,D
```

Celý example vypadá takhle:

```
#subruledef register
{
    A => 0x0
    B => 0x1
    C => 0x2
    D => 0x3
}

#ruledef
{
    mv {src: register},{dst: register} => 0b1001 @ src`4 @ dst`4 @ 0x0
}

start:
    ; přesune hodnotu z registru C do registru D
    mv C,D

```

### Export do logisimu

- `Output Format: LogiSim 8-bit` nebo `Output Format: LogiSim 16-bit` podle šířky paměti
- `Assemble (Ctrl+Enter) >>`
- Zkopírujte výstup a uložte do `.txt` souboru
- Klikněte na vaši `Memory/ROM` komponentu v logisimu
- Klikněte u vlastnosti `Contents` na `(click to edit)`
- `Open` a vyberte soubor, kde jste si uložili výstup customasm
