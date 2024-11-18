# Multiplexory a dekodéry

### Reprezentace čísel jako binární řetězce

Čísel (zatím kladných, později celých) je nekonečno, a jsou to abstraktní objekty. Aby s nimy šlo pracovat, je potřeba je umět nějak
vyjádřit. My, lidé, na to používáme desitkovou soustavu, zapíšeme např. číslo 137. Počítače pracují pouze s 0 a 1, takže tato reprezentace není vhodná. Je potřeba zvolit nějakou jinou. 

#### Dvojková soustava

Přirozeně se nabízí použít dvojkovou soustavu neboli binární kód. Číslo reprezentujeme jako součet mocnin dvou (namísto 10 v desítkové). Tento
způsob má maximální využití bitů pro přenos informace, tj. pro čísla dané velikosti je nejkratší. Pro reprezentování čísla $2^b-1$ potřebujeme $b$ bitů.

<img src="https://upload.wikimedia.org/wikipedia/commons/7/75/Binary_counter.gif">

[https://commons.wikimedia.org/wiki/File:Binary_counter.gif](https://commons.wikimedia.org/wiki/File:Binary_counter.gif)


Není to ale jediný způsob, jak pomocí řetězce bitů reprezentovat číslo. S několika dalšími způsoby se ještě setkáme, jakmile začneme
potřebovat umět reprezentovat záporné čísla. Prozatím ale zůstaneme
u čísel kladných.

#### Kód "1 z N"

Kód 1 z N spočívá v za

### Dekodér

Dekodér má $2^n$ výstupů a $n$ bitový vstup. Funguje podobně jako demultiplexor, ale místo našeho vstupu, tam bude vysílat vždy $1$ viz. gif.

<img src="https://raw.githubusercontent.com/jaywor1/aps/main/obrazky/decd.gif">


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