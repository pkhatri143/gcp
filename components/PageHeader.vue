<script setup>
defineProps({
  title: { type: String, required: true },
  subtitle: { type: String, default: "" },
  // [{ label: 'Display ID', value: 'EQUI.108' }, ...]
  meta: { type: Array, default: () => [] },
});
</script>

<template>
  <div class="page-header">
    <div class="header-top">
      <div>
        <h1 class="header-title">{{ title }}</h1>
        <p v-if="subtitle" class="header-subtitle">{{ subtitle }}</p>
      </div>
      <div class="header-actions">
        <slot name="actions" />
      </div>
    </div>
    <dl v-if="meta.length" class="header-meta">
      <div v-for="field in meta" :key="field.label" class="meta-field">
        <dt>{{ field.label }}:</dt>
        <dd>{{ field.value }}</dd>
      </div>
    </dl>
  </div>
</template>

<style scoped>
.page-header {
  font-family: var(--font-family-body);
  padding-bottom: var(--primitive-space-5);
  border-bottom: 1px solid var(--primitive-color-neutral-100);
}
.header-top {
  display: flex;
  align-items: flex-start;
  justify-content: space-between;
  gap: var(--primitive-space-5);
}
.header-title {
  margin: 0;
  font-size: var(--primitive-font-size-24);
  font-weight: var(--primitive-font-weight-bold);
  color: var(--color-text-primary);
}
.header-subtitle {
  margin: var(--primitive-space-1) 0 0;
  font-size: var(--primitive-font-size-14);
  color: var(--color-text-label);
}
.header-actions {
  display: flex;
  align-items: center;
  gap: var(--primitive-space-5);
  flex-shrink: 0;
}
.header-meta {
  display: flex;
  flex-wrap: wrap;
  gap: var(--primitive-space-7);
  margin: var(--primitive-space-5) 0 0;
}
.meta-field {
  display: flex;
  gap: var(--primitive-space-2);
  font-size: var(--primitive-font-size-14);
}
.meta-field dt {
  color: var(--color-text-label);
}
.meta-field dd {
  margin: 0;
  color: var(--color-text-primary);
  font-weight: var(--primitive-font-weight-semi-bold);
}
</style>
