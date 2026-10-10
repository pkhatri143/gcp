<script setup>
defineProps({
  modelValue: { type: String, default: "" },
  placeholder: { type: String, default: "Search" },
});
defineEmits(["update:modelValue"]);
</script>

<template>
  <div class="search-input">
    <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
      <circle cx="11" cy="11" r="7" /><path d="M21 21l-4.3-4.3" />
    </svg>
    <input
      :value="modelValue"
      type="text"
      :placeholder="placeholder"
      @input="$emit('update:modelValue', $event.target.value)"
    />
  </div>
</template>

<style scoped>
.search-input {
  display: flex;
  align-items: center;
  gap: var(--primitive-space-3);
  border: 1px solid var(--primitive-color-neutral-300);
  border-radius: var(--primitive-radius-s);
  padding: var(--primitive-space-3) var(--primitive-space-4);
  max-width: 420px;
  color: var(--color-text-label);
}
.search-input input {
  border: none;
  outline: none;
  font-family: var(--font-family-body);
  font-size: var(--primitive-font-size-14);
  color: var(--color-text-primary);
  width: 100%;
  background: transparent;
}
</style>
