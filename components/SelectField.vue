<!--
  SelectField.vue

  NOTE: this is a new component, not an edit to the existing Select.vue.
  known-issues.md flags Select.vue as having almost no real styling (just
  native <select> chrome) — this is what a properly designed select should
  look like, built to match the Figma "Algorithm" dropdown. Treat this as
  the reference implementation for Select.vue's eventual design pass
  rather than a silent replacement — Select.vue may be used elsewhere in
  the app and swapping it needs a deliberate migration, not a rename.
-->
<script setup>
import { ref } from "vue";

const props = defineProps({
  modelValue: { type: String, default: "" },
  options: { type: Array, required: true }, // array of strings
  label: { type: String, default: "" },
  required: { type: Boolean, default: false },
});
const emit = defineEmits(["update:modelValue"]);

const open = ref(false);
function select(option) {
  emit("update:modelValue", option);
  open.value = false;
}
</script>

<template>
  <div class="field">
    <label v-if="label" class="field-label">
      {{ label }} <span v-if="required" class="required">*</span>
    </label>
    <div class="select-wrap">
      <button type="button" class="select-trigger" @click="open = !open">
        <span>{{ modelValue || "Select..." }}</span>
        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
          <path d="M6 9l6 6 6-6" />
        </svg>
      </button>
      <ul v-if="open" class="select-menu" role="listbox">
        <li
          v-for="option in options"
          :key="option"
          class="select-option"
          role="option"
          @click="select(option)"
        >
          {{ option }}
        </li>
      </ul>
    </div>
  </div>
</template>

<style scoped>
.field {
  max-width: 400px;
  font-family: var(--font-family-body);
}
.field-label {
  display: block;
  font-size: var(--primitive-font-size-14);
  color: var(--color-text-label);
  margin-bottom: var(--primitive-space-2);
}
.required {
  color: var(--primitive-color-semantic-text-red);
}
.select-wrap {
  position: relative;
}
.select-trigger {
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: space-between;
  background: var(--color-surface-secondary);
  border: 1px solid var(--primitive-color-neutral-300);
  border-radius: var(--primitive-radius-xs);
  padding: var(--primitive-space-3) var(--primitive-space-4);
  font-family: var(--font-family-body);
  font-size: var(--primitive-font-size-16);
  color: var(--color-text-primary);
  cursor: pointer;
}
.select-trigger:focus-visible {
  outline: none;
  border-color: var(--color-button-focus-border);
}
.select-menu {
  position: absolute;
  top: calc(100% + var(--primitive-space-1));
  left: 0;
  right: 0;
  background: var(--color-surface-secondary);
  border: 1px solid var(--primitive-color-neutral-100);
  border-radius: var(--primitive-radius-xs);
  box-shadow: 0 4px 12px rgba(2, 6, 49, 0.1); /* NOTE: no shadow token in the exported set — flag for design */
  margin: 0;
  padding: var(--primitive-space-2) 0;
  list-style: none;
  z-index: 10;
}
.select-option {
  padding: var(--primitive-space-3) var(--primitive-space-4);
  font-size: var(--primitive-font-size-16);
  color: var(--color-text-primary);
  cursor: pointer;
}
.select-option:hover {
  background: var(--primitive-color-bg-page);
}
</style>
