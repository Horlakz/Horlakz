<script lang="ts">
  import { Link } from "svelte-routing";
</script>

<header>
  <h1>Horlakz</h1>
  <nav>
    <ul>
      <li><Link to="/">Home</Link></li>
      <li><Link to="/about">About</Link></li>
      <li><Link to="/works">Works</Link></li>
      <li><Link to="/contact">Contact</Link></li>
    </ul>
    <span>another</span>
  </nav>
</header>

<style lang="scss">
  @use "../../../assets/sass/main.scss" as *;

  header {
    display: flex;
    place-content: space-between;
    place-items: center;

    h1 {
      font-weight: 600;
      font-size: 1.5rem;
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
        }
      }

      span {
        display: none;
      }
    }
  }
</style>
