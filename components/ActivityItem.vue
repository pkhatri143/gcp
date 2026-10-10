<script setup>
import Avatar from "./Avatar.vue";

defineProps({
  initials: { type: String, required: true },
  avatarColor: { type: String, default: "blue" },
  title: { type: String, required: true }, // e.g. "Equipment 10000088 updated."
  author: { type: String, required: true },
  timestamp: { type: String, required: true },
  body: { type: String, required: true }, // pre-formatted text; see note below
});
defineEmits(["reply", "details"]);
</script>

<template>
  <div class="activity-item">
    <Avatar :initials="initials" :color="avatarColor" />
    <div class="activity-card">
      <p class="activity-head">
        <span class="activity-title">{{ title }}</span> <span class="activity-author">{{ author }}</span>
      </p>
      <p class="activity-timestamp">{{ timestamp }}</p>
      <!--
        NOTE: the source screenshot's body text has internal structure
        (a "Criticality : B" line, a "Note : ..." line) that reads like
        semantic key/value pairs, not one plain paragraph. Rendered here
        as pre-wrapped plain text to match the visual without guessing at
        a data shape that wasn't specified — if this feed is backed by
        structured data (criticality, note, etc. as real fields), this
        should become a proper key/value list instead of a text blob.
      -->
      <p class="activity-body">{{ body }}</p>
      <div class="activity-actions">
        <button class="activity-link" @click="$emit('reply')">Reply</button>
        <button class="activity-link" @click="$emit('details')">Details</button>
      </div>
    </div>
  </div>
</template>

<style scoped>
.activity-item {
  display: flex;
  gap: var(--primitive-space-4);
  align-items: flex-start;
}
.activity-card {
  flex: 1;
  background: var(--color-surface-secondary);
  border: 1px solid var(--primitive-color-neutral-100);
  border-radius: var(--primitive-radius-s);
  padding: var(--primitive-space-5);
}
.activity-head {
  margin: 0;
  font-size: var(--primitive-font-size-14);
  font-family: var(--font-family-body);
}
.activity-title {
  color: var(--color-button-default);
  font-weight: var(--primitive-font-weight-semi-bold);
}
.activity-author {
  color: var(--color-text-primary);
}
.activity-timestamp {
  margin: var(--primitive-space-1) 0 var(--primitive-space-3);
  font-size: var(--primitive-font-size-12);
  color: var(--color-text-label);
}
.activity-body {
  margin: 0 0 var(--primitive-space-4);
  font-size: var(--primitive-font-size-14);
  color: var(--color-text-primary);
  white-space: pre-wrap;
  line-height: var(--primitive-line-height-xs);
}
.activity-actions {
  display: flex;
  gap: var(--primitive-space-5);
}
.activity-link {
  background: none;
  border: none;
  padding: 0;
  color: var(--color-button-default);
  font-family: var(--font-family-body);
  font-size: var(--primitive-font-size-14);
  font-weight: var(--primitive-font-weight-semi-bold);
  cursor: pointer;
}
.activity-link:hover {
  text-decoration: underline;
}
</style>
