<!--
  EquipmentChangeHistoryPage.vue

  Recreation of the "10000088 / Change History" screen from the uploaded
  screenshot, built against assets/tokens.css. Reuses SearchInput.vue,
  SelectField.vue (for "Group By"), and the extended Tabs.vue. New
  components introduced here (Avatar, ActivityItem, ActivityFeed,
  PageHeader) are documented in components.md.

  Flagged gaps, consistent with the skill's rule to call out anything
  that doesn't cleanly map to a token or an existing pattern:
  - The action-row icons (AI Insights, org chart, external IDs, download,
    CML) are approximated with generic icons/placeholder glyphs — the
    real icon set for these wasn't available and shouldn't be guessed at
    pixel-for-pixel.
  - The two-column connector between activity threads is a plain visual
    divider, not a functional connector — see the note in ActivityFeed.vue.
-->
<script setup>
import { ref } from "vue";
import PageHeader from "./PageHeader.vue";
import Tabs from "./Tabs.vue";
import SearchInput from "./SearchInput.vue";
import SelectField from "./SelectField.vue";
import ActivityFeed from "./ActivityFeed.vue";

const meta = [
  { label: "Display ID", value: "EQUI.108" },
  { label: "Category", value: "Machines (M)" },
  { label: "Valid From", value: "Nov 22, 2023" },
  { label: "Valid To", value: "Dec 31, 9999" },
  { label: "User Status", value: "OPER" },
  { label: "System Status", value: "INST" },
];

const tabs = [
  "General Information",
  { label: "Structure", hasDropdown: true },
  { label: "Assignments", hasDropdown: true },
  { label: "Classification & MDA", hasDropdown: true },
  { label: "Asset Intelligence", hasDropdown: true },
  "Risk Summary",
  { label: "Maintenance and Service", hasDropdown: true },
  "Attachments",
  "Fixed Equipment Review",
  "Change History",
  "Pipeline GIS Layers",
];
const activeTab = ref("Change History");

const searchQuery = ref("");
const groupBy = ref("None");

const leftColumn = [
  {
    initials: "A", avatarColor: "blue", title: "Equipment 10000088 updated.", author: "anonymous",
    timestamp: "Today at 4:00 PM",
    body: "Equipment 10000088 has been updated with the below information.\n\nCriticality : B\n\nNote : Either Criticality or MDA or both are updated via \"RNC.13660\" Assessment",
  },
  {
    initials: "PH", avatarColor: "blue", title: "Equipment 10000088 updated.", author: "pratham.handique@asint.net",
    timestamp: "Today at 3:15 PM",
    body: "Equipment 10000088 has been updated with the below information.\n\nCriticality : B\n\nNote : Either Criticality or MDA or both are updated via RNC.13660 Assessment.",
  },
  {
    initials: "MD", avatarColor: "blue", title: "Equipment 10000088 updated.", author: "mohd.dabeer@asint.net",
    timestamp: "Yesterday at 6:23 PM",
    body: "Equipment 10000088 has been updated with the below information.\n\nCriticality : A\n\nNote : Either Criticality or MDA or both are updated via RNC.13650 Assessment",
  },
];

const rightColumn = [
  {
    initials: "P", avatarColor: "blue", title: "Equipment 10000088 updated.", author: "PRATHAMH",
    timestamp: "Today at 4:00 PM",
    body: "Equipment 10000088 has been updated with the below information.\n\nCriticality : C\n\nNote : Criticality has been updated in SAP EAM.",
  },
  {
    initials: "T", avatarColor: "blue", title: "Equipment 10000088 updated.", author: "test_business_supp_nonprod@asint.net",
    timestamp: "Today at 11:36 AM",
    body: "Below comments has been assigned to Equipment 10000088.",
  },
  {
    initials: "B", avatarColor: "blue", title: "Equipment 10000088 updated.", author: "BASIS",
    timestamp: "8/17/26 at 9:42 AM",
    body: "Equipment 10000088 has been updated with the below information.\n\nEquipment MDA :",
  },
];
</script>

<template>
  <div class="ech-page">
    <PageHeader title="10000088" subtitle="Eq for APM Training" :meta="meta">
      <template #actions>
        <button class="pill-btn">
          <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M12 2l2 5 5 2-5 2-2 5-2-5-5-2 5-2 2-5z"/></svg>
          AI Insights
        </button>
        <button class="text-action" aria-label="Org chart">
          <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6"><rect x="9" y="3" width="6" height="6" rx="1"/><rect x="3" y="15" width="6" height="6" rx="1"/><rect x="15" y="15" width="6" height="6" rx="1"/><path d="M12 9v3M6 15v-3h12v3"/></svg>
        </button>
        <a href="#" class="text-action">External IDs</a>
        <a href="#" class="text-action">Download Report</a>
        <a href="#" class="text-action">
          <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M18 13v6a2 2 0 0 1-2 2H8a2 2 0 0 1-2-2v-6"/><path d="M15 6l-3-3-3 3"/><path d="M12 3v12"/></svg>
          CML
        </a>
      </template>
    </PageHeader>

    <Tabs :tabs="tabs" v-model="activeTab" />

    <div class="ech-toolbar">
      <SearchInput v-model="searchQuery" placeholder="Search" />
      <div class="toolbar-right">
        <button class="icon-only" aria-label="Filter list"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6"><path d="M4 6h16M7 12h10M10 18h4"/></svg></button>
        <button class="icon-only" aria-label="Add filter"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6"><path d="M4 6h16M7 12h10M10 18h4"/><path d="M18 15v6M15 18h6"/></svg></button>
        <span class="group-by-label">Group By:</span>
        <SelectField v-model="groupBy" :options="['None', 'User', 'Date']" />
      </div>
    </div>

    <ActivityFeed :left-column="leftColumn" :right-column="rightColumn" />
  </div>
</template>

<style scoped>
.ech-page {
  font-family: var(--font-family-body);
  padding: var(--primitive-space-7);
  background: var(--color-surface-primary);
  display: flex;
  flex-direction: column;
  gap: var(--primitive-space-6);
}
.pill-btn {
  display: inline-flex;
  align-items: center;
  gap: var(--primitive-space-2);
  background: var(--primitive-color-neutral-100);
  border: none;
  border-radius: var(--primitive-radius-full);
  padding: var(--primitive-space-2) var(--primitive-space-4);
  font-family: var(--font-family-body);
  font-size: var(--primitive-font-size-14);
  font-weight: var(--primitive-font-weight-semi-bold);
  color: var(--color-text-primary);
  cursor: pointer;
}
.text-action {
  display: inline-flex;
  align-items: center;
  gap: var(--primitive-space-1);
  color: var(--color-button-default);
  font-size: var(--primitive-font-size-14);
  font-weight: var(--primitive-font-weight-semi-bold);
  text-decoration: none;
  background: none;
  border: none;
  cursor: pointer;
}
.text-action:hover {
  text-decoration: underline;
}
.ech-toolbar {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: var(--primitive-space-5);
}
.toolbar-right {
  display: flex;
  align-items: center;
  gap: var(--primitive-space-4);
}
.icon-only {
  background: none;
  border: none;
  color: var(--color-text-label);
  cursor: pointer;
  display: flex;
  align-items: center;
}
.group-by-label {
  font-size: var(--primitive-font-size-14);
  color: var(--color-text-label);
}
</style>
