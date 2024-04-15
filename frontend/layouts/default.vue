<template>
  <div class="relative h-dvh overflow-auto">
    <header class="absolute top-0 bg-transparent w-full z-10">
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
