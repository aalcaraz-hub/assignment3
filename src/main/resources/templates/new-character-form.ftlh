<#import "layout.ftlh" as layout>
<@layout.page title="Add Character" bodyClass="new-character-form-page">

<div class="card">
  <div class="card-body">
    <form action="/characters" method="post">

    <div class="mb-3">
  <label for="formGroupExampleInput" class="form-label"><strong>Character Name*</strong></label>
  <input type="text" class="form-control" name="name" placeholder="Enter character name">
</div>

<div class="mb-3">
  <label for="formGroupExampleInput2" class="form-label"><strong>Universe*</strong></label>
  <input type="text" class="form-control" name="universe" placeholder="Enter universe">
</div>

<div class="mb-3">
  <label for="exampleInputEmail1" class="form-label"><strong>Category*</strong></label>
    <select class="form-select" name="species" aria-label="Default select example">
  <option selected>--Select category--</option>
  <option value="Cat">Cat</option>
  <option value="Puppy">Puppy</option>
  <option value="Bunny">Bunny</option>
  <option value="Frog">Frog</option>
  <option value="Other">Other</option>
</select>
</div>

<div class="mb-3">
  <label class="form-label"><strong>Image URL*</strong></label>
  <input type="text" class="form-control" name="imageUrl" placeholder="Enter image URL">
  </div>
  <div class="form-text" id="basic-addon4">Link to a character image (must be valid URL)</div>
</div>

 <div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label"><strong>Brief Description*</strong></label>
  <textarea class="form-control" name="description" id="exampleFormControlTextarea1" placeholder="Enter 1-2 sentences describing the character." rows="3"></textarea>
</div>

<button type="submit" class="btn btn-primary">Add Character</button>
</form>
</div>
</div>

</@layout.page>