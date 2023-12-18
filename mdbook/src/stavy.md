# Třetí stav a zkraty

Váš obvod může mít 4 stavy

- `0` - Vypnutý stav
- `1` - Zapnutý stav
- `U` - Třetí stav (`undefined`)
- `E` - Zkrat

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/logisim-stavy-1.png" width="512px">

### Legitimní stavy

- `0` - Vypnutý stav
- `1` - Zapnutý stav
- `U` - Třetí stav (`undefined`)

Legitimní stavy jsou všechny kromě zkratu. Občas se tedy stane, že i třetí stav je žádoucí.

#### Třetí stav

Třetí stav je nedefinovaná hodnota. Příkladné použití je pomocí `Controlled Buffer` (Najdeme v `Gates/Controlled Buffer`). Tenhle komponent vám buď propustí proud, nebo ne.

#### Příklad

Máme následující obvod. Pokud nic nepouštíme, máme třetí stav, hodnota není definovaná.

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/logisim-stavy-2.png" width="512px">

Pokud pustíme vstup A, tak dostaneme 0, pokud pustíme vstup B, tak dostaneme 1.

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/logisim-stavy-3.png" width="512px">

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/logisim-stavy-4.png" width="512px">

A pokud pustíme oba vstupy na jednou, dostaneme zkrat, jelikož se hodnoty liší.

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/logisim-stavy-5.png" width="512px">
