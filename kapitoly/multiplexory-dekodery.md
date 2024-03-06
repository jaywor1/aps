# Logisim - Multiplexory a dekodéry

### Multiplexor

Multiplexor bere $2^n$ vstupů a $n$ bitový selektivní vstup (`SEL`). Výstup má pouze jeden. Může taky obsahovat enable (`ENA`), který určuje, jestli je součástka zapnutá nebo ne.

Vysvětlíme si to na gifu. Na následujícím gifu jsou nějaké hodnoty A-D a pomocí 2 bitové hodnoty `sel`, vybíráme hodnotu, která bude na vstupu.

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/mux.gif">

Můžeme si chování multiplexoru shrnout do tabulky

| SEL | Vysílaný pin |
|:---:|:------------:|
| 00 | A |
| 01 | B |
| 10 | C |
| 11 | D |

### Demultiplexor

Demultiplexor se chová obráceně z hlediska vstupů. Má jeden vstup a $2^n$ výstupů.

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/dmx.gif">


### Dekodér

Dekodér má $2^n$ výstupů a $n$ bitový vstup. Funguje podobně jako demultiplexor, ale místo našeho vstupu, tam bude vysílat vždy $1$ viz. gif.

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/decd.gif">


#### Cvičení

Vytvořte si vlastní multiplexor, který bude mít 2 bitový `SEL` vstup a 1 bitové datové bity, pomocí logických bran.

<details>
  <summary>Řešení</summary>
<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/mux2b.png">
</details>

---

Vytvořte si vlastní dekodér, který bude mít 2 bitový `SEL` vstup.

<details>
  <summary>Řešení</summary>
<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/decd2b.png">
</details>

---

[Další kapitola - Komparátor](/kapitoly/komparator.md)

[Předchozí kapitola - Multiplexory a dekodéry](/kapitoly/multiplexory-dekodery.md)

[Hlavní menu](/README.md)