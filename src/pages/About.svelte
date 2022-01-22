<script>
  import { Link } from "svelte-routing";
  import BaseLayout from "../lib/layouts/BaseLayout.svelte";
</script>

<BaseLayout>
  <main>
    <h1>this is the about page</h1>
    <p>Go back <Link to="/"><span class="link">home</span></Link></p>
  </main>
</BaseLayout>


<style lang="scss">
    @use "../assets/sass/main.scss" as *;

    main {
        color: white;
    }
</style>