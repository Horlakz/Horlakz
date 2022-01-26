
<script lang="ts">
  export let showNav
  let showPageNav : string ;

  function hideNav() {
    showPageNav = "hide-page-nav"
  }


  // function showNav() {
  //   showPageNav = "show-page-nav";
  // }
</script>

<svelte:window on:click={hideNav} />

{#if showNav}
<ul class:show-page-nav={showNav}>
  <li>My Profile</li>
  <li>About</li>
  <li>Works</li>
  <li>Contact</li>
</ul>
{/if}

<style lang="scss">
  @use "../../../assets/sass/main.scss" as *;

  ul {
    height: 100%;
    background: rgba(90, 90, 90, 0.459);
    width: 45%;
    display: flex;
    flex-direction: column;
    justify-content: space-evenly;
    align-items: center;
    position: absolute;
    top: 0;
    right: 0;
    border-top-right-radius: 2rem;
    border-bottom-right-radius: 2rem;

    li {
      background: rgba(204, 204, 204, 0.7);
      padding: 1rem;
      transition: 0.4s ease-in-out;
      width: 60%;
      display: flex;
      align-items: center;
      justify-content: center;

      &:hover {
        background: rgb(223, 223, 223);
      }
    }
  }

  .show-page-nav {
    opacity: 1;
    z-index: 2;
  }

  .hide-page-nav {
    opacity: 0;
    z-index: -1;
  }
</style>
