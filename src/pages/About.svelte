<script lang="ts">
  import BaseLayout from "../lib/layouts/BaseLayout.svelte";

  export let pageAbout: string = "page-active";
</script>

<BaseLayout {pageAbout}>
  <main>
    <p>
      Hey! This About Page is still in the build process and will soon be
      completed <br />
      In the meantime you can contact me using the links Below
    </p>
  </main>
</BaseLayout>

<style lang="scss">
  @use "../assets/sass/main.scss" as *;

  main {
    display: flex;
    justify-content: center;
    place-items: center;
    text-align: center;
    font-size: 1.4rem;
    color: lighten($font-color, 40%);
    padding-top: 3rem;
  }
</style>
