# API DOCUMENTATION

http://localhost:3000/api/v1

Liste de tous les pokémons
* GET /pokemons

Liste de tous les pokémons par page de 15
* GET /pokemons?page=1 

Affiche le pokémon avec l'id 1
* GET /pokemons/1

Créé une nouveau pokémon avec les paramètres JSON suivants:
```json
{
  "number": 1,
  "name": "Bulbasaur",
  "type1": "Grass",
  "type2": "Poison",
  "total": 318,
  "hp": 45,
  "attack": 49,
  "defense": 49,
  "spAtk": 65,
  "spDef": 65,
  "speed": 45,
  "generation": 1,
"legendary": 0
}
```
* POST /pokemons

Mets à jour l'information du pokémon id: 1 avec les paramètres suivants:
```json
{
  "number": 1,
  "name": "Bulbasaur",
  "type1": "Grass",
  "type2": "Poison",
  "total": 318,
  "hp": 45,
  "attack": 49,
  "defense": 49,
  "spAtk": 65,
  "spDef": 65,
  "speed": 45,
  "generation": 1,
  "legendary": 0
}
```

* PATCH/PUT /pokemons/1


Efface le pokemon 1
* DELETE /pokemons/1

Paramètres : number:int, name:string, type1:string, type2:string, total:int, hp:int, attack:int, defense:int, spAtk:int, spDef:int, speed:int, generation:int, legendary:int (0 :false, 1: true)
