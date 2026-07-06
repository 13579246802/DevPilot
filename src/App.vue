<script setup lang="ts">
const links = [
  { label: 'Vite', href: 'https://vite.dev/' },
  { label: 'Vue', href: 'https://vuejs.org/' },
  { label: 'TypeScript', href: 'https://www.typescriptlang.org/' },
]
</script>

<template>
  <main class="shell">
    <section class="intro">
      <p class="eyebrow">Vue 3 + Vite + TypeScript</p>
      <h1>DevPilot</h1>
      <p class="summary">
        Project scaffold is ready. Start building from <code>src/App.vue</code>.
      </p>
      <nav aria-label="Project links" class="links">
        <a v-for="link in links" :key="link.href" :href="link.href" target="_blank" rel="noreferrer">
          {{ link.label }}
        </a>
      </nav>
    </section>
  </main>
</template>
