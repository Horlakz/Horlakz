<script lang="ts">
  import BaseLayout from "../lib/layouts/BaseLayout.svelte";

  let pageIndex: string = "page-active";
</script>

<BaseLayout {pageIndex}>
  <main>hello world</main>
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
