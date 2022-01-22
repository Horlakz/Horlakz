<script lang="ts">
  import Header from "../components/baselayout/Header.svelte";
  import Footer from "../components/baselayout/Footer.svelte";

  import displayImg from "../../assets/images/display-img.png"
</script>

<svelte:head>
  <title>Horlakz</title>
</svelte:head>

<main>
  <div>
    <Header />
    <section class="container">
      <slot />
      <img src={displayImg} alt="">
    </section>
    <Footer />
  </div>
</main>

<style lang="scss">
  @use "../../assets/sass/main.scss" as *;

  main {
    padding: 1.52rem;
  }
  
  
  @media (min-width: 468px) {
    main {
      padding: 3.5rem;
      height: 100vh;
  
      div {
        border: 2px solid black;
        height: 100%;
        border-radius: 2rem;
        padding: 2rem;
        position: relative;
      }
    }
  }
</style>
