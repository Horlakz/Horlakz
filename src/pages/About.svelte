<script lang="ts">
    import BaseLayout from "../lib/layouts/BaseLayout.svelte";

    export let pageAbout = 'page-active'
</script>

<BaseLayout {pageAbout}>
 <h3>Hello World! this is the About Page</h3>
</BaseLayout>