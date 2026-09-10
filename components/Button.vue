<script setup>
import { computed, defineProps, defineEmits } from "vue";
import chevron_down from "../assets/icons/chevron_down.svg";
import chevron_left from "../assets/icons/chevron_left.svg";
import chevron_right from "../assets/icons/chevron_right.svg";
const btnProps = defineProps({
    text: String,
    type: {
        type: String,
        default: "button",
    },
    disabled: Boolean,
    size: String,
    arrow: {
        type: Boolean,
        default: false
    },
    arrow_direction: String,
    icon: String,
    customClass: String,
    leftIconClass: String,
    tooltip: String,
    btnBackgroundType: {
        type: String,
        default: "emphasized"
    }
});
const emit = defineEmits(["button-click"]);
const btnIcon = btnProps.icon ? new URL(btnProps.icon, import.meta.url).href : null;
var arrowIcon = "";
if(btnProps.arrow_direction === "down") {
    arrowIcon = chevron_down;
} else if(btnProps.arrow_direction === "left") {
    arrowIcon = chevron_left;
} else if(btnProps.arrow_direction === "right") {
    arrowIcon = chevron_right;
}
// Reactive, not a one-time mutation of the (read-only) disabled prop at mount - the button
// must go back to its real background type, and re-enable, whenever `disabled` later
// becomes false (e.g. a form drawer that opens disabled and enables once required fields
// are filled). Mutating btnProps.btnBackgroundType directly only ran once at setup, so a
// button that started disabled stayed permanently disabled even after `disabled` flipped.
const effectiveBtnBackgroundType = computed(() =>
    btnProps.disabled ? "neutral" : btnProps.btnBackgroundType
);

/**
 *
 */
function handleClick() {
    emit("button-click");
}

const sizeClass = ["small", "medium", "large"].includes(btnProps.size) ? "btn-container" + " " + `btn-${btnProps.size}` : "btn-container";
const arrowSizeClass = ["small", "medium", "large"].includes(btnProps.size) ? "button-arrow-" + `${btnProps.size}` : "";
</script>

<template>
    <button :type="btnProps.type" :class="`${sizeClass} ${effectiveBtnBackgroundType} ${btnProps.customClass || ''}`" @click="handleClick"
        :data-tooltip="btnProps.tooltip" :disabled="btnProps.disabled">
        <img v-if="btnProps.icon" class="icon" :src=btnIcon alt="icon" />
        <span class="button-text">
            <slot>{{ text }}</slot>
        </span>
        <img v-if="btnProps.arrow" :class="`${arrowSizeClass}`" :src=arrowIcon />
    </button>
</template>

<style lang="css" scoped>
.btn-container {
    position: relative;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: var(--radius-button);
    border: none;
    font-weight: var(--primitive-font-weight-semi-bold);
    text-decoration: none;
    color: var(--color-text-primary-button);
    font-family: var(--font-family-body);
}

.emphasized {
    background: var(--color-button-default);
}

/* NOTE: previously hardcoded to #9CA5BE (Neutral/300) for the disabled
   state, which does not match Figma's actual disabled-button token
   (--color-button-disabled, #9DA5FF / States/Blue 70). Fixed to use the
   correct semantic token below. Flag this drift with design if the grey
   look was intentional and the token needs updating instead. */
.neutral {
    background: var(--color-button-disabled);
}

.transparent {
    background: none;
    color: var(--color-text-secondary-button);
}

.button-arrow-large {
    height: 24px;
    width: 24px;
    margin-left: var(--primitive-space-3); /* 8px */
}

.button-arrow-medium {
    width: 20px;
    height: 20px;
    /* NOTE: original value was 6px, which isn't on the spacing scale
       (nearest tokens are 4px / 8px). Rounded down to 4px here \u2014 confirm
       with design whether 6px was intentional and needs its own token. */
    margin-left: var(--primitive-space-2); /* 4px */
}

.button-arrow-small {
    width: 16px;
    height: 16px;
    margin-left: var(--primitive-space-2); /* 4px */
}

.btn-large {
    padding: var(--button-padding-y) var(--button-padding-x);
    font-size: var(--primitive-font-size-20);
}

.btn-medium {
    padding: var(--button-padding-y) var(--button-padding-x);
    font-size: var(--primitive-font-size-16);
}

.btn-small {
    padding: var(--button-padding-y) var(--button-padding-x);
    font-size: var(--primitive-font-size-14);
}

button[data-tooltip] {
    position: relative;
}

button[data-tooltip]::after {
    content: attr(data-tooltip);
    position: absolute;
    bottom: 120%;
    left: 50%;
    transform: translateX(-50%);
    /* NOTE: #333 / #fff have no matching token in the exported color set —
       there's no "surface-inverse" / "text-inverse" pair for dark
       tooltip-style surfaces. Left as literals until design adds one. */
    background: #333;
    color: #fff;
    padding: var(--primitive-space-2) var(--primitive-space-3);
    border-radius: var(--primitive-radius-xs);
    font-size: var(--primitive-font-size-12);
    white-space: nowrap;
    opacity: 0;
    pointer-events: none;
    transition: opacity 0.2s ease-in-out, transform 0.2s ease-in-out;
    z-index: 10;
}

button[data-tooltip]:hover::after {
    opacity: 1;
    transform: translateX(-50%) translateY(-2px);
}
</style>