<!--
  AlgorithmMappingPage.vue

  Rebuilt version of the AAM.106 / Algorithm Mapping screen. Unlike the
  first pass, this composes real reusable components (Sidebar, TopBar,
  Tabs, IconButton, SearchInput, SelectField, EmptyState) instead of
  inlining everything in one file — those are now first-class entries in
  components.md, following the skill's rule to keep primitives/patterns
  separate from one-off page markup.

  Every color/spacing/radius/font resolves to assets/tokens.css. The three
  values with no matching token (sidebar navy, avatar pink, sort-icon grey)
  are called out in their component files rather than here, since they now
  live where they're actually used.
-->
<script setup>
import { ref, computed } from "vue";
import Sidebar from "./Sidebar.vue";
import TopBar from "./TopBar.vue";
import Tabs from "./Tabs.vue";
import IconButton from "./IconButton.vue";
import SearchInput from "./SearchInput.vue";
import SelectField from "./SelectField.vue";
import EmptyState from "./EmptyState.vue";
import Button from "./Button.vue";

const breadcrumbs = [
  { label: "Adaptable Models", href: "#" },
  { label: "Assessment Adaptable Model", href: "#" },
  { label: "AAM.106" },
];

const tabs = [
  "General Information",
  "Structure Configuration",
  "Algorithm Mapping",
  "Conditional Lookup",
  "Picklist Configuration",
  "Recommendation",
  "Risk Plot",
];
const activeTab = ref("Algorithm Mapping");

const algorithm = ref("Condition Based PRD");
const algorithmOptions = ["Condition Based PRD", "Time Based PRD", "Risk Based PRD"];

const searchQuery = ref("");
const parameters = ref([]); // 52 exist upstream, none loaded into this view yet
const parameterCount = computed(() => 52);

const tableColumns = ["Parameter", "Type", "Direction", "Section", "Sub Section", "Characteristic"];
</script>

<template>
  <div class="app-shell">
    <Sidebar active-icon="dashboard" />

    <div class="main">
      <TopBar :breadcrumbs="breadcrumbs" user-initials="JD" />

      <main class="page">
        <div class="card">
          <div class="card-actionbar">
            <IconButton label="Back">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M15 18l-6-6 6-6" /></svg>
            </IconButton>
            <div class="actionbar-spacer" />
            <Button text="Publish" btn-background-type="emphasized" size="medium" />
            <IconButton label="Layout options">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6"><rect x="3" y="3" width="7" height="18" rx="1" /><rect x="12" y="3" width="9" height="8" rx="1" /><rect x="12" y="13" width="9" height="8" rx="1" /></svg>
            </IconButton>
            <IconButton label="Edit">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6"><path d="M12 20h9" /><path d="M16.5 3.5a2.1 2.1 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z" /></svg>
            </IconButton>
          </div>

          <div class="entity-summary">
            <img
              class="entity-thumb"
              src="https://images.unsplash.com/photo-1581093458791-9d09b0c7c1e5?w=200&h=200&fit=crop"
              alt="AAM.106 equipment"
            />
            <div class="entity-meta">
              <h1 class="entity-title">AAM.106</h1>
              <p class="entity-subtitle">RBI+ Fixed Equipment</p>
            </div>
            <div class="entity-stats">
              <div class="stat-box">
                <span class="stat-label">Status:</span>
                <span class="status-pill">Unpublished</span>
              </div>
              <div class="stat-box">
                <span class="stat-label">Assessment Count:</span>
                <span class="stat-value">0</span>
              </div>
            </div>
            <IconButton label="More info" class="info-icon">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6"><circle cx="12" cy="12" r="9" /><path d="M12 8h.01M11 12h1v4h1" /></svg>
            </IconButton>
          </div>

          <Tabs :tabs="tabs" v-model="activeTab" />

          <div class="tab-panel">
            <SelectField v-model="algorithm" :options="algorithmOptions" label="Algorithm" required />

            <div class="parameters-panel">
              <div class="parameters-header">
                <h2 class="parameters-title">
                  Parameters <span class="count-badge">{{ parameterCount }}</span>
                </h2>
                <button class="add-btn" aria-label="Add parameter">
                  <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M12 5v14M5 12h14" /></svg>
                </button>
              </div>

              <div class="search-row">
                <SearchInput v-model="searchQuery" placeholder="Search" />
              </div>

              <table class="params-table">
                <thead>
                  <tr>
                    <th class="th-check"><input type="checkbox" /></th>
                    <th v-for="col in tableColumns" :key="col">
                      {{ col }}
                      <!-- NEW TOKEN NEEDED: sort-icon grey has no confirmed
                           semantic token, using nearest neutral primitive -->
                      <svg class="sort-icon" width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                        <path d="M8 9l4-4 4 4M8 15l4 4 4-4" />
                      </svg>
                    </th>
                  </tr>
                </thead>
              </table>

              <EmptyState v-if="parameters.length === 0" />
            </div>
          </div>
        </div>
      </main>
    </div>
  </div>
