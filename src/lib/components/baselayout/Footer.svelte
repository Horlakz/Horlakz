<script lang="ts">
  // imports
  import Envelope from "../svg/Envelope.svelte";
  import Github from "../svg/Github.svelte";
  import Twitter from "../svg/Twitter.svelte";

  // variables
  let hr: number = 12,
    min: number = 59,
    sec: number = 59,
    day: number = 30,
    mon: number = 12,
    year: number = 2000;

  // functions
  const time = () => {
    let date: Date = new Date();

    hr = date.getHours();
    min = date.getMinutes();
    sec = date.getSeconds();
    day = date.getDate();
    mon = date.getMonth() + 1;
    year = date.getFullYear();
  };

  setInterval(time, 1000);
</script>

<footer>
  <section>
    <span>find_me_in:</span>
    <a
      href="https://github.com/horlakz"
      title="github.com/horlakz"
      target="_blank"
    >
      <Github />
    </a>
    <a
      href="mailto:horlakz@protonmail.com"
      title="horlakz@protonmail.com"
      target="_blank"
    >
      <Envelope />
    </a>
    <a href="https://twitter.com/horlakzz" title="@horlakzz" target="_blank">
      <Twitter />
    </a>
  </section>
  <section>
    {hr}:{min}:{sec}
    {day}/{mon}/{year}
  </section>
</footer>

<style lang="scss">
  @use "../../../assets/sass/main.scss" as *;

  footer {
    position: absolute;
    bottom: 0;
    // padding: 0.5rem;
    width: 100%;
    display: flex;
    justify-content: space-between;
    box-shadow: -1px -2px 4px -1px rgba(3, 3, 3, 0.86);
    -webkit-box-shadow: -1px -2px 4px -1px rgba(3, 3, 3, 0.86);
    -moz-box-shadow: -1px -2px 4px -1px rgba(3, 3, 3, 0.86);
    border-top: 1px solid $border-color;

    section {
      padding: 0.4rem;

      &:first-child > * {
        padding: 0.4rem 0.8rem;
      }
    }
  }

  @media (min-width: 481px) {
    section:first-child > * {
      border-right: 1px solid $border-color;
    }
  }

  @media (max-width: 480px) {
    footer {
      flex-direction: column;
      place-items: center;

      section {
        margin: 0.2rem 0;

        &:first-child {
          border-bottom: 1px solid $border-color;
          width: 100%;
          display: flex;
          justify-content: center;
        }
      }
    }
  }
</style>
