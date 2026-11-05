# Character Gallery Web App

This assignment is a Spring Boot web application that displays a collection of Sanrio characters. Users can browse the gallery, filter searches by name or species, view character details, as well as edit, add, and remove characters. This application uses Java, Spring Boot, FreeMarker, Neon, etc.
## Features

- Create, read, update, and delete characters
- Partial, case-insensitive search by name or species (chosen attribute to filter by)
- Filter by species type
- Configured entirely through environment variables (no secrets in the repo)
- My characters have the following attributes: name, description, universe, fun facts, and species

## Web Pages and Routes

| Page | Route | Description |
|-------|------|-------|
| Home | GET / | Displays character gallery |
| Details | GET /characters/{id} | Displays unique character details |
| About | GET /about | Provides info about the project |
| Add Character | GET /characters/new | Displays the form to add character |
| Submit Character | POST /characters | Saves new character |
| Edit character | GET /characters/{id}/edit | Displays the form to edit character (auto-filled in) |
| Update character | POST /characters/{id} | Updates existing character |
| Delete character | POST /characters/{id}/delete | Deletes character from gallery |


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


### Status codes

| Code | Meaning |
|------|---------|
| 200 | OK |
| 201 | Added character |
| 204 | Deleted character, no content |
| 400 | Validation failed (POST or PUT with missing name or description) |
| 404 | Character with an id that does not exist |

## Deployed API using Render

Live URL: https://assignment3-ik58.onrender.com

Characters Endpoint: https://assignment3-ik58.onrender.com/api/characters
 
### Cold Start and Security Notes
 
- Render free services sleep when idle, so the first request afterward can take up to a minute.
- Database passwords and connection string are configured with environment variables and therefore not included in this document.