<#import "layout.ftlh" as layout>
<@layout.page title="Character Details" bodyClass="details-page">

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
<a class="btn btn-outline-primary" href="/" role="button">Back to Home</a>

</@layout.page>