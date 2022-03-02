<!-- script -->
<script lang="ts">
  // file imports and images
  import Header from "../components/baselayout/Header.svelte";
  import Footer from "../components/baselayout/Footer.svelte";
  import horlakzLogo from "../../assets/images/H.png";

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

  <!-- website logo -->
  <link rel="icon" href={horlakzLogo} />

  <!-- website title -->
  <title>Horlakz</title>
</svelte:head>

<!-- main content  -->
<Header />
    <main>
        <slot />
    </main>
<Footer />

<!-- component style -->
<style lang="scss">
  @use "../../assets/sass/main.scss" as *;
</style>
