<!--
  SideNavigationPanel.vue

  The standard sidebar. Source: Figma library "Side Navigation Panel", states
  Expanded (9636:10850) and Collapsed (9636:10958), as placed in the Template
  layout (node 11506:8802). Replaces the older Sidebar.vue.

  NOT built yet: "App Extended" and "Project Extended" (735px flyout states) —
  they were not read from Figma.

  Icons are hand-drawn approximations: the library icons could not be exported.
  Swap in the real ones (Overview, Apps, Project, Asset Centric Workbench, ...).
-->
<script setup>
import { ref } from "vue";

const props = defineProps({
  collapsed: { type: Boolean, default: false },
  activeItem: { type: String, default: "overview" },
  workspaceLabel: { type: String, default: "Workspace" },
  currentProject: { type: String, default: "Pilot Project A" },
  projects: { type: Array, default: () => ["Pilot Project A"] },
  mainItems: {
    type: Array,
    default: () => [
      { id: "overview", label: "Overview", icon: "overview" },
      { id: "applications", label: "Applications", icon: "apps", hasChildren: true },
      { id: "projects", label: "Projects", icon: "project", hasChildren: true },
      { id: "marketplace", label: "Marketplace", icon: "marketplace" },
    ],
  },
  apps: {
    type: Array,
    default: () => [
      { id: "asset-centric-workbench", label: "Asset Centric Workbench", icon: "workbench" },
      { id: "asset-inspection", label: "Asset Inspection", icon: "inspection" },
      { id: "fitness-for-service", label: "Fitness For Service", icon: "ffs" },
      { id: "material-properties", label: "Material Properties", icon: "materials" },
    ],
  },
  settingsItems: {
    type: Array,
    default: () => [
      { id: "workspace-admin", label: "Workspace Admin", icon: "user" },
      { id: "customizations", label: "Customizations", icon: "checklist" },
      { id: "billing", label: "Subscriptions/Billing", icon: "billing" },
      { id: "integrations", label: "Integrations", icon: "integration" },
      { id: "help", label: "Help Center", icon: "help" },
    ],
  },
});
const emit = defineEmits(["update:collapsed", "update:activeItem", "update:currentProject", "add-app"]);

const menuOpen = ref(false);
function pickProject(name) {
  emit("update:currentProject", name);
  menuOpen.value = false;
}

// 24x24 stroke paths (approximations, see note above)
const ICONS = {
  overview: ["M4 5h16v14H4z", "M4 10h16", "M10 10v9"],
  apps: ["M4 4h6v6H4z", "M14 4h6v6h-6z", "M4 14h6v6H4z", "M14 14h6v6h-6z"],
  project: ["M4 6h6l2 2h8v11H4z"],
  marketplace: ["M6 8h12l-1 12H7z", "M9 8V6a3 3 0 0 1 6 0v2"],
  user: ["M12 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8z", "M4 21c0-4 4-6 8-6s8 2 8 6"],
  checklist: ["M4 6h2", "M9 6h11", "M4 12h2", "M9 12h11", "M4 18h2", "M9 18h11"],
  billing: ["M5 3h14v18l-3-2-2 2-2-2-2 2-2-2-3 2z", "M9 8h6", "M9 12h6"],
  integration: ["M10 14a4 4 0 0 0 6 0l3-3a4 4 0 0 0-6-6l-1 1", "M14 10a4 4 0 0 0-6 0l-3 3a4 4 0 0 0 6 6l1-1"],
  help: ["M4 13a8 8 0 0 1 16 0", "M3 13h3v5H3z", "M18 13h3v5h-3z"],
  workbench: ["M12 3l8 4.5v9L12 21l-8-4.5v-9z"],
  inspection: ["M6 3h8l4 4v14H6z", "M9 13h6"],
  ffs: ["M12 3l9 16H3z", "M12 10v4"],
  materials: ["M5 4h4v16H5z", "M11 4h4v16h-4z", "M17 6l3 1-3 13-3-1z"],
};
</script>

