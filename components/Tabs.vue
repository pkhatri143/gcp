<script setup>
const props = defineProps({
  tabs: { type: Array, required: true }, // array of strings
  modelValue: { type: String, required: true },
});
defineEmits(["update:modelValue"]);
</script>

<template>
  <div class="tabs" role="tablist">
    <button
      v-for="tab in tabs"
      :key="tab"
      class="tab"
      :class="{ 'tab-active': modelValue === tab }"
      role="tab"
      :aria-selected="modelValue === tab"
      @click="$emit('update:modelValue', tab)"
    >
      {{ tab }}
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
</style>
