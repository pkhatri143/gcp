<script setup>
defineProps({
  initials: { type: String, required: true },
  // All five map to existing semantic bg/element token pairs already in
  // tokens.css — no new-token-needed flags for this component.
  color: {
    type: String,
    default: "blue",
    validator: (v) => ["blue", "green", "orange", "red", "grey"].includes(v),
  },
});
</script>

<template>
  <div class="avatar" :class="`avatar-${color}`">{{ initials }}</div>
</template>

<style scoped>
.avatar {
  width: 36px;
  height: 36px;
  border-radius: var(--primitive-radius-full);
  display: flex;
  align-items: center;
  justify-content: center;
  font-weight: var(--primitive-font-weight-semi-bold);
  font-size: var(--primitive-font-size-14);
  font-family: var(--font-family-body);
  flex-shrink: 0;
}
.avatar-blue { background: var(--primitive-color-semantic-bg-blue); color: var(--primitive-color-semantic-element-blue); }
.avatar-green { background: var(--primitive-color-semantic-bg-green); color: var(--primitive-color-semantic-element-green); }
.avatar-orange { background: var(--primitive-color-semantic-bg-orange); color: var(--primitive-color-semantic-element-orange); }
.avatar-red { background: var(--primitive-color-semantic-bg-red); color: var(--primitive-color-semantic-element-red); }
.avatar-grey { background: var(--primitive-color-semantic-bg-grey); color: var(--primitive-color-semantic-element-grey); }
</style>
