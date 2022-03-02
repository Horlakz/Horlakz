<!-- script -->
<script lang="ts">
  import { Link } from "svelte-routing";

</script>

<!-- main content -->
<header>
  <section>
    <div class="tabs-div">
      <div></div>
      <div></div>
      <div></div>
    </div>
    <h1><Link to='/'>horlakz</Link></h1>
  </section>
  <nav>
    <ul>
      <li><Link to="/">hello</Link></li>
      <li><Link to="/about">about</Link></li>
      <li><Link to="/works">works</Link></li>
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
      
      .tabs-div {
        display: flex;
        position: absolute;
        left: .3rem;

        div {
          height: .5rem;
          width: .5rem;
          border-radius: 999px;
          margin: 0 .3rem;

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
        
        h1 {
          text-align: center;
        }
      }
    }

    nav ul {
      display: flex;

      li {
        padding: .4rem 1rem;
      }
    }
  }
</style>
