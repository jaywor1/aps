# CPU - Úvod

CPU neboli **C**entral **P**rocessing **U**nit je užitečný pro jakýkoliv logický problém. Zvládne využívat *tupé* jednotky vašeho počítače a rozhoduje, co mají dělat...


Legenda k obrázku:
- červená - control flow
- černá - data flow

<p align="center">
<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/ABasicComputer.svg.png" width="600px">
</p>

CPU se typicky skládá z:
- Control Unit (CU) - rozřazuje instrukce
- Registry - často velmi rychlé paměti CPU
- Kombinační logika - obecné kombinační obvody, zde patří například vaše ALU
- Main Memory - typicky RAM nebo ROM
- Input/Output - vstupy výstupy vašeho CPU

### Sběrnice (bus)

Sběrnice typicky přenáší informace mezi komponenty ve vašem CPU. Nejlíp se to vysvětlí na datové sběrnici, která přenáší různá data mezi registry, output z ALU apod. 

Typicky během instrukce pošlete nějakou hodnotu na sběrnici. Takže například chcete přesunout hodnotu registru B do registru C, tak vyšlete hodnotu registru B na sběrnici (enable) a nastavíte hodnotu registru C na hodnotu sběrnice (set).

Typy:
- adresová/address - typicky pro adresy v paměti
- datová/data - pro vysílaná data
- řídící/control - kominukaci mezi komponenty
