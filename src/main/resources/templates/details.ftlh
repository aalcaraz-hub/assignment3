<!DOCTYPE html>
<html>

  <head>
    <title>My Project</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
     <link rel="stylesheet" href="styles.css">
  </head>

  <body>
 <nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS_yX3a9TAuZTuFCkmmxTvAtr6QKBfFfsnZry_tnBFEg&s=10" alt="Logo" width="30" height="30" class="d-inline-block align-text-top"><strong>Hello Kitty and Friends</strong></h4>
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="nav nav-underline">
        <li class="nav-item">
          <a class="nav-link" href="index.html"><strong>Home</strong></a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="details.html"><strong>Details</strong></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="about"><strong>About</strong></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="new-character-form.html"><strong>Add a Character</strong></a>
        </li>
      </ul>
      <form class="d-flex ms-auto" role="Search">
        <input class="form-control me-2" type="search" placeholder="Search by name" aria-label="Search"/>
        <button class="btn btn-primary" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>

<div class clearfix>
  <img src="https://pngimg.com/uploads/hello_kitty/hello_kitty_PNG42.png" class="rounded float-end" alt="Hello Kitty" width="500" height="500">
  <div class="character-details">
    <h2>${character.name}</h2>
    <p>${character.description}</p>
    <h3>Fun Facts</h3>
    <ul>
      <li>Her lack of mouth is to represent how actions speak louder than words, encouraging others to be kind.</li>
      <li>She is declared by Sanrio to only be 5 apples tall, weighing 3.</li>
      <li>Her birthday is November 1st, making her a Scorpio.</li>
    </ul>
  </div>
</div>
<a class="btn btn-outline-primary" href="index.html" role="button">Back to Home</a>

  </body>
</html>