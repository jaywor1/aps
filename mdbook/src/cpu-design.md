# CPU - Návrh

Průvodce návrhem CPU. 

### Architektura

- Harvardská - oddělená paměť programu (ROM) a paměť dat (RAM)

<p align="center">
<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/Harvard_architecture.svg.png" height="300px">
</p>

- Von Neumannova - sjednocená paměť (RAM)

<p align="center">
<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/Von_Neumann_Architecture.svg.png" height="300px">
</p>

### Náčrt

Doporučuji si načrtnout návrh vašeho CPU a podle toho se rozhodovat. Důležitý bod u vašeho návrhu CPU je kolika bitové jste dělali ALU. Pokud máte 8 bitové ALU, tak nemůžete mít 16 bitovou sběrnici (pokud něco nevyčarujete, možné je všechno...).

### Navrhované vlastnosti

- Šířka adress v ROM
- Šířka hodnot v ROM
- Šířka adress v RAM
- Šířka hodnot v RAM
- Šířka instrukcí
- Počet registrů
- Šířka sběrnice

### Definice instrukcí

Doporučuji navrhnout v excelu nebo google sheets. Tabulka s jménem instrukce, krátky popis a její kód.x

Typické instrukce jsou:
- mov - přesune hodnotu registru z R1 do R2
- movi - přesune hodnotu v instrukci do R1
- add - sečte R1 R2
- jmp - skočí na instrukci v programu
- ...

### I/O (Vstup/Výstup)

Alespoň jeden vstup a výstup

Příkladné vstupy
- klávesnice (`Input/Output/Keyboard`)
- registr (`Memory/Register`)

Příkladné výstupy
- Řada ledek (`Input/Output/LED`)
- HEX displej (`Input/Output/Hex Digit Display`)
- TTY (`Input/Output/TTY`)
- LED Matrix (`Input/Output/LED Matrix`)

### Instrukce

Vaše CPU by mělo mít několik vlastnostní:
- možnost spočítat libovolný početní problém
- libovolně pracovat s registry a pamětí

Zkráceně by mělo být, co nejvíce univerzální... Tohle je dobré mít v hlavě při návrhu instrukcí.

**Doporučené konvence**

- `{X}` - libovolný registr X
- `[X]` - hodnota na adrese X

#### Vyžadované instrukce

**Aritmetické**

Instrukce, které se zabývají počty. Typicky vše co umí vaše ALU.

Příklady:
- `add A,B` - přičti fixní registry A a B a výsledek ulož do A
- `sub {R1},{R2}` - odečti libovolné dva registry a výsledek ulož do R1
- `shr {R1}` - Proveď SHR operaci na libovolný registr R1 a výsledek ulož do R1

**Paměťové**

- Přesuny mezi registry (kromě intérních jako např. program counter)
- Immediate data instrukce - instrukce, která vám dovolí nahrát libovolné číslo do registru
    - `movi {R1} {8b number}` - nahraje do libovolného registru R1 8 bitové číslo
- Práce s RAM - primárně načítání a ukládání z RAM
    - `load {R1}` - načtení hodnoty z adresy HL do libovolného registru R1
    - `store {R1}` - uložení hodnoty z libovolného registru R1 do adresy HL 

**Control Flow**

- Jumpy v programu - rozdělují se na podmíněné a nepodmíněné
    - `jmp` - skok na 

**Ostatní**

- Typicky I/O
