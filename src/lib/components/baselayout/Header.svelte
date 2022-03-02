<!-- script -->
<script lang="ts">
  import { Link } from "svelte-routing";
</script>

<!-- main content -->
<header>
  <section>
    <div class="tabs-div">
      <div>X</div>
      <div>-</div>
      <div></div>
    </div>
    <h1><Link to="/">olakotan_daniel</Link></h1>
  </section>
  <nav>
    <ul>
      <li><Link to="/">_hello</Link></li>
      <li><Link to="/about">_about</Link></li>
      <li><Link to="/works">_works</Link></li>
    </ul>
  </nav>
</header>

<!-- styles -->
<style lang="scss">
  @use "../../../assets/sass/main.scss" as *;

  header {
    display: flex;
    flex-direction: column;
    width: 100%;

    section {
      display: flex;
      justify-content: center;
      place-items: center;
      position: relative;
      padding: 0.5rem;

      .tabs-div {
        display: flex;
        position: absolute;
        left: 0.3rem;

        div {
          height: 0.8rem;
          width: 0.8rem;
          border-radius: 999px;
          margin: 0 0.3rem;
          display: flex;
          justify-content: center;
          place-items: center;
          font-size: .7rem;
          color: rgba(0, 0, 0, 0);
          cursor: pointer;
          @extend .default-transition;

          &:hover {
            color: white;
          }

          &:first-child {
            background: $pink-color;

          }

          &:nth-child(2) {
            background-color: $yellow-color;
          }

          &:last-child {
            background-color: $green-color;
          }
        }
      }

      h1 {
        text-align: center;

        a {
          color: darken($font-color, 50%);
        }
      }
    }

    nav {
      border-top: 2px solid $border-color;
      border-bottom: 2px solid $border-color;
      background: darken($bg-color, 4%);

      ul {
        display: flex;

        li {
          padding: 0.4rem 1.5rem;
          border-right: 2px solid $border-color;
          color: lig;
        }
      }
    }
  }
</style>
