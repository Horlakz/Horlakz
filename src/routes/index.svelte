<script>
    import { Router, Route } from 'svelte-routing';

    import Index from "../pages/Index.svelte"
    import About from "../pages/About.svelte"
    import Works from '../pages/Works.svelte'

    import Error from '../pages/error/error.svelte';

    export let url = '';
</script>

<Router {url}>
    <Route path="*" component={Error} />

    <!-- <Route path="/" component={Static} /> -->

    <Route path="/" component={Index} />
    <Route path="/about" component={About} />
    <Route path='/works' component={Works} />
</Router>