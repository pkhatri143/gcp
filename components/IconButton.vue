<script setup>
defineProps({
  label: { type: String, required: true }, // aria-label — required, not optional, since every use here is icon-only
});
defineEmits(["click"]);
</script>

<template>
  <button type="button" class="icon-btn" :aria-label="label" @click="$emit('click')">
    <slot />
  </button>
</template>

<style scoped>
.icon-btn {
  background: none;
  border: none;
  color: var(--color-text-label);
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: var(--primitive-space-2);
  border-radius: var(--primitive-radius-xs);
}
.icon-btn:hover {
  background: var(--primitive-color-neutral-100);
}
</style>
