<template>
  <div class="relative h-screen overflow-auto">
    <header class="sticky top-0 bg-transparent">
      <TemplateHeader />
    </header>
    <main class="h-full">
      <slot />
    </main>
    <footer class="bg-[#94D8EB] dark:bg-gray-900">
      <TemplateFooter />
    </footer>
  </div>
</template>
