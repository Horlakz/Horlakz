<main>
  <p>This website is under construction</p>
  <p>please check back later</p>
</main>

<style lang="scss">
  //   @use "../assets/sass/main.scss" as *;

  main {
    padding: 1rem;
    background: linear-gradient(
      45deg,
      rgb(243, 243, 243),
      rgb(228, 223, 223),
      rgb(167, 165, 165)
    );
    height: 100vh;
    display: flex;
    flex-direction: column;
    justify-content: center;
    place-items: center;
    p {
      font-size: 1rem;
    }
}

@media (min-width: 640px) {
    main {
        p {
        font-size: 2rem;
      }
    }
  }
</style>
