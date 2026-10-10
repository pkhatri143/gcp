<!-- Background is `color/primary/blue-10` (#020631), confirmed from the live
     Figma Side Navigation Panel — an existing token, not a new one. -->
<script setup>
defineProps({
  activeIcon: { type: String, default: "dashboard" },
});
</script>

<template>
  <aside class="sidebar">
    <div class="sidebar-top">
      <div class="sidebar-logo">A</div>
      <button class="sidebar-toggle" aria-label="Expand sidebar">
        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M9 6l6 6-6 6" /></svg>
      </button>
    </div>
    <nav class="sidebar-nav">
      <button class="sidebar-icon" :class="{ active: activeIcon === 'dashboard' }" aria-label="Dashboard">
        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6"><circle cx="12" cy="12" r="9" /><path d="M12 3v9l6 3" /></svg>
      </button>
      <button class="sidebar-icon" :class="{ active: activeIcon === 'apps' }" aria-label="Apps">
        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6"><rect x="3" y="3" width="7" height="7" rx="1" /><rect x="14" y="3" width="7" height="7" rx="1" /><rect x="3" y="14" width="7" height="7" rx="1" /><rect x="14" y="14" width="7" height="7" rx="1" /></svg>
      </button>
      <button class="sidebar-icon" :class="{ active: activeIcon === 'orders' }" aria-label="Orders">
        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6"><path d="M6 8h12l-1 12H7L6 8z" /><path d="M9 8V6a3 3 0 0 1 6 0v2" /></svg>
      </button>
      <button class="sidebar-icon" :class="{ active: activeIcon === 'support' }" aria-label="Support">
        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6"><path d="M4 13a8 8 0 0 1 16 0" /><rect x="3" y="13" width="4" height="6" rx="1" /><rect x="17" y="13" width="4" height="6" rx="1" /></svg>
      </button>
    </nav>
    <button class="sidebar-icon" :class="{ active: activeIcon === 'settings' }" aria-label="Settings">
      <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6">
        <circle cx="12" cy="12" r="3" />
        <path d="M19.4 15a1.7 1.7 0 0 0 .34 1.87l.06.06a2 2 0 1 1-2.83 2.83l-.06-.06a1.7 1.7 0 0 0-1.87-.34 1.7 1.7 0 0 0-1 1.55V21a2 2 0 1 1-4 0v-.09a1.7 1.7 0 0 0-1-1.55 1.7 1.7 0 0 0-1.87.34l-.06.06a2 2 0 1 1-2.83-2.83l.06-.06A1.7 1.7 0 0 0 4.6 15a1.7 1.7 0 0 0-1.55-1H3a2 2 0 1 1 0-4h.09A1.7 1.7 0 0 0 4.6 9a1.7 1.7 0 0 0-.34-1.87l-.06-.06a2 2 0 1 1 2.83-2.83l.06.06A1.7 1.7 0 0 0 9 4.6a1.7 1.7 0 0 0 1-1.55V3a2 2 0 1 1 4 0v.09a1.7 1.7 0 0 0 1 1.55 1.7 1.7 0 0 0 1.87-.34l.06-.06a2 2 0 1 1 2.83 2.83l-.06.06A1.7 1.7 0 0 0 19.4 9a1.7 1.7 0 0 0 1.55 1H21a2 2 0 1 1 0 4h-.09a1.7 1.7 0 0 0-1.55 1z" />
      </svg>
    </button>
  </aside>
</template>

<style scoped>
.sidebar {
  width: 72px;
  flex-shrink: 0;
  background: var(--primitive-color-blue-10);
  display: flex;
  flex-direction: column;
  align-items: center;
  padding: var(--primitive-space-5) 0;
  gap: var(--primitive-space-7);
}
.sidebar-top {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: var(--primitive-space-4);
}
.sidebar-logo {
  color: var(--primitive-color-bg-card);
  font-weight: var(--primitive-font-weight-bold);
  font-size: var(--primitive-font-size-24);
  font-family: var(--font-family-body);
}
.sidebar-toggle {
  background: var(--primitive-color-bg-card);
  border: none;
  border-radius: var(--primitive-radius-full);
  width: 28px;
  height: 28px;
  display: flex;
  align-items: center;
  justify-content: center;
  color: var(--primitive-color-blue-10);
  cursor: pointer;
}
.sidebar-nav {
  display: flex;
  flex-direction: column;
  gap: var(--primitive-space-6);
  flex: 1;
}
.sidebar-icon {
  background: none;
  border: none;
  color: rgba(255, 255, 255, 0.55); /* token-exempt: NEEDS TOKEN - translucent white; sidebar being rebuilt from latest Figma */
  cursor: pointer;
  padding: var(--primitive-space-2);
}
.sidebar-icon.active,
.sidebar-icon:hover {
  color: var(--primitive-color-bg-card);
}
</style>
