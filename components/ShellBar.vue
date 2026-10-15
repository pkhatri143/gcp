<!--
  ShellBar.vue

  The standard top bar. Source: "Shell Bar" instance in the Template layout
  (Figma library, node 11506:8802 / 11506:8839): full width, logo on the left,
  notification bell and 32px profile thumbnail on the right.

  The default logo is a PLACEHOLDER wordmark. The real "AsInt edge" logo is an
  SVG asset in Figma; pass it through the `logo` slot.
  The older TopBar.vue (breadcrumbs + language switch) belongs to the previous
  page layout and is not part of the standard.
-->
<script setup>
defineProps({
  initials: { type: String, default: "" },
});
defineEmits(["notifications", "profile"]);
</script>

<template>
  <header class="shell-bar">
    <div class="shell-logo">
      <slot name="logo">
        <span class="logo-asint">AsInt</span><span class="logo-edge">edge</span>
      </slot>
    </div>
    <div class="shell-actions">
      <slot name="actions" />
      <button type="button" class="shell-bell" aria-label="Notifications" @click="$emit('notifications')">
        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
          <path d="M18 8a6 6 0 1 0-12 0c0 7-3 9-3 9h18s-3-2-3-9" />
          <path d="M13.7 21a2 2 0 0 1-3.4 0" />
        </svg>
      </button>
      <button type="button" class="shell-profile" :aria-label="'Profile ' + initials" @click="$emit('profile')">{{ initials }}</button>
    </div>
  </header>
</template>

<style scoped>
.shell-bar {
  box-sizing: border-box;
  width: 100%;
  display: flex; align-items: center; justify-content: space-between;
  padding: var(--primitive-space-2) var(--primitive-space-7);
  font-family: var(--font-family-body);
}
.shell-logo { display: flex; align-items: center; gap: 7px; height: 32px; }
.logo-asint {
  font-size: var(--font-header-5-size);
  line-height: var(--font-header-5-line-height);
  font-weight: var(--font-header-5-weight);
  font-style: italic;
  color: var(--color-text-primary);
}
.logo-edge {
  padding: 0 var(--primitive-space-3);
  background: var(--gradient-app-tile);
  border-radius: var(--primitive-radius-s);
  color: var(--color-text-primary-button);
  font-size: var(--font-subheader-1-size);
  line-height: var(--font-header-5-line-height);
  font-weight: var(--font-subheader-1-weight);
}
.shell-actions { display: flex; align-items: center; gap: var(--primitive-space-5); }
.shell-bell {
  display: flex; align-items: center; justify-content: center;
  height: 40px; min-width: 48px; padding: var(--primitive-space-3) var(--primitive-space-4);
  background: none; border: none; border-radius: var(--primitive-radius-s);
  color: var(--color-text-primary); cursor: pointer;
}
.shell-bell:hover { background: var(--primitive-color-semantic-bg-blue); }
.shell-profile {
  box-sizing: border-box; width: 32px; height: 32px; padding: 0;
  display: flex; align-items: center; justify-content: center;
  background: var(--primitive-color-indicator-accent-4);
  border: 0.667px solid var(--primitive-color-neutral-300); /* Figma: 0.667px */
  border-radius: var(--primitive-radius-full);
  font-family: inherit;
  font-size: var(--font-subheader-2-size);
  font-weight: var(--font-subheader-2-weight);
  color: #000; /* token-exempt: NEEDS TOKEN - Figma uses literal black for avatar initials */
  text-transform: capitalize; cursor: pointer;
}
.shell-bell:focus-visible, .shell-profile:focus-visible {
  outline: 2px solid var(--color-button-focus-border);
  outline-offset: 2px;
}
</style>
