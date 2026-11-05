<#import "layout.ftlh" as layout>
<@layout.page title="About" bodyClass="about-page">

    <section class="about-section">
      <h2><strong>About this Gallery</strong></h2>
      <h5>Learn more about our collection of Sanrio characters</h5>
    </section>

    <div class="card">
      <div class="card-body">
        <p><strong>This project is a web application that showcases a collection of Sanrio characters. Users can browse through the collection, view details about each character, filter results based on name or species, and learn interesting facts about them. Users also have the option to add new characters to the collection, edit existing ones, and delete characters if needed.</strong></p>
        <p><strong>This app is built with Java and uses the Spring Boot framework for the backend and Thymeleaf for the frontend. I added my html files from our previous assignments and converted them into ftlh templates to create a dynamic and interactive user experience. Throughout this semester, I have worked with HTML, CSS, Bootstrap, Java, SpringBoot, and now FreeMarker! My front end is what makes it possible to display the website, whereas the backend handles the logic and communication with the database. Neon has been very useful as well, since it allowed me to configure my connection string and all my characters are stored within the table.

        </strong></p>
            <a class="btn btn-outline-primary" href="index.html" role="button">Back to Home</a>

      </div>
    </div>
</@layout.page>