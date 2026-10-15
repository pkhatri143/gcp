<script setup>
import { defineProps, defineEmits } from "vue";

const props = defineProps({
    modelValue: [String, Number, Boolean],
    options: {
        type: Array,
        required: true,
    },
    label: String,
});

const emit = defineEmits(["update:modelValue"]);

/**
 * Function that triggers on select of dropdown
 * @param event 
 */
function onChange(event) {
    emit("update:modelValue", event.target.value);
}
</script>

<template>
  <div class="select-group">
    <label v-if="label">{{ props.label }}</label>

    <select :value="modelValue" @change="onChange" class="select">
      <option disabled value="">-- Select --</option>
      <option v-for="(opt, index) in props.options" :key="index" :value="opt">
        {{ opt }}
      </option>
    </select>
  </div>
</template>

<style scoped>
/* NOTE: this is the only styled rule in the component — everything else
   (border, radius, padding, colors, focus state, the dropdown chevron)
   is the browser's native <select> rendering. There's no visual parity
   with a Figma "Select" or "Dropdown" component here yet, so tokenizing
   this one line doesn't get you a matching component — this one needs
   an actual build-out against the Figma spec, not just a token swap. */
.select-group {
    font-family: var(--font-family-body);
}
</style>
