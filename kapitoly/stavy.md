# Třetí stav a zkraty

Váš obvod může mít 4 stavy

- `0` - Vypnutý stav
- `1` - Zapnutý stav
- `U` - Třetí stav (`undefined`)
- `E` - Zkrat

<img src="/obrazky/logisim-stavy-1.png">

### Legitmní stavy

- `0` - Vypnutý stav
- `1` - Zapnutý stav
- `U` - Třetí stav (`undefined`)

Legitimní stavy jsou všechny kromě zkratu. Občas se tedy stane, že i třetí stav je žádoucí.

#### Třetí stav

Třetí stav je nedefinovaná hodnota. Příkladné použití je pomocí `Controlled Buffer`. Tenhle komponent vám buď propustí proud nebo ne.

#### Příklad

Máme následující obvod. Pokud nic nepouštíme máme třetí stav, hodnota není definovaná.

<img src="/obrazky/logisim-stavy-2.png">

Pokud pustíme vstup A, tak dostaneme 0, pokud pustíme vstup B, tak dostaneme 1.

<img src="/obrazky/logisim-stavy-3.png">

<img src="/obrazky/logisim-stavy-4.png">

A pokud pustíme oba vstupy na jednou, dostaneme zkrat, jelikož se hodnoty liší.

<img src="/obrazky/logisim-stavy-5.png">