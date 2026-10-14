# Character REST API

This assignment is a REST API built using Spring Boot, PostgreSQL, Neon, and Render. It's purpose is to manage Sanrio characters; allowing users to search, create, modify, and delete characters.

## Features

- Create, read, update, and delete characters
- Partial, case-insensitive search by name or species (chosen attribute to filter by)
- Filter by species type
- Bean validation with clear HTTP status codes (400, 404)
- Configured entirely through environment variables (no secrets in the repo)
- My characters have the following attributes: name, description, universe, and species

## Entity

**Character** (table `characters`)

| Attribute | Type | Rules |
|-------|------|-------|
| `characterId` | Long | Primary key, auto-generated |
| `name` | String | Required (not null, not blank) |
| `description` | String | Required (not null, not blank) |
| `universe` | String | Required (not null, not blank) |
| `species` | String | Required (not null, not blank) |

## Endpoints

Base path: `/api/characters`

| Method | Path | Description | Success |
|--------|------|-------------|---------|
| GET | `/api/characters` | Get all characters | 200 |
| GET | `/api/characters/{id}` | Get one character by ID | 200 |
| POST | `/api/characters` | Add a character | 201 |
| PUT | `/api/characters/{id}` | Modify a character | 200 |
| DELETE | `/api/characters/{id}` | Delete a character | 204 |
| GET | `/api/characters?species=Bunny` | Filter by one category(species) | 200 |
| GET | `/api/characters?name=KUROMI` | Search by name (partial, case-insensitive) | 200 |

### Example POST request

```http
POST /api/characters
Content-Type: application/json

{
  "name": "Hello Kitty",
  "description": "A bright cheerful cat known for her signature bow and friendly nature. She stands 5 apples tall, only weighing 3.",
  "universe": "Sanrio",
  "species": "Cat"
}
```

### Example PUT request

```http
POST /api/characters/2
Content-Type: application/json

{
  "name": "Hello Kitty",
  "description": "A cat who loves baking and making new friends.",
  "universe": "Sanrio",
  "species": "Cat"
}
```

### Status codes

| Code | Meaning |
|------|---------|
| 200 | OK |
| 201 | Added character |
| 204 | Deleted character, no content |
| 400 | Validation failed (POST or PUT with missing name or description) |
| 404 | Character with an id that does not exist |

## Deployed API using Render

Base URL: https://assignment3-ik58.onrender.com

Characters Endpoint: https://assignment3-ik58.onrender.com/api/characters
 
### Cold Start and Security Notes
 
- Render free services sleep when idle, so the first request afterward can take up to a minute.
- Database passwords and connection string are configured with environment variables and therefore not included in this document.