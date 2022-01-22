<script context="module">
  export const prerender = true;
</script>

<script>
  import { Link } from "svelte-routing";
  import BaseLayout from "../lib/layouts/BaseLayout.svelte";
</script>

<BaseLayout>
  <section>
    <pre>
        .developer&nbsp;&#123;
        work: front-end;
&#125;
      </pre>
    <p>
      &#10092;p&#10093;..with ability to communicate with cross-functional
      teams, proficient with version control systems like git to enable steady
      and smooth workflow.&#10092;/p&#10093;
    </p>
  </section>
</BaseLayout>

<style lang="scss">
  @use "../assets/sass/main.scss" as *;

  section {
    width: 20rem;

    pre {
      font-size: 1.5rem;
      font-weight: 800;
      margin-bottom: 1rem;
    }
  }
</style>
