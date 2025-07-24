/// pokemon | Species ["Name"]

//// tab | :octicons-cpu-24: ARM assembly
``` { .arm_v4 .annotate linenums="1" }
```
////

//// tab | :octicons-list-unordered-24: Box code

///// tab | Emerald
```box_code
```
/////

///// tab | FireRed v1.0
```box_code
```
/////

///// tab | FireRed v1.1
```box_code
```
/////

///// tab | LeafGreen v1.0
```box_code
```
/////

///// tab | LeafGreen v1.1
```box_code
```
/////

////

//// tab | :octicons-apps-24: PokeGlitzer

///// tab | Emerald
``` { .text .copy }
```
/////

///// tab | FireRed v1.0
``` { .text .copy }
```
/////

///// tab | FireRed v1.1
``` { .text .copy }
```
/////

///// tab | LeafGreen v1.0
``` { .text .copy }
```
/////

///// tab | LeafGreen v1.1
``` { .text .copy }
```
/////

////

//// tab | :octicons-arrow-switch-24: Signature

///// html | div.signature
+-------+-------------------+
| IN    | Function          |
+=======+===================+
| `r0`  | Integer value A   |
+-------+-------------------+
| `r1`  | Integer value B   |
+-------+-------------------+
| `r2`  | Integer value C   |
+-------+-------------------+
/////

///// html | div.signature
+-------+-----------------------+
| OUT   | Function              |
+=======+=======================+
| `r0`  | (A * B + C) mod 24    |
+-------+-----------------------+
/////

///// html | div.signature-typed
+-----------+---------------+-------------------+
| IN        | Type          | Function          |
+===========+===============+===================+
| `BOX1`    | `Decimal`     | Integer value A   |
+-----------+---------------+-------------------+
| `BOX2`    | `Decimal`     | Integer value B   |
+-----------+---------------+-------------------+
| `BOX3`    | `Hexadecimal` | Integer value C   |
+-----------+---------------+-------------------+
/////

///// html | div.signature-typed
+-----------+---------------+-----------------------+
| OUT       | Type          | Function              |
+===========+===============+=======================+
| `BOX1`    | `Decimal`     | (A * B + C) mod 24    |
+-----------+---------------+-----------------------+
/////

////

//// tab | :octicons-star-fill-24: Markings

///// html | div.markings
+-------------------------------+---------------------------+
| Marking                       | Function                  |
+===============================+===========================+
| :material-circle-outline:     | Turn option A off         |
+-------------------------------+---------------------------+
| :material-circle:             | Turn option A on          |
+-------------------------------+---------------------------+
| :material-square-outline:     | Turn option B off         |
+-------------------------------+---------------------------+
| :material-square:             | Turn option B on          |
+-------------------------------+---------------------------+
| :material-triangle-outline:   | Turn option C off         |
+-------------------------------+---------------------------+
| :material-triangle:           | Turn option C on          |
+-------------------------------+---------------------------+
| :material-heart-outline:      | Turn option D off         |
+-------------------------------+---------------------------+
| :material-heart:              | Turn option D on          |
+-------------------------------+---------------------------+
| :material-star-outline:       | Skip optional action      |
+-------------------------------+---------------------------+
| :material-star:               | Perform optional action   |
+-------------------------------+---------------------------+
/////

////

//// tab | :octicons-package-dependencies-24: Dependencies
```mermaid
flowchart LR
    A((( )))
    B(Function A)
    C(Function B)
    D(Function C)
    E(Function D)

    A --> B
    B --> C
    B --> D
    D --> C
    D --> E
```
////

///
