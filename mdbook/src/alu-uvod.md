# ALU - Úvod

Každé CPU vyžaduje ALU neboli *Arithmetic Logic Unit*. Jedná se o "krabičku", která dokáže různé operace jako například AND, OR, sčítání, odčítání, SHL, ROTL, atd... V této kapitole se dozvíte, co je vše potřeba v ALU obsáhnout.

### Vstupy

- vstup `A` a `B` - n-bitový vstup, záleží kolika bitové děláte ALU
- `CIN` - Carry IN, 1 bitová dodatečná hodnota
- `SEL` - Nebo taky `Opcode`, typicky 4 bitový, rozhoduje kolik vaše ALU umí operací

### Výstupy

- `OUT` - n-bitový výstup, záleží kolika bitové děláte ALU
- `HOUT` - použito pro násobení, využito pro vyšší polovinu výsledku
- `ZERO` - 1 bitová hodnota, rozhoduje jestli jsou na výstupu samé nuly
- `COUT` - Carry OUT z operací, 1 bitová hodnota
- `SIGN` - Znaménko hodnoty výstupu (totožné s nejvyšším bitem hodnoty)
- `GT`, `LT`, `EQ` - Nepovinně můžeme přidat operace s komparátoru, jde nahradit pomocí odčítání a `ZERO` a `SIGN` výstupy

### Operace

#### Bitwise operace

Jednoduché logické gaty pro n-bitové vstupy

- `NOT`
- `OR`
- `AND`
- `XOR`

#### Shifty

Posune nám hodnotu buď doleva `SHL`, nebo doprava `SHR`. Pokud by hodnota utekla, tedy například na hodnotu `1000 0000` budeme chtít použít operaci `SHL`, tak rozsvítíme `COUT` na `1` a `OUT` bude `0000 0000`.

- `SHL` - Shift left
- `SHR` - Shift right

#### Rotace

Stejné jako shifty, ale při přetečení nastavíme nejmenší hodnotu na `1`. Například máme hodnotu `0000 0001` a použijeme operaci `ROTR`, tak nastavíme `OUT` na `1000 0000` a označíme `COUT` na `1`

- `ROTL` - Rotate left
- `ROTR` - Rotate right

#### Sčítačka

Sčítačka by měla být schopna provést více operací, jedná se o následující.

- `ADD` - sčítání
- `SUB` - odčítání
- `INC` - inkrement (`A + 1`)
- `DEC` - dekrement (`A - 1`)

#### Násobení

Bonusově můžete dodělat násobení neboli `MUL`. Zde se výsledek rozděluje na dva výstupy a to horní část `HOUT` a dolní část `OUT`.

- `MUL` - násobení