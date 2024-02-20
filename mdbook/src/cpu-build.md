# CPU - Stavba

Doporučuji si CPU rozdělit na 5 částí:
- Registry - vnitřní paměti CPU
- CU (Control Unit) - něco co vaši instrukci přijme a podle toho vykoná kroky
- Control room - debug část pro čtení obsahů registrů a podobných věcí
- Input/Output - vstupy,výstupy...
- Paměť (RAM/ROM) - v harvardské architektuře typicky ROM pro program a RAM pro data, ve Von Neumannově architektuře pouze RAM

### Hrdinské komponenty pro vaše CPU

- `Gates/Controlled Buffer` - rozhoduje jestli pouštíte proud nebo ne, v parametrech navolíte pouze vstupní a výstupní `Data Bits`
- `Wiring/Tunnel` - komponenta pro přehlednost, vytvoříte n komponent se stejným labelem (`Label`) a bude vám přenášet vstup bez nutných kabelů přes celou plochu
- `Wiring/Probe` - debug věc, pro zjištění hodnoty na kabelu...
- `Memory/Register` - nejpoužívanější paměťová buňka


### Stepper

Stepper vám "stepuje" (krokuje) vaše instrukce. Jelikož některé instrukce zaberou více cyklů...

Jedná se o jednoduchý n-bitový counter s n-bitovým decoderem. Se vstupem `CLK` (Clock) a `RST` (Reset) a n-výstupy.

2 bitový stepper vypadá následovně:

<p align="center">
<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/stepper.png" height="300px">
</p>

### Registry

Ovládání registru může vypadat následovně

<p align="center">
<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/register.png">
</p>

Velmi doporučuji použití tunelů (`Wiring/Tunnel`) a vytvořit konvence jako například `<registr>_set` apod..

Ovládání pro register A:
- `a_set` - 1, když setujeme register A
- `a_ena` - 1, když pouštíme register A na sběrnici
- `rst` - 1, když chceme provést reset registrů

### Program Counter (PC)

Program counter je komponenta CPU, která vám říká, na jakém řádku programu (instrukce) se nacházíte. Potřebujete pro něj 2 věci:
- zvětšit o 1
- změnit hodnotu pro `jmp`

Na obrázku jsou piny na ovládání, to je jen pro testování.

<p align="center">
<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/pc-register.png">
</p>
