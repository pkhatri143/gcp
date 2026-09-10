<script setup>
import Breadcrumbs from "./Breadcrumbs.vue";
import IconButton from "./IconButton.vue";

defineProps({
  breadcrumbs: { type: Array, required: true },
  userInitials: { type: String, default: "" },
});
</script>

<template>
  <header class="topbar">
    <Breadcrumbs :items="breadcrumbs" />
    <div class="topbar-actions">
      <button class="lang-select">
        <span class="flag-dot" aria-hidden="true"></span>
        EN
        <svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M6 9l6 6 6-6" /></svg>
      </button>
      <IconButton label="Notifications">
        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6">
          <path d="M18 8a6 6 0 1 0-12 0c0 7-3 9-3 9h18s-3-2-3-9" /><path d="M13.7 21a2 2 0 0 1-3.4 0" />
        </svg>
      </IconButton>
      <!-- NEW TOKEN NEEDED: avatar pink not in exported set, approximated
           with the nearest chart-indicator color. See known-issues.md. -->
      <div class="avatar" :title="userInitials">{{ userInitials }}</div>
    </div>
  </header>
</template>

<style scoped>
.topbar {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: var(--primitive-space-5) var(--primitive-space-7);
  background: var(--color-surface-secondary);
  border-bottom: 1px solid var(--primitive-color-neutral-100);
}
.topbar-actions {
  display: flex;
  align-items: center;
  gap: var(--primitive-space-5);
}
.lang-select {
  display: flex;
  align-items: center;
  gap: var(--primitive-space-2);
  background: none;
  border: none;
  color: var(--color-text-primary);
  font-family: var(--font-family-body);
  font-size: var(--primitive-font-size-14);
  cursor: pointer;
}
.flag-dot {
  width: 18px;
  height: 18px;
  border-radius: var(--primitive-radius-full);
  background: var(--primitive-color-states-blue-40); /* placeholder for flag icon */
  display: inline-block;
}
.avatar {
  width: 40px;
  height: 40px;
  border-radius: var(--primitive-radius-full);
  background: var(--primitive-color-indicator-accent-4); /* NEW TOKEN NEEDED */
  color: var(--primitive-color-indicator-accent-9);
  display: flex;
  align-items: center;
  justify-content: center;
  font-weight: var(--primitive-font-weight-semi-bold);
  font-size: var(--primitive-font-size-14);
  font-family: var(--font-family-body);
}
</style>
