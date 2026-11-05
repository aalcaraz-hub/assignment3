<#import "layout.ftlh" as layout>
<@layout.page title="Character Details" bodyClass="details-page">

<div class clearfix>
  <img src="${character.imageUrl}" class="rounded float-end" alt="Hello Kitty" width="500" height="500">
  <div class="character-details">
    <h2>Meet ${character.name}!</h2>
    <h3>Fun Facts:</h3>
    <ul>
      <#if character.funFacts?? && character.funFacts?has_content>
      <#list character.funFacts?split("|") as fact>
        <li>${fact?trim}</li>
      </#list>
      <#else>
        <li>No fun facts available.</li>
      </#if>
    </ul>
  </div>
</div>

<div class="col-12 col-md-4">
      <div class= "card character-card text-center h-100">
        <div class="card-body">
          <h5 class="card-title">Details Summary</h5>
          <h6 class="card-subtitle mb-2 text-body-secondary">Universe: ${character.universe}</h6>
          <span class="badge rounded-pill text-bg-primary">${character.species}</span>
          <p class="card-text">${character.description}</p>
          <div class="d-flex gap-2">
  <a href="/characters/${character.characterId}/edit" class="btn btn-outline-primary">Edit Character</a>
  <a class="btn btn-outline-primary" href="/" role="button">Back to Home</a>
  <form action="/characters/${character.characterId}/delete" method="post" onsubmit="return confirm('Are you sure you want to delete this character?');">
    <button type="submit" class="btn btn-outline-danger">Delete Character</button>
  </form>
</div>
        </div>
      </div>
    </div>
</div>

</@layout.page>