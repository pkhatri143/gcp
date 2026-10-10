<script setup>
defineProps({
  title: { type: String, default: "No records found." },
  subtitle: { type: String, default: "Get started by adding your first item." },
});
</script>

<template>
  <div class="empty-state">
    <div class="empty-icon">
      <slot name="icon">
        <svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6">
          <path d="M14 3H7a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V8l-5-5z" />
          <path d="M14 3v5h5" /><path d="M9 15l2 2 4-4" />
        </svg>
      </slot>
    </div>
    <p class="empty-title">{{ title }}</p>
    <p class="empty-subtitle">{{ subtitle }}</p>
  </div>
</template>

<style scoped>
.empty-state {
  display: flex;
  flex-direction: column;
  align-items: center;
  padding: var(--primitive-space-12) 0;
  font-family: var(--font-family-body);
}
.empty-icon {
  width: 56px;
  height: 56px;
  border-radius: var(--primitive-radius-full);
  background: var(--primitive-color-semantic-bg-blue);
  color: var(--primitive-color-semantic-element-blue);
  display: flex;
  align-items: center;
  justify-content: center;
  margin-bottom: var(--primitive-space-4);
}
.empty-title {
  margin: 0;
  font-weight: var(--primitive-font-weight-semi-bold);
  color: var(--color-text-primary);
  font-size: var(--primitive-font-size-16);
}
.empty-subtitle {
  margin: var(--primitive-space-1) 0 0;
  color: var(--color-text-label);
  font-size: var(--primitive-font-size-14);
}
</style>
