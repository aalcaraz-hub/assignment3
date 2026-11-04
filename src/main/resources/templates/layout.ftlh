<#macro page title bodyClass="">
    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>${title} | Sanrio Characters</title>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css">
      <link rel="stylesheet" href="/styles.css">
    </head>

    <body class="${bodyClass}">
      <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
          <a class="navbar-brand d-flex align-items-center" href="/">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS_yX3a9TAuZTuFCkmmxTvAtr6QKBfFfsnZry_tnBFEg&s=10" alt="Logo" width="30px" height="30px" class="d-inline-block align-text-top">
            <span><strong>Hello Kitty and Friends</strong></span>
          </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="nav nav-underline">
                <li class="nav-item">
                    <a class="nav-link" href="/"><strong>Home</strong></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/characters/2"><strong>Details</strong></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/about"><strong>About</strong></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/characters/create"><strong>Add a Character</strong></a>
                </li>
            </ul>

            <form class="d-flex ms-auto" role="search">
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-primary" type="submit">Search by name</button>
            </form>
        </div>
        </div>
      </nav>

      <div class="container mt-3">
        <#if successMessage??>
          <div class="alert alert-success">${successMessage}</div>
        </#if>
        <#nested>
      </div>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
    </body>
    </html>
</#macro>