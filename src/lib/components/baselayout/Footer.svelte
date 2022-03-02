<script lang="ts">
  // imports
  import Envelope from '../svg/Envelope.svelte'
  import Github from '../svg/Github.svelte';
  import Twitter from '../svg/Twitter.svelte';

  // variables
  let  hr = 12, min  = 60, sec = 60, day = 30, mon = 12, year  = 2000


  // functions
  const time = () => {
    let date: Date = new Date();

    hr = date.getHours();
    min = date.getMinutes();
    sec = date.getSeconds();
    day = date.getDay();
    mon = date.getMonth();
    year = date.getFullYear();
  };

  setInterval(time, 1000);
</script>

<footer>
  <section>
    find_me_in:
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
    padding: 2rem;
    width: 100%;
    display: flex;
    justify-content: space-between;

    a {
      text-decoration: underline;
      font-size: 0.8rem;
      padding: 0 .5rem;
    }
  }
</style>
