<script setup>
import { computed } from "vue";

const props = defineProps({
  // Backward compatible: accepts plain strings (existing usage, e.g.
  // AlgorithmMappingPage.vue) OR objects { label, hasDropdown } for tabs
  // that expand a submenu, as seen on the equipment detail page
  // (Structure, Assignments, Classification & MDA, Asset Intelligence,
  // Maintenance and Service all show a dropdown chevron in that screen).
  tabs: { type: Array, required: true },
  modelValue: { type: String, required: true },
});
defineEmits(["update:modelValue"]);

const normalizedTabs = computed(() =>
  props.tabs.map((t) => (typeof t === "string" ? { label: t, hasDropdown: false } : t))
);
</script>

<template>
  <div class="tabs" role="tablist">
    <button
      v-for="tab in normalizedTabs"
      :key="tab.label"
      class="tab"
      :class="{ 'tab-active': modelValue === tab.label }"
      role="tab"
      :aria-selected="modelValue === tab.label"
      @click="$emit('update:modelValue', tab.label)"
    >
      {{ tab.label }}
      <svg v-if="tab.hasDropdown" class="tab-caret" width="10" height="10" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
        <path d="M6 9l6 6 6-6" />
      </svg>
    </button>
  </div>
</template>

<style scoped>
.tabs {
  display: flex;
  gap: var(--primitive-space-7);
  padding: 0 var(--primitive-space-7);
  border-bottom: 1px solid var(--primitive-color-neutral-100);
  overflow-x: auto;
}
.tab {
  display: inline-flex;
  align-items: center;
  gap: var(--primitive-space-1);
  background: none;
  border: none;
  border-bottom: 2px solid transparent;
  padding: var(--primitive-space-4) 0;
  color: var(--color-text-label);
  font-size: var(--primitive-font-size-16);
  font-family: var(--font-family-body);
  cursor: pointer;
  white-space: nowrap;
}
.tab-active {
  color: var(--color-button-default);
  border-bottom-color: var(--color-button-default);
  font-weight: var(--primitive-font-weight-semi-bold);
}
.tab-caret {
  flex-shrink: 0;
}
</style>
