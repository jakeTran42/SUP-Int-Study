# Character API

## Purpose
This Api project is aim for people who have a hard time coming up with characters for their
fantasy character or super hero. This api provide a list of randomly generated super hero names, power, descriptions, and items which you can also create or modified. This have an use for things such as DnD, content creator and more.

## How to install

1. download/clone this repo and navigate to the project folder

2. `$ db.migrate`

3. `$ bundle install`

4. `$ rails db:seed`

5. `$ rails server`

## API calls

### Get Characters

* URL

`/api/v1/characters`

* Method

`GET`

### Show Character

* URL

`/api/v1/characters/:id`

* Method

`SHOW`

### Create Character

* URL

`/api/v1/characters/`

* Method

`CREATE`

* PARAMS

`id=[integer]`

### Create Character

* URL

`/api/v1/characters`

* Method

`CREATE`

* PARAMS

Header `Content-Type: application/json`
Body `{"name": "name", "power": "power"}`

### Delete Character

* URL

`/api/v1/characters/:id`

* Method

`DELETE`

* PARAMS

`id=[integer]`

### Update Character

* URL

`/api/v1/characters/:id`

* Method

`PUT`

* PARAMS

Header `Content-Type: application/json`
Body `{"name": "name", "power": "power", "description": "description"}`


## Whats next?

-Implementation of authorization