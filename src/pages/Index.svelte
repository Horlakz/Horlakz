<script lang="ts">
    import BaseLayout from "../lib/layouts/BaseLayout.svelte";

    let pageIndex:string = 'page-active'
</script>

<BaseLayout {pageIndex}>
 <h3>Hello World! this is the homepage</h3>
</BaseLayout>