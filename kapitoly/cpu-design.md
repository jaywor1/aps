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

### Navrhované šířky/počty

- Šířka adress v ROM
- Šířka hodnot v ROM
- Šířka adress v RAM
- Šířka hodnot v RAM
- Šířka instrukcí
- Počet registrů
- Šířka sběrnice

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

## Instrukce

Vaše CPU by mělo mít několik vlastností:
- možnost spočítat libovolný početní problém
- libovolně pracovat s registry a pamětí

Zkráceně by mělo být, co nejvíce univerzální... Tohle je dobré mít v hlavě při návrhu instrukcí.

Instrukci si můžete rozčlenit jakkoliv chcete. U mého CPU jsem měl pouze OP code a ARGy, ale můžete do instrukce schovat různé flagy apod... (technicky vzato jsou to taky argumenty, ale pouze jednobitové :D)

  <img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/instruction.png">

V excelu pak vypadají instrukce nějak takhle

  <img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/excel-instructions.png">

**Doporučené konvence**

- `{X}` - libovolný registr X
- `[X]` - hodnota na adrese X


Doporučuji navrhnout v excelu nebo google sheets. Tabulka s jménem instrukce, krátky popis a její kód.

Typické instrukce jsou:
- mov {R1} {R2} - přesune hodnotu registru z R1 do R2
- movi {R1} 8b - přesune hodnotu v instrukci do R1
- add {R1} {R2} - sečte R1 R2
- jmp {X} - skočí na instrukci {X} v programu
- ...

### Průběh exekuce instrukce

- Fetch
    - Načti hodnotu z instrukční paměti na adrese PC (Program Counter) do IR (Instruction Register)
    - Přičti k PC jedna

- Decode instruction
    - Přečti IR, rozhodni se, zda potřebuješ další bity k instrukci
    - Pokud ano, opakuj fetch, ale výsledek ulož do argument registrů,...

- Execute instruction
    - Podle toho, co je v IR, tak se zachovej

### Vyžadované instrukce

**Aritmetické**

Instrukce, které se zabývají počty. Typicky vše co umí vaše ALU.

Příklady:
- `add A,B` - přičti fixní registry A a B a výsledek ulož do A
- `sub {R1},{R2}` - odečti libovolné dva registry a výsledek ulož do R1
- `shr {R1}` - Proveď SHR operaci na libovolný registr R1 a výsledek ulož do R1

**Paměťové**

- Přesuny mezi registry (kromě interních jako např. program counter)
- Immediate data instrukce - instrukce, která vám dovolí nahrát libovolné číslo do registru
    - `movi {R1} {8b number}` - nahraje do libovolného registru R1 8 bitové číslo
- Práce s RAM - primárně načítání a ukládání z RAM
    - `load {R1}` - načtení hodnoty z adresy HL (dva fixní registry pro adresu RAMky) do libovolného registru R1
    - `store {R1}` - uložení hodnoty z libovolného registru R1 do adresy HL 

**Control Flow**

Jumpy v programu - rozdělují se na podmíněné a nepodmíněné

Nepodmíněné:
- `jmp {X}` - jump na určitou instrukci
- `jmpr {X}` - jump na instrukci o X instrukcí dopředu či dozadu

Podmíněné:
- `jmpz {X}` - skoč na X instrukci pokud je flaga `ZERO` rovná jedné
- `jumpr {X}` - to stejné ale relativní jump
- `jmpc {X}` - skoč na X instrukci pokud je flaga `CARRY` rovná jedné

**Ostatní**

- Typicky I/O
-  `led` - toggle na LEDku
