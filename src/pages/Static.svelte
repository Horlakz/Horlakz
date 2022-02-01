<script lang="ts">
  import BaseLayout from "../lib/layouts/BaseLayout.svelte";
  import StaticImg from "../assets/images/static-img.png";
</script>

<BaseLayout pglogo={StaticImg}>
  <main>
    <p>This website is under construction</p>
    <p>please check back later</p>
  </main>
</BaseLayout>

<style lang="scss">
  //   @use "../assets/sass/main.scss" as *;

  main {
    padding: 1rem;
    
    p {
      font-size: 1.5rem;
      font-weight: 600;
      line-height: 1.5;
      margin: 0;
      text-align: center;
    } 
  }
</style>
