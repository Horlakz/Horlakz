<script>
    import { Router, Route } from 'svelte-routing';

    import Index from "../pages/Index.svelte"
    import About from "../pages/About.svelte"
    import Contact from "../pages/Contact.svelte"
    import Works from '../pages/Works.svelte'

    import Error from '../pages/error/error.svelte';

    import Static from '../pages/Static.svelte';

    export let url = '';
</script>

<Router {url}>
    <Route path="*" component={Error} />

    <!-- <Route path="/" component={Static} /> -->

    <Route path="/" component={Index} />
    <Route path="/about" component={About} />
    <Route path='/contact' component={Contact} />
    <Route path='/works' component={Works} />
</Router>