<template>
  <nav class="snp" :class="{ 'snp-collapsed': collapsed }" aria-label="Main navigation">
    <!-- header: workspace label + collapse / expand control -->
    <div class="snp-head">
      <span v-if="!collapsed" class="snp-bar" aria-hidden="true"></span>
      <div class="snp-head-row">
        <span v-if="!collapsed" class="snp-title">{{ workspaceLabel }}</span>
        <button
          type="button"
          class="snp-toggle"
          :aria-label="collapsed ? 'Expand navigation' : 'Collapse navigation'"
          :aria-expanded="!collapsed"
          @click="emit('update:collapsed', !collapsed)"
        >
          <span class="snp-toggle-box">
            <svg class="snp-toggle-ico" :class="{ flip: collapsed }" width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.4" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
              <path d="M11 17l-5-5 5-5M18 17l-5-5 5-5" />
            </svg>
          </span>
        </button>
      </div>
    </div>

    <!-- main navigation -->
    <ul class="snp-group">
      <li v-for="item in mainItems" :key="item.id" class="snp-row">
        <span class="snp-bar" :class="{ 'snp-bar-active': item.id === activeItem }" aria-hidden="true"></span>
        <button
          type="button"
          class="snp-item"
          :class="{ 'snp-item-active': item.id === activeItem }"
          :aria-current="item.id === activeItem ? 'page' : undefined"
          :aria-label="collapsed ? item.label : undefined"
          @click="emit('update:activeItem', item.id)"
        >
          <svg class="snp-ico" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
            <path v-for="d in ICONS[item.icon]" :key="d" :d="d" />
          </svg>
          <span v-if="!collapsed" class="snp-label">{{ item.label }}</span>
          <svg v-if="item.hasChildren && !collapsed" class="snp-ico" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
            <path d="M9 6l6 6-6 6" />
          </svg>
        </button>
      </li>
    </ul>

    <!-- current project -->
    <section class="snp-project" aria-label="Current project">
      <div class="snp-project-head">
        <svg class="snp-ico" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
          <path v-for="d in ICONS.project" :key="d" :d="d" />
        </svg>
        <span v-if="!collapsed" class="snp-title">Current Project</span>
      </div>
      <div class="snp-project-body">
        <div class="snp-select">
          <button
            type="button"
            class="snp-select-btn"
            aria-haspopup="listbox"
            :aria-expanded="menuOpen && !collapsed"
            :aria-label="collapsed ? 'Current project: ' + currentProject : undefined"
            @click="menuOpen = !menuOpen"
          >
            <span v-if="!collapsed" class="snp-select-val">{{ currentProject }}</span>
            <svg class="snp-select-ico" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
              <path d="M7 10l5 5 5-5" />
            </svg>
          </button>
          <ul v-if="menuOpen && !collapsed" class="snp-menu" role="listbox">
            <li
              v-for="p in projects"
              :key="p"
              class="snp-menu-item"
              role="option"
              :aria-selected="p === currentProject"
              @click="pickProject(p)"
            >{{ p }}</li>
          </ul>
        </div>
        <ul class="snp-apps">
          <li v-for="app in apps" :key="app.id">
            <button
              type="button"
              class="snp-app-btn"
              :aria-current="app.id === activeItem ? 'page' : undefined"
              :aria-label="collapsed ? app.label : undefined"
              @click="emit('update:activeItem', app.id)"
            >
              <span class="snp-chip">
                <svg class="snp-ico" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                  <path v-for="d in ICONS[app.icon]" :key="d" :d="d" />
                </svg>
              </span>
              <span v-if="!collapsed" class="snp-app-label">{{ app.label }}</span>
            </button>
          </li>
        </ul>
        <button type="button" class="snp-add" :aria-label="collapsed ? 'Add app to project' : undefined" @click="emit('add-app')">
          <svg class="snp-ico" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" aria-hidden="true">
            <path d="M12 5v14M5 12h14" />
          </svg>
          <span v-if="!collapsed">Add app to project</span>
        </button>
      </div>
    </section>

    <!-- settings -->
    <section class="snp-settings" aria-label="Settings">
      <div class="snp-section-title">
        <span v-if="!collapsed" class="snp-spacer" aria-hidden="true"></span>
        <!-- Figma's collapsed state literally shows "s" here -->
        <span class="snp-title">{{ collapsed ? "S" : "Settings" }}</span>
      </div>
      <ul class="snp-group">
        <li v-for="item in settingsItems" :key="item.id" class="snp-row">
          <span class="snp-bar" :class="{ 'snp-bar-active': item.id === activeItem }" aria-hidden="true"></span>
          <button
            type="button"
            class="snp-item"
            :class="{ 'snp-item-active': item.id === activeItem }"
            :aria-current="item.id === activeItem ? 'page' : undefined"
            :aria-label="collapsed ? item.label : undefined"
            @click="emit('update:activeItem', item.id)"
          >
            <svg class="snp-ico" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
              <path v-for="d in ICONS[item.icon]" :key="d" :d="d" />
            </svg>
            <span v-if="!collapsed" class="snp-label">{{ item.label }}</span>
          </button>
        </li>
      </ul>
    </section>
  </nav>
