<!--
  PageLayout.vue — THE STANDARD PAGE LAYOUT. New pages go inside this.

  Source: Figma library frame "Template" (node 11506:8802), 1728 x 1092:
    - page background  = surface-primary
    - ShellBar         = full width, 16px from the top, 48px tall
    - sidebar          = floating white card, 16px from the left, 80px from the top
    - content          = one white card, 16px right of the sidebar, 24px from the
                         right and bottom edges
  Both cards: 1px neutral-100 border, 20px radius (--primitive-radius-l).

  Not defined by the Template: padding inside the content container (it is
  empty in Figma) and where the container starts when the sidebar is collapsed.
  Padding is left to each page. The collapsed position is derived (it simply
  keeps the same 16px gap) and has not been checked against a design.
-->
<script setup>
import { ref } from "vue";
import ShellBar from "./ShellBar.vue";
import SideNavigationPanel from "./SideNavigationPanel.vue";

const collapsed = ref(false);
const activeItem = ref("overview");
const currentProject = ref("Pilot Project A");

defineProps({
  userInitials: { type: String, default: "" },
  projects: { type: Array, default: () => ["Pilot Project A"] },
});
</script>

<template>
  <div class="page-layout">
    <ShellBar :initials="userInitials">
      <template v-if="$slots.logo" #logo><slot name="logo" /></template>
    </ShellBar>
    <div class="page-layout-body">
      <SideNavigationPanel
        v-model:collapsed="collapsed"
        v-model:activeItem="activeItem"
        v-model:currentProject="currentProject"
        :projects="projects"
      />
      <main class="page-layout-container">
        <slot />
      </main>
    </div>
  </div>
</template>

<style scoped>
.page-layout {
  box-sizing: border-box;
  min-height: 100vh;
  display: flex; flex-direction: column;
  padding-top: var(--primitive-space-5);
  background: var(--color-surface-primary);
  font-family: var(--font-family-body);
}
.page-layout-body {
  flex: 1; min-height: 0;
  display: flex; align-items: stretch;
  gap: var(--primitive-space-5);
  padding: var(--primitive-space-5) var(--primitive-space-7) var(--primitive-space-7) var(--primitive-space-5);
}
.page-layout-container {
  flex: 1; min-width: 0;
  background: var(--color-surface-secondary);
  border: 1px solid var(--primitive-color-neutral-100);
  border-radius: var(--primitive-radius-l);
  overflow: auto;
}
</style>
