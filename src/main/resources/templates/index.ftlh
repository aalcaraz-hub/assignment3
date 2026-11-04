<#import "layout.ftlh" as layout>
<@layout.page title="Sanrio Characters">

<section class="page-header">
  <h2>Discover the Wonderful World of Sanrio Characters!</h2>
</section>

<div class="row g-4">
  <#list characters as character>
    <div class="col-12 col-md-4">
      <div class= "card character-card text-center h-100">
        <img src="${character.imageUrl!}" class="card-img-top" alt="${character.name}">
        <div class="card-body">
          <h5 class="card-title">${character.name}</h5>
          <h6 class="card-subtitle mb-2 text-body-secondary">Universe: ${character.universe}</h6>
          <span class="badge rounded-pill text-bg-primary">${character.species}</span>
          <p class="card-text">${character.description}</p>
          <a href="/characters/${character.characterId}" class="btn btn-primary">Get to know me!</a>
        </div>
      </div>
    </div>
  </#list>
</div>

</@layout.page>