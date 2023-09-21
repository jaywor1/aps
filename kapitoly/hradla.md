# Hradla

## Buffer

### Definice

#### Matematika:

$$ Q = A $$

#### Zápis v C:

```
bool A;
bool Q = A;
```

### Pravdivostní tabulka

|A|Q|
|:-:|:-:|
|0|0|
|1|1|

## NOT

### Definice

#### Matematika:

$$ Q = \neg A $$

#### Zápis v C:

```
bool A;
bool Q = !A;
```

### Pravdivostní tabulka

|A|Q|
|:-:|:-:|
|0|1|
|1|0|

## AND

### Definice

#### Matematika:

$$ Q = A * B $$

#### Zápis v C:

```
bool A = <bool_val>;
bool B = <bool_val>;
bool Q = A && B;
```

### Pravdivostní tabulka

|A|B|Q|
|:-:|:-:|:-:|
|0|0|0|
|0|1|0|
|1|0|0|
|1|1|1|

## OR

### Definice

$$ Q = A + B $$

### Pravdivostní tabulka

|A|B|Q|
|:-:|:-:|:-:|
|0|0|0|
|0|1|1|
|1|0|1|
|1|1|1|

## NAND

### Definice

#### Matematika:

$$ Q = A * B $$

### Pravdivostní tabulka

|A|B|Q|
|:-:|:-:|:-:|
|0|0|1|
|0|1|1|
|1|0|1|
|1|1|0|

## NOR

### Definice

$$ Q = A * B $$

### Pravdivostní tabulka

|A|B|Q|
|:-:|:-:|:-:|
|0|0|1|
|0|1|0|
|1|0|0|
|1|1|0|

## XOR

### Definice

$$ Q = A * B $$

### Pravdivostní tabulka

|A|B|Q|
|:-:|:-:|:-:|
|0|0|0|
|0|1|1|
|1|0|1|
|1|1|0|

## XNOR

### Definice

$$ Q = A * B $$

### Pravdivostní tabulka

|A|B|Q|
|:-:|:-:|:-:|
|0|0|1|
|0|1|0|
|1|0|0|
|1|1|0|