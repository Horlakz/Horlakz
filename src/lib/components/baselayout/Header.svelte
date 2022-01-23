<!-- script -->
<script lang="ts">
  import { Link } from "svelte-routing";
  import logo from "../../../assets/images/H.png";

 export let showLogo: string = "showLogo";

</script>

<!-- main content -->
<header>
  <img src={logo} alt="logo" class={showLogo}>
  <nav>
    <ul>
      <li><Link to="/">Home</Link></li>
      <li><Link to="/about">About</Link></li>
      <li><Link to="/works">Works</Link></li>
      <li><Link to="/contact">Contact</Link></li>
    </ul>
    <span>an</span>
  </nav>
</header>

<!-- styles -->
<style lang="scss">
  @use "../../../assets/sass/main.scss" as *;

  .active {
    font-weight: 800;
    color: black;
  }

  header {
    display: flex;
    place-content: space-between;
    place-items: center;

    img {
      height: 3.25rem;
      margin-left: 3rem;
    }

    ul {
      display: none;
    }
  }
  
  @media (min-width: 468px) {
    header {
      padding: 0 2rem;

      h1 {
        font-size: 2rem;
      }
      
      ul {
        display: flex;
        place-content: space-between;
        
        li {
          text-transform: uppercase;
          padding: 0 0.7rem;
          font-size: 0.8rem;

          &::before {
            content: '';
            background: blue;
            width: 1rem;
            height: 1rem;
            color: blue;
          }
        }
      }

      span {
        display: none;
      }
    }
  }
</style>
