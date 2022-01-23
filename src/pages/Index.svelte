<!-- module script -->
<script context="module">
  export const prerender = true;
</script>

<!-- script -->
<script lang="ts">
  import { Link } from "svelte-routing";
  import BaseLayout from "../lib/layouts/BaseLayout.svelte";
  import ChevronRight from "../assets/icons/chevron-right.svg";
  import PageNav, {showNav, hideNav} from '../lib/components/other/PageNav.svelte';
</script>

<svelte:window on:click={hideNav} />

<!-- main content -->

<BaseLayout showLogo="hide">
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
    <button on:click={showNav}>
      Explore Me
      <img src={ChevronRight} alt="chevron right" />
      <img src={ChevronRight} alt="chevron right" />
      <img src={ChevronRight} alt="chevron right" />
    </button>
  </section>
  <PageNav />
</BaseLayout>

<!-- styles -->
<style lang="scss">
  @use "../assets/sass/main.scss" as *;
  section {
    width: 20rem;

    pre {
      font-size: 1.5rem;
      font-weight: 800;
      margin-bottom: 1rem;
    }

    button {
      margin-top: 1.5rem;
      padding: 0.5rem 1rem;
      padding-left: 5rem;
      border-radius: 0.9rem;
      border: 2px solid black;
      background: transparent;
      transition: 0.4s ease-in-out;
      display: flex;
      place-items: center;
      animation: proceed-btn .5s ease-in forwards;
      transition: 0.5s ease-in-out;
      cursor: pointer;

      &:hover {
        padding-left: 0.5rem;

        img {
          // opacity: 0;
          animation: proceed .5s ease-in forwards;
        }
      }

      img {
        transform: translateX(4rem);
        opacity: 0;
      }
    }
  }


  @keyframes proceed {

    100% {
      transform: translateX(0);
      opacity: 1;
    }
  }
</style>
