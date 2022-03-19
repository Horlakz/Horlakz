<script lang="ts">
  import { navigate } from "svelte-routing";

  import ChevronRight from "../lib/components/svg/ChevronRight.svelte";
  import BaseLayout from "../lib/layouts/BaseLayout.svelte";

  let pageIndex: string = "page-active";
  let value: string;

  const go = (e) => {
    if (e.key === "Enter") {
      navigate(value);
    }
  };
</script>

<BaseLayout {pageIndex}>
  <main>
    <section>
      <div>
        <h4 class="small-font">Hello! I am</h4>
        <h1>Olakotan Daniel</h1>
        <h5>FrontEnd Developer</h5>
      </div>
      <div>
        <p class="small-font">// write a code below to jump to page:</p>
        <span class="input-group">
          <ChevronRight />
          <input
            type="text"
            placeholder="press enter to continue"
            bind:value
            on:keyup={go}
          />
        </span>
      </div>
    </section>
    <section>
      <div class="project-div">
        <div>
          <span class="small-font">Project 1</span>
          <span class="small-font">26 commits</span>
        </div>
        <div>
          <p class="small-font">
            <span>/**</span>
            <span class="small-font">* Used The Mern Stack</span>
            <span class="small-font">* Database with Mongo Atlas</span>
            <span class="small-font">* React Redux for Authentication</span>
            <span class="small-font">* A Goalsetter App</span>
            <span>*/</span>
          </p>
          <a
            href="https://horlakzgoalsetterapp.herokuapp.com/"
            class="small-font see-text"
            target="_blank"
            >See the Project
          </a>
        </div>
      </div>
    </section>
  </main>
</BaseLayout>

<style lang="scss">
  @use "../assets/sass/main.scss" as *;

  main {
    display: flex;
    place-items: center;
    place-content: center;
    color: lighten($font-color, 40%);
    padding: 0rem 14rem;

    section:first-child {
      display: grid;
      justify-content: space-between;
      width: 100%;

      div {
        display: grid;

        h4 {
          margin: 0 0 0.5rem 0;
        }

        h1 {
          font-size: 2.5rem;
        }

        h5 {
          font-size: 1.2rem;
          color: $font-aqua-color;
        }

        &:nth-child(2) {
          margin-top: 6rem;

          span {
            display: flex;
            width: 100%;
            margin-top: 0.7rem;

            input {
              width: 100%;
              background: none;
              border: none;
              margin-left: 1rem;
              font-size: large;
              color: lighten($purple-color, 10%);

              &:focus {
                border: none;
                outline: none;
              }

              &::placeholder {
                color: lighten($purple-color, 20%);
              }
            }
          }
        }
      }
    }

    section:nth-child(2) {
      width: 100%;
    }
  }

  .project-div {
    border: 1px solid lighten($border-color, 30%);
    padding: 0rem 0.8rem 0.8rem 0.8rem;
    border-radius: 0.5rem;
    width: 22rem;
    box-shadow: 1px 3px 40px 3px rgba(89, 164, 168, 1);
    -webkit-box-shadow: 1px 3px 40px 3px rgba(89, 164, 168, 1);
    -moz-box-shadow: 1px 3px 40px 3px rgba(89, 164, 168, 1);

    div:first-child {
      display: flex;
      justify-content: space-between;
      margin: 0.8rem 0;

      span:first-child {
        color: $orange-color;
      }

      span:last-child {
        color: $font-color;
      }
    }

    div:last-child {
      background-color: darken($bg-color, 2%);
      width: 100%;
      padding-bottom: 2rem;
      box-shadow: -1px 2px 7px 0px rgba(14, 14, 14, 0.75) inset;
      -webkit-box-shadow: -1px 2px 7px 0px rgba(14, 14, 14, 0.75) inset;
      -moz-box-shadow: -1px 2px 7px 0px rgba(14, 14, 14, 0.75) inset;

      p {
        display: grid;
        margin: 0rem 0 1rem 1.5rem;
        border-left: 1px solid $border-color;
        padding: 0rem 0 0 0.6rem;
        color: $font-color;
        @extend .small-font;

        span:first-child {
          margin-left: -1rem;
          margin-bottom: 0.1rem;
          background-color: darken($bg-color, 2%);
          padding: 0.5rem 0 0.4rem 0;
        }
      }

      .see-text {
        display: flex;
        place-content: start;
        place-items: center;
        background-color: $orange-color;
        padding: 0 1rem;
        margin: 1rem 0 0rem 0;
        color: black;
        width: 100%;
        cursor: pointer;
      }
    }
  }

  .small-font {
    font-size: 0.85rem;
  }

  @media (min-height: 500px) {
    main {
      height: 80vh;
    }
  }
</style>
