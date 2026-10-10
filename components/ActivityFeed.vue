<script setup>
import ActivityItem from "./ActivityItem.vue";

defineProps({
  // Two parallel columns of entries, as in the source screenshot.
  // [{ initials, avatarColor, title, author, timestamp, body }, ...]
  leftColumn: { type: Array, required: true },
  rightColumn: { type: Array, required: true },
});
</script>

<template>
  <div class="activity-feed">
    <!--
      NOTE: the source screenshot shows a vertical connector line between
      the two columns with small circular "person" icons at intervals.
      What that connector represents wasn't specified (thread linking?
      chronological sync between columns?), so this is a plain visual
      divider, not a functional connector — flag with design/product for
      the actual intended meaning before treating this as final.
    -->
    <div class="feed-column">
      <ActivityItem v-for="(item, i) in leftColumn" :key="'l' + i" v-bind="item" />
    </div>
    <div class="feed-divider" aria-hidden="true"></div>
    <div class="feed-column">
      <ActivityItem v-for="(item, i) in rightColumn" :key="'r' + i" v-bind="item" />
    </div>
  </div>
</template>

<style scoped>
.activity-feed {
  display: grid;
  grid-template-columns: 1fr auto 1fr;
  gap: var(--primitive-space-6);
}
.feed-column {
  display: flex;
  flex-direction: column;
  gap: var(--primitive-space-5);
}
.feed-divider {
  width: 1px;
  background: var(--primitive-color-neutral-200);
}
</style>
