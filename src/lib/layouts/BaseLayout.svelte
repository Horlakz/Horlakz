<script lang="ts">
  import Header from "../components/baselayout/Header.svelte";
  import Footer from "../components/baselayout/Footer.svelte";

  import displayImg from "../../assets/images/44.1.png";
  import logo from "../../assets/images/H.png";
</script>

<svelte:head>
  <link rel="icon" href={logo} />
  <title>Horlakz</title>
</svelte:head>

<main>
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"
><path
fill="#273036"
fill-opacity="1"
d="M0,64L48,80C96,96,192,128,288,122.7C384,117,480,75,576,85.3C672,96,768,160,864,170.7C960,181,1056,139,1152,117.3C1248,96,1344,96,1392,96L1440,96L1440,0L1392,0C1344,0,1248,0,1152,0C1056,0,960,0,864,0C768,0,672,0,576,0C480,0,384,0,288,0C192,0,96,0,48,0L0,0Z"
/></svg>
  <div>
    <Header />
    <section class="container">
      <aside>
        <slot />
      </aside>
      <!-- svelte-ignore a11y-img-redundant-alt -->
      <img src={displayImg} alt="Display Image" />
    </section>
    <Footer />
  </div>
</main>

<style lang="scss">
  @use "../../assets/sass/main.scss" as *;

  main {
    padding: 1.52rem;
    background: linear-gradient(45deg, rgb(243, 243, 243), rgb(228, 223, 223), rgb(167, 165, 165));
  }

  @media (min-width: 468px) {
    main {
      padding: 3.5rem;
      height: 100vh;

      svg {
        display: none;
      }

      div {
        border: 2px solid black;
        height: 100%;
        border-radius: 2rem;
        padding: 2rem;
        position: relative;
        background: white;

        section {
          display: flex;
          place-content: space-evenly;
          place-items: center;
          margin-top: 2.5rem;

          img {
            // opacity: 0;
            // width: 13rem;
            height: 20rem;
            // border-radius: 100%;
            // border: 2px solid black;
            // filter: saturate(0);
          }
        }
      }
    }
  }
</style>
