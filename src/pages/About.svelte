<script>
  import { Link } from "svelte-routing";
  import BaseLayout from "../lib/layouts/BaseLayout.svelte";
</script>

<BaseLayout>
  <main>
    <p>
      FrontEnd Developer with ability to communicate with cross-functional
      teams, proficient with version control systems like git to enable steady
      and smooth workflow. Seeking to use my creative ideas and analytical skills
      to avoid wasting materials and time, also to produce desired results for
      the system.
    </p>
  </main>
</BaseLayout>

<style lang="scss">
  @use "../assets/sass/main.scss" as *;
  @import url("https://fonts.googleapis.com/css2?family=ABeeZee&display=swap");

  main {
    color: white;

    p {
      font-size: 1.56rem;
      font-family: "ABeeZee", sans-serif;
      // font-weight: 800;
      margin-bottom: 1rem;
      width: 25rem;
    }
  }
</style>
