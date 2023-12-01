# Movies Magazine Queries Exercises

# Table of Contents
1. [Create the database and insert data](#ddl)
2. [Understand the data](#data)
    1. [Table: Movie](#movie)
    2. [Table: Person](#person)
    3. [Table: Directed_by](#directed_by)
    4. [Table: Performed_by](#performed_by)
    5. [Table: Award](#award)
3. [Queries](#queries)

## 1. Create the database and insert data <a name="ddl"></a>

To do the exercise you will have to execute the script `run_movies_awards.sh`. 
This script will:
1. Drop the database `movies_awards` if exists.
2. Create the database `movies_awards`.
3. Insert data in the database.

## 2. Understand the data <a name="data"></a>

**Table: Movie <a name="movie"></a>

| id | title | synopsis |
| -- | ----- | -------- |
| 1 | El caballero oscuro | Tras la muerte de Rachel Dawes, Bruce Wayne se recluye en su mansión como Batman. El Joker, un nuevo villano que pretende sembrar el caos en Gotham City, le obliga a salir de su retiro para enfrentarse a él. |
| 2 | Piratas del caribe: La maldición de la perla negra | El capitán Barbossa le roba el barco al pirata Jack Sparrow y secuestra a Elizabeth, amiga de Will Turner. Barbossa y su tripulación son víctimas de un conjuro que los condena a vivir eternamente y a transformarse cada noche en esqueletos vivientes. |
| 3 | Shine | El camino hacia la madurez de un niño prodigio del piano se ve truncado por unas crisis psiquiátricas que le hunden en profundas depresiones, fruto de las presiones familiares. |
| 4 | Trascendence | El Dr. Will Caster, la mayor autoridad del mundo en inteligencia artificial, está llevando a cabo experimentos muy controvertidos para crear una máquina muy especial. |


**Table: Person <a name="person"></a>

| id | name | surname | birthday_date | *comment* |
| -- | ---- | ------- | ------------- | ------ |
|1|Christopher|Nolan|1970-07-30| Director: batman |
|2|Christian|Bale|1974-01-30| Actor: batman |
|3|Heath|Ledger|1979-04-04| Actor: batman |
|4|Aaron|Eckhart|1968-03-12|Actor: batman |
|5|Michael|Caine|1933-03-14|Actor: batman |
|6|Morgan|Freeman|1937-06-12|Actor: batman y trascendence |
|7|Gore|Verbinsky|1964-03-16| Director: piratas del caribe |
|8|Johnny|Deep|1963-06-09| Actor: piratas del caribe y trascendence |
|9|Orlando|Bloom|1977-01-13| Actor: piratas del caribe |
|10|Keira|Knightley|1985-03-26| Actriz: piratas del caribe |
|11|Geofrey|Rush|1951-07-06| Actor: piratas del caribe y shine |
|12|Scott|Hicks|1953-03-04| Director: shine |
|13|Taylor|Noah|1969-09-04| Actor: shine |
|14|Rebecca|Hall|NULL| Actriz: trascendence |
|15|Paul|Bettany|NULL| Actriz: trascendence |

> The column **comment** doesn't exists in the database, is just a informative comment to understand the data.

**Table: Directed_by <a name="directed_by"></a>

Directors of movies table:

| movie | person |
| ----- | ------ |
| El caballero oscuro | Christopher Nolan |
| Piratas del caribe |  Gore Verbinsky |
| Shine | Scott Hicks |
| Trascendence | Christopher Nolan |

We can see Christopher Nolan is the only one who has directed two movies.

**Table: Performed_by <a name="performed_by"></a>

| movie | person |
| ----- | ------ |
| El caballero oscuro | Christian Bale |
| El caballero oscuro | Heath Ledger |
| El caballero oscuro | Aaron Eckhart |
| El caballero oscuro | Morgan Freeman |
| Piratas del caribe | Johnny Deep |
| Piratas del caribe | Orlando Bloom |
| Piratas del caribe | Keira Knighley |
| Piratas del caribe | Geoffrey Rush |
| Shine | Geoffrey Rush |
| Shine | Taylor Noah |
| Trascendence | Johnny Deep |
| Trascendence | Rebecca Hall |
| Trascendence | Paul Bettany |

**Table: Award <a name="award"></a>

| id | award | year | movie | person |
| -- | ----- | ---- | ----- | ------ |
| 1 | Óscar Mejor Actor de Reparto | 2008 | Batman | Heath Ledger |
| 2 | MVT Movie Awards Mejor Villano | 2009 | Batman | Heath Ledger |
| 3 | Globo de oro al mejor actor de reparto | 2009 | Batman | Heath Ledger |
| 4 | Premios Empire Mejor Director | 2009 | Batman | Christopher Nolan |
| 5 | MVT Movie Awards Mejor Interpretación Masculina | 2004 | Piratas del caribe | Johnny Deep |
| 6 | Premio Empire al Mejor Actor | 2004 | Piratas del Caribe | Johnny Deep |
| 7 | Óscar Mejor Actor de Reparto | 1997 | Shine | Geoffrey Rush |


## 3. Queries <a name="queries"></a>

Generate the queries in order to solve the next questions.

**1. How many movies we have in the database?**

Set the column name as `total_movies`.

```
    Put your solution here.
```
<br />

**2. Show the movies (title and synopsis) ordered by title (A-Z).**
```
    Put your solution here.
```
<br />

**3. How many people we have in the database?**

Set the colum name as `total_people`.
```
    Put your solution here.
```
<br />

**4. How many people are actors?**

Set the colum name as `total_actors`.
```
    Put your solution here.
```
<br />

**5. Who are the actors?**

Show the name and surname.
```
    Put your solution here.
```

If your want to show the name and surname together in the same column like `Name Surname` or `Surname, Name` you can use the function `CONCAT`.

<br />

**6. How many people are directors?**

Set the colum name as `total_directors`.
```
    Put your solution here.
```
<br />

**7. Who are the directors?**
```
    Put your solution here.
```
<br />

**8. Movies with awards**

Show the names of the movies with awards and don't repeat the names.
```
    Put your solution here.
```
<br />

**9. Movies with 'Óscar'**

Tip: Find the movies which award name contains the word 'Óscar'
```
    Put your solution here.
```
<br />

**10. Directors with awards**

Show the names of the directors with awards and don't repeat the names.
```
    Put your solution here.
```
<br />

**11. Actors with awards**

Show the names of the actors with awards and don't repeat the names.
```
    Put your solution here.
```
<br />

**12. Actors with the price 'Mejor Actor'**

Tip: Find the persons which award name contains the word 'Mejor Actor'
```
    Put your solution here.
```
<br />

**13. There is any actor with more than 2 awards?**

Show the name of the actors with at least two awards.
```
    Put your solution here.
```
<br />


**14. Award, Actor and Movie of the actors with more than two awards**

```
    Put your solution here.
```
<br />

