<!-- script  -->
<script lang="ts">
  // file imports and images
  import Header from "../components/baselayout/Header.svelte";
  import Footer from "../components/baselayout/Footer.svelte";
  import horlakzLogo from "../../assets/images/H.png";

  // props
  export let logo: string = horlakzLogo;
  export let showLogo: string = "show";

  // variables
  let animate;

  //functions
  if (logo === horlakzLogo) {
    animate = "animate";
  }
</script>

<!-- website head -->
<svelte:head>
  <!-- meta content -->
  <meta name="title" content="Horlakz" />
  <meta name="author" content="Horlakz, horlakz@protonmail.com" />
  <meta
    name="description"
    content="Hi, I am Horlakz. Welcome to my Portfolio Website"
  />
  <meta
    name="keywords"
    content="Horlakz, profile card of horlakz, portfolio website of horlakz, portfolio website ,profile card"
  />
  <meta property="og:title" content="Horlakz" />
  <meta property="og:type" content="profile" />
  <meta property="og:url" content="https://horlakz.github.io/" />
  <meta
    property="og:description"
    content="Hi, I am Horlakz. Welcome to my Website"
  />
  <meta property="og:site_name" content="Horlakz" />
  <meta property="og:locale" content="en_NG" />
  <meta name="twitter:site" content="@horlakzz" />
  <meta name="twitter:creator" content="@horlakzz" />

  <!-- others -->
  <link rel="icon" href={logo} />
  <title>Horlakz</title>
</svelte:head>

<!-- main content  -->
<main>
  <div>
    <Header {showLogo} />
    <section class="container">
      <aside>
        <slot />
      </aside>
      <!-- svelte-ignore a11y-img-redundant-alt -->
      <img src={logo} alt="Display Image" class={animate} />
    </section>
    <Footer />
  </div>
</main>

<!-- style -->
<style lang="scss">
  @use "../../assets/sass/main.scss" as *;

  $page-padding: 3.5rem;

  main {
    padding: 1.52rem;
    background: linear-gradient(
      45deg,
      rgb(243, 243, 243),
      rgb(228, 223, 223),
      rgb(167, 165, 165)
    );
  }

  img {
    display: none;
  }

  @media (min-width: 468px) {
    main {
      padding: $page-padding;
      height: 100vh;

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
          flex-direction: row-reverse;
          place-items: center;
          margin-top: 2.5rem;

          img {
            height: 20rem;
            width: inherit;
            display: flex;
            background: transparent;
          }

          .animate {
            height: 3.5rem;
            transform: translate(-12rem, -12rem);
            animation: logoAnimate 1.5s ease-in forwards;
          }
        }
      }
    }
  }

  @keyframes logoAnimate {
    50% {
      transform: translate(-12rem, -12rem);
      height: 3.25rem;
    }

    100% {
      width: initial;
      height: 20rem;
      transform: translate(0, 0);
    }
  }
</style>
