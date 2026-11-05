<#import "layout.ftlh" as layout>
<@layout.page title="Add Character" bodyClass="new-character-form-page">

<div class="card">
  <div class="card-body">
    <form action="<#if character.characterId?? && character.characterId != 0>/characters/${character.characterId}<#else>/characters</#if>" method="post">

    <div class="mb-3">
  <label for="formGroupExampleInput" class="form-label"><strong>Character Name*</strong></label>
  <input type="text" class="form-control" name="name" value="${character.name!''}" placeholder="Enter character name">
</div>

<div class="mb-3">
  <label for="formGroupExampleInput2" class="form-label"><strong>Universe*</strong></label>
  <input type="text" class="form-control" name="universe" value="${character.universe!''}" placeholder="Enter universe">
</div>

<div class="mb-3">
  <label for="exampleInputEmail1" class="form-label"><strong>Category*</strong></label>
    <select class="form-select" name="species" aria-label="Default select example">
  <option selected>--Select category--</option>
  <option value="Cat" <#if character.species?? && character.species == "Cat">selected</#if>>Cat</option>
  <option value="Puppy" <#if character.species?? && character.species == "Puppy">selected</#if>>Puppy</option>
  <option value="Bunny" <#if character.species?? && character.species == "Bunny">selected</#if>>Bunny</option>
  <option value="Frog" <#if character.species?? && character.species == "Frog">selected</#if>>Frog</option>
  <option value="Other" <#if character.species?? && character.species == "Other">selected</#if>>Other</option>
</select>
</div>

<div class="mb-3">
  <label class="form-label"><strong>Image URL*</strong></label>
  <input type="text" class="form-control" name="imageUrl" value="${character.imageUrl!''}" placeholder="Enter image URL">
  </div>
  <div class="form-text" id="basic-addon4">Link to a character image (must be valid URL)</div>
</div>

 <div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label"><strong>Brief Description*</strong></label>
  <textarea class="form-control" name="description"  id="exampleFormControlTextarea1" placeholder="Enter 1-2 sentences describing the character." rows="3">${character.description!''}</textarea>
</div>


<div class="mb-3">
  <label for="exampleFormControlTextarea2" class="form-label"><strong>Fun Facts*</strong></label>
  <textarea class="form-control" name="funFacts" id="exampleFormControlTextarea2" placeholder="Enter fun facts about the character seperated by |." rows="3">${character.funFacts!''}</textarea>
</div>

  <button type="submit" class="btn btn-primary">
    <#if character.characterId?? && character.characterId != 0>
      Update Character
    <#else>
      Add Character
    </#if>
</button>
</div>
</div>

</@layout.page>