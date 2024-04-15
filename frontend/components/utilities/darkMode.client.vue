<script setup lang="ts">
const {headerColor} = storeToRefs(useThemeStore())
const isDark = useDark()
const isToggle = useToggle(isDark)
const toggle = () =>{
  isDark.value = !isDark.value
  headerColor.value = isDark.value ? '#eefcfd' : '#0d313f'
}
</script>
<template>
  <ClientOnly>
    <UButton
      :icon="isDark ? 'i-heroicons-moon-20-solid' : 'i-heroicons-sun-20-solid'"
      color="gray"
      variant="ghost"
      aria-label="Theme"
      @click="toggle"
    />
    <template #fallback>
      <div class="w-8 h-8" />
    </template>
  </ClientOnly>
</template>
