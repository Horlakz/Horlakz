<script context="module">
  export const prerender = true;
</script>

<script>
  import { Link } from "svelte-routing";
  import BaseLayout from "../lib/layouts/BaseLayout.svelte";
</script>

<BaseLayout>
    <p>this is the home page</p>
    Check the <Link to="/about"><span class="link">about page</span></Link>
  
</BaseLayout>

<style lang="scss">
    @use "../assets/sass/main.scss" as *;
  
</style>