</template>

<style scoped>
.app-shell {
  display: flex;
  min-height: 100vh;
  background: var(--color-surface-primary);
  font-family: var(--font-family-body);
}
.main {
  flex: 1;
  display: flex;
  flex-direction: column;
}
.page {
  padding: var(--primitive-space-7);
}
.card {
  background: var(--color-surface-secondary);
  border: 1px solid var(--primitive-color-neutral-100);
  border-radius: var(--primitive-radius-m);
  overflow: hidden;
}
.card-actionbar {
  display: flex;
  align-items: center;
  gap: var(--primitive-space-3);
  padding: var(--primitive-space-5) var(--primitive-space-7);
  border-bottom: 1px solid var(--primitive-color-neutral-100);
}
.actionbar-spacer {
  flex: 1;
}
.entity-summary {
  display: flex;
  align-items: center;
  gap: var(--primitive-space-6);
  padding: var(--primitive-space-7);
  position: relative;
}
.entity-thumb {
  width: 96px;
  height: 96px;
  border-radius: var(--primitive-radius-s);
  object-fit: cover;
  flex-shrink: 0;
}
.entity-meta {
  flex: 1;
}
.entity-title {
  margin: 0;
  color: var(--color-text-primary);
  font-size: var(--primitive-font-size-32);
  font-weight: var(--primitive-font-weight-bold);
}
.entity-subtitle {
  margin: var(--primitive-space-1) 0 0;
  color: var(--color-text-label);
  font-size: var(--primitive-font-size-16);
}
.entity-stats {
  display: flex;
  gap: var(--primitive-space-6);
}
.stat-box {
  border-left: 1px solid var(--primitive-color-neutral-200);
  padding-left: var(--primitive-space-5);
  display: flex;
  flex-direction: column;
  gap: var(--primitive-space-1);
}
.stat-label {
  font-size: var(--primitive-font-size-14);
  color: var(--color-text-label);
}
.status-pill {
  align-self: flex-start;
  background: var(--primitive-color-semantic-bg-orange);
  color: var(--primitive-color-semantic-text-orange);
  font-size: var(--primitive-font-size-14);
  font-weight: var(--primitive-font-weight-semi-bold);
  padding: var(--primitive-space-1) var(--primitive-space-3);
  border-radius: var(--primitive-radius-xs);
}
.stat-value {
  color: var(--color-button-default);
  font-weight: var(--primitive-font-weight-semi-bold);
}
.info-icon {
  position: absolute;
  top: var(--primitive-space-5);
  right: var(--primitive-space-7);
}
.tab-panel {
  padding: var(--primitive-space-7);
  display: flex;
  flex-direction: column;
  gap: var(--primitive-space-8);
}
.parameters-panel {
  border: 1px solid var(--primitive-color-neutral-100);
  border-radius: var(--primitive-radius-m);
}
.parameters-header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: var(--primitive-space-5) var(--primitive-space-6);
}
.parameters-title {
  margin: 0;
  display: flex;
  align-items: center;
  gap: var(--primitive-space-3);
  font-size: var(--primitive-font-size-20);
  font-weight: var(--primitive-font-weight-bold);
  color: var(--color-text-primary);
}
.count-badge {
  background: var(--primitive-color-neutral-100);
  color: var(--color-text-label);
  font-size: var(--primitive-font-size-14);
  font-weight: var(--primitive-font-weight-semi-bold);
  padding: var(--primitive-space-1) var(--primitive-space-3);
  border-radius: var(--primitive-radius-full);
}
.add-btn {
  width: 40px;
  height: 40px;
  border-radius: var(--primitive-radius-s);
  border: none;
  background: var(--color-button-default);
  color: var(--color-text-primary-button);
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
}
.add-btn:hover {
  background: var(--color-button-hover);
}
.search-row {
  padding: 0 var(--primitive-space-6) var(--primitive-space-5);
}
.params-table {
  width: 100%;
  border-collapse: collapse;
  border-top: 1px solid var(--primitive-color-neutral-100);
}
.params-table th {
  text-align: left;
  padding: var(--primitive-space-4) var(--primitive-space-6);
  font-size: var(--primitive-font-size-14);
  font-weight: var(--primitive-font-weight-semi-bold);
  color: var(--color-text-primary);
  background: var(--primitive-color-bg-page);
  white-space: nowrap;
}
.sort-icon {
  margin-left: var(--primitive-space-1);
  vertical-align: middle;
  color: var(--primitive-color-neutral-400);
}
.th-check {
  width: 40px;
}
</style>
