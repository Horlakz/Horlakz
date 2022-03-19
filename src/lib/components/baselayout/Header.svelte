<!-- script -->
<script lang="ts">
  import { Link } from "svelte-routing";

  import ChevronDown from "../svg/ChevronDown.svelte";
  import Xmark from "../svg/Xmark.svelte";

  export let pageIndex = "",
    pageAbout = "",
    pageWorks = "";
</script>

<!-- main content -->
<header>
  <section>
    <div class="tabs-div">
      <div><Xmark /></div>
      <div>-</div>
      <div><ChevronDown /></div>
    </div>
    <h1><Link to="/">olakotan_daniel</Link></h1>
  </section>
  <nav>
    <ul>
      <li><Link to="/"><span class={pageIndex}>_hello</span></Link></li>
      <li><Link to="/about"><span class={pageAbout}>_about</span></Link></li>
      <li><Link to="/works"><span class={pageWorks}>_works</span></Link></li>
    </ul>
    <div />
  </nav>
</header>

<!-- styles -->
<style lang="scss">
  @use "../../../assets/sass/main.scss" as *;

  header {
    display: flex;
    flex-direction: column;
    width: 100%;
    padding-bottom: 1.2rem;
    box-shadow: 0px 3px 6px -1px rgba(5, 5, 5, 0.8);
    -webkit-box-shadow: 0px 3px 6px -1px rgba(5, 5, 5, 0.8);
    -moz-box-shadow: 0px 3px 6px -1px rgba(5, 5, 5, 0.8);

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
          font-size: 0.7rem;
          font-weight: 900;
          color: rgba(0, 0, 0, 0);
          cursor: pointer;
          @extend .default-transition;

          &:hover {
            color: black;
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
      display: flex;
      width: 100%;
      border-top: 2px solid $border-color;
      border-bottom: 2px solid $border-color;
      background: darken($bg-color, 4%);

      ul {
        display: flex;

        li {
          border-right: 2px solid $border-color;
          width: 100%;

          span {
            padding: 0.4rem 1.5rem;
            width: 100%;
          }

          .page-active {
            width: 100%;
            padding: 0rem 1.5rem;
            border-top: 3px solid $pink-color;
            border-bottom: 3px solid $bg-color;
            background-color: $bg-color;
            color: $orange-color;
          }
        }
      }
    }
  }
</style>
