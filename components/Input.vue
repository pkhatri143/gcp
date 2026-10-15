<!-- eslint-disable vue/multi-word-component-names -->
<script setup>
import { defineProps, defineEmits, ref, watch, computed } from "vue";

const props = defineProps({
    modelValue: {
        type: String,
        default: ""
    },
    displayValue: {
        type: String,
        default: null
    },
    placeholder: String,
    size: String,
    inputType: {
        type: String,
        default: "text"
    },
    id: {
        type: String,
        default: () => `input-${Math.random().toString(36).slice(2)}`
    },
    visibleColor: {
        type: Boolean,
        default: false
    },
    disabled: {
        default: false,
        type: Boolean
    }
});

const emit = defineEmits(["update:modelValue"]);
const hasUserEdited = ref(false);
const hasExternalValue = ref(false);
const isFocused = ref(false);
const sizeClass = ["small", "large"].includes(props.size)
    ? `input-container input-${props.size}`
    : "input-container";

/**
 * Watch for external value changes (API / programmatic)
 */
watch(
  () => props.modelValue,
  (newVal, oldVal) => {
    if (!hasUserEdited.value && newVal !== "" && newVal !== oldVal) {
      hasExternalValue.value = true;
    }
    if (newVal === "") {
      hasExternalValue.value = false;
      hasUserEdited.value = false;
    }
  }
);

/**
	 * 
	 * @param e 
	 */
function onInput(e) {
    hasUserEdited.value = true;
    hasExternalValue.value = false;
    emit("update:modelValue", e.target.value);
}

/**
 * Border color logic
 *
 * NOTE: these three colors resolve to Figma's "Indicator/Accent 9",
 * "Indicator/Accent 8", and "Neutral/300" — i.e. chart/data-viz accent
 * colors being reused here as input-state indicators (edited vs.
 * externally-set vs. default). There's no dedicated semantic token for
 * "input border - edited" / "input border - external value" in the
 * exported set. Works today because the hex values happen to exist, but
 * it's borrowing meaning from an unrelated token family — worth asking
 * design to add real --color-input-border-* semantic tokens so this
 * isn't silently coupled to the chart palette.
 */
const borderColor = computed(() => {
  if (hasUserEdited.value) return "var(--primitive-color-indicator-accent-9)"; // #C600BF
  if (hasExternalValue.value) return "var(--primitive-color-indicator-accent-8)"; // #F5CC00
  return "var(--primitive-color-neutral-300)"; // #9CA5BE
});
</script>

<template>
    <!-- NOTE: focused-state border was hardcoded to pure black (#000000),
         which has no matching token in the exported set either. Left as a
         literal for now — flag with design whether focus should actually
         use --primitive-color-neutral-700 (#202430, the darkest neutral)
         or a real focus-ring token like Button's --color-button-focus-border. -->
    <!-- token-exempt: NEEDS TOKEN - focus border, pure black --><div class="mainInputContainer" :style="{ borderColor: isFocused ? '#000000' : 'var(--primitive-color-neutral-300)' }">
        <input 
            :id="id" 
            :type="inputType" 
            :placeholder="placeholder" 
            :class="sizeClass" 
            :value="isFocused ? modelValue : (displayValue ?? modelValue)"
            :disabled="disabled" 
            @input="onInput"
            @focus="isFocused = true"
            @blur="isFocused = false"
            :style="{
                '--border-color': borderColor,
                borderLeft: visibleColor ? `4px solid ${borderColor}` : 'none'
            }"
        />
    </div>
</template>

<style lang="css" scoped>
.mainInputContainer{
    border-radius: var(--primitive-radius-xs);
    border: 1px solid var(--primitive-color-neutral-300);
    padding: 0px;
    height: 40px;
    width:100%;
}

.input-container {
    display: block;
    margin: 0px;
	border-radius: var(--primitive-radius-xs);
	padding: var(--primitive-space-3);
	box-sizing: border-box;
	font-family: var(--font-family-body);
	font-weight: var(--primitive-font-weight-regular);
	box-shadow: none;
    border: none;
    border-left: var(--primitive-radius-xs) solid var(--border-color);
    font-size: var(--primitive-font-size-12);
    line-height: var(--primitive-line-height-xs);
    width: 100%;
    height: 100%;
}

.input-container:focus {
    outline: none;
}

/* NOTE: another pure-black literal with no matching semantic token.
   --primitive-color-neutral-700 (#202430) is the closest scale value
   if design confirms disabled input text shouldn't be true black. */
.input-container:disabled {
    color: #000000; /* token-exempt: NEEDS TOKEN - disabled text, pure black */
    -webkit-text-fill-color: #000000; /* token-exempt: NEEDS TOKEN - same as above */
    opacity: 1;
}

.input-large {
	width: 100%;
	min-height: 40px;
}

.input-small {
	width: 100%;
	min-height: 32px;
}
</style>