</template>

<style scoped>
.snp {
  box-sizing: border-box;
  width: 258px;
  flex-shrink: 0;
  display: flex;
  flex-direction: column;
  gap: var(--primitive-space-5);
  padding: var(--primitive-space-3) var(--primitive-space-5) var(--primitive-space-7) 0;
  background: var(--color-surface-secondary);
  border: 1px solid var(--primitive-color-neutral-100);
  border-radius: var(--primitive-radius-l);
  overflow-x: hidden;
  overflow-y: auto;
  font-family: var(--font-family-body);
}
.snp-collapsed { width: 72px; }
.snp ul { list-style: none; margin: 0; padding: 0; }

/* header */
.snp-head { display: flex; align-items: center; gap: var(--primitive-space-4); }
.snp-collapsed .snp-head { padding-left: var(--primitive-space-5); }
.snp-head-row {
  flex: 1; min-width: 0;
  display: flex; align-items: center; justify-content: space-between; gap: var(--primitive-space-2);
  padding: var(--primitive-space-2) var(--primitive-space-4);
}
.snp-collapsed .snp-head-row { justify-content: center; }
.snp-title {
  font-size: var(--font-subheader-3-size);
  line-height: var(--font-subheader-3-line-height);
  font-weight: var(--font-subheader-3-weight);
  color: var(--color-text-label);
  text-transform: capitalize;
}
.snp-toggle {
  width: 32px; height: 32px; padding: 0; flex-shrink: 0;
  display: flex; align-items: center; justify-content: center;
  background: none; border: none; border-radius: var(--primitive-radius-xs); cursor: pointer;
}
.snp-toggle-box {
  width: 20px; height: 20px;
  display: flex; align-items: center; justify-content: center;
  border: 1px solid var(--color-button-default);
  border-radius: 6px; /* NEEDS TOKEN: 6px is off the radius scale (Figma toggle box) */
  color: var(--color-button-default);
}
.snp-toggle-ico.flip { transform: scaleX(-1); }

/* rows */
.snp-group { display: flex; flex-direction: column; gap: var(--primitive-space-3); }
.snp-row { display: flex; align-items: center; gap: var(--primitive-space-4); }
.snp-bar { width: 4px; height: 44px; flex-shrink: 0; border-radius: var(--primitive-radius-full); background: transparent; }
.snp-bar-active { background: var(--color-text-secondary-button); }
.snp-spacer { width: 4px; align-self: stretch; flex-shrink: 0; }
.snp-item {
  box-sizing: border-box;
  width: 200px;
  display: flex; align-items: center; gap: var(--primitive-space-3);
  padding: var(--primitive-space-4);
  background: none; border: none; border-radius: var(--primitive-radius-s);
  font-family: inherit;
  font-size: var(--font-body-small-size);
  line-height: var(--font-body-small-line-height);
  color: var(--color-text-label);
  text-align: left; cursor: pointer;
}
.snp-collapsed .snp-item { width: auto; flex: 1; min-width: 0; }
.snp-item:hover { background: var(--color-surface-primary); }
.snp-item-active { background: var(--primitive-color-semantic-bg-grey); color: var(--color-text-primary); }
.snp-label { flex: 1; min-width: 0; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; }
.snp-ico { width: 16px; height: 16px; flex-shrink: 0; }

/* focus: required, keyboard-first */
.snp-toggle:focus-visible, .snp-item:focus-visible, .snp-select-btn:focus-visible,
.snp-app-btn:focus-visible, .snp-add:focus-visible {
  outline: 2px solid var(--color-button-focus-border);
  outline-offset: 2px;
}

