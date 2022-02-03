<script lang="ts">
  import BaseLayout from "../lib/layouts/BaseLayout.svelte";
  import ContactImage from "../assets/images/contact-img.jpeg";
</script>

<BaseLayout pglogo={ContactImage}>
  <main>
    <p>you can contact on my mail or text me on whatsapp on my telephone</p>
  </main>
</BaseLayout>

<style lang="scss">
  @use "../assets/sass/main.scss" as *;

  main {
    width: 100%;
    // padding-left: 10rem;
    display: flex;
    place-content: center;
    place-items: center;

    p {
      width: 80%;
      font-weight: 700;
      font-size: 1.5rem;
    }
  }x``
</style>