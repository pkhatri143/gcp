<script setup>
defineProps({
  // [{ label: 'Adaptable Models', href: '#' }, { label: 'AAM.106' }]  (last item = current, no href)
  items: { type: Array, required: true },
});
</script>

<template>
  <nav class="breadcrumbs" aria-label="Breadcrumb">
    <template v-for="(item, i) in items" :key="item.label">
      <a v-if="item.href" :href="item.href" class="crumb-link">{{ item.label }}</a>
      <span v-else class="crumb-current">{{ item.label }}</span>
      <span v-if="i < items.length - 1" class="crumb-sep">/</span>
    </template>
  </nav>
</template>

<style scoped>
.breadcrumbs {
  display: flex;
  align-items: center;
  gap: var(--primitive-space-2);
  font-size: var(--primitive-font-size-16);
  font-family: var(--font-family-body);
}
.crumb-link {
  color: var(--color-button-default);
  text-decoration: none;
}
.crumb-link:hover {
  text-decoration: underline;
}
.crumb-sep,
.crumb-current {
  color: var(--color-text-label);
}
</style>