/* current project card */
.snp-project {
  margin-left: var(--primitive-space-4);
  padding: var(--primitive-space-2) var(--primitive-space-5) var(--primitive-space-4) 0;
  background: var(--color-surface-primary);
  border: 1px solid var(--primitive-color-neutral-100);
  border-radius: var(--primitive-radius-m);
}
.snp-collapsed .snp-project { padding-right: 0; }
.snp-project-head {
  display: flex; align-items: center; gap: var(--primitive-space-3);
  padding: var(--primitive-space-3) var(--primitive-space-4);
  color: var(--color-text-label);
}
.snp-project-body {
  display: flex; flex-direction: column;
  gap: var(--primitive-space-4); /* Figma: 11px (off-scale), rounded to space-4 */
  padding-left: var(--primitive-space-6);
}
.snp-collapsed .snp-project-body { padding: 0 var(--primitive-space-2); }
.snp-select { position: relative; padding: var(--primitive-space-2) 0; }
.snp-select-btn {
  box-sizing: border-box; width: 100%; height: 32px;
  display: flex; align-items: center; justify-content: space-between; gap: var(--primitive-space-2);
  padding: var(--primitive-space-3);
  background: var(--color-surface-secondary);
  border: 1px solid var(--primitive-color-neutral-300);
  border-radius: var(--primitive-radius-xs);
  font-family: inherit;
  font-size: var(--font-body-small-size);
  line-height: var(--font-body-small-line-height);
  color: var(--color-text-primary);
  text-align: left; cursor: pointer;
}
.snp-collapsed .snp-select-btn { justify-content: center; }
.snp-select-val { flex: 1; min-width: 0; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; }
.snp-select-ico { width: 24px; height: 24px; flex-shrink: 0; }
.snp-menu {
  position: absolute; top: 100%; left: 0; right: 0; z-index: 10;
  margin: var(--primitive-space-2) 0 0; padding: var(--primitive-space-2) 0;
  background: var(--color-surface-secondary);
  border: 1px solid var(--primitive-color-neutral-100);
  border-radius: var(--primitive-radius-xs);
  box-shadow: var(--shadow-regular-1);
}
.snp-menu-item {
  padding: var(--primitive-space-3);
  font-size: var(--font-body-small-size); line-height: var(--font-body-small-line-height);
  color: var(--color-text-primary); cursor: pointer;
}
.snp-menu-item:hover { background: var(--color-surface-primary); }
.snp-apps { display: flex; flex-direction: column; gap: var(--primitive-space-3); width: 188px; padding: var(--primitive-space-2) 0; }
.snp-collapsed .snp-apps { width: auto; }
.snp-app-btn {
  box-sizing: border-box; width: 100%;
  display: flex; align-items: center; gap: var(--primitive-space-3);
  padding: var(--primitive-space-1) 0;
  background: none; border: none; border-radius: var(--primitive-radius-s);
  font-family: inherit;
  font-size: var(--font-tag-1-size);
  line-height: var(--font-body-small-line-height);
  color: var(--color-text-primary);
  text-align: left; cursor: pointer;
}
.snp-chip {
  display: flex; flex-shrink: 0; padding: var(--primitive-space-2);
  background: #eceeff; /* token-exempt: NEEDS TOKEN - app icon chip background, a literal in Figma */
  border-radius: var(--primitive-radius-s);
  color: var(--color-button-default);
}
.snp-app-label { flex: 1; min-width: 0; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; }
.snp-add {
  box-sizing: border-box; width: 100%; height: 32px;
  display: flex; align-items: center; justify-content: center; gap: var(--primitive-space-2);
  padding: var(--primitive-space-3);
  background: var(--color-surface-primary);
  border: 1px dashed var(--primitive-color-neutral-200);
  border-radius: var(--primitive-radius-xs);
  font-family: inherit;
  font-size: var(--font-body-small-size);
  line-height: var(--font-body-small-line-height);
  color: var(--color-text-label);
  white-space: nowrap; overflow: hidden; cursor: pointer;
}

/* settings */
.snp-settings { display: flex; flex-direction: column; gap: var(--primitive-space-2); }
.snp-section-title { display: flex; align-items: center; gap: var(--primitive-space-4); padding: var(--primitive-space-3) var(--primitive-space-4); }
.snp-collapsed .snp-section-title { padding-left: calc(var(--primitive-space-5) + var(--primitive-space-4)); }
</style>
