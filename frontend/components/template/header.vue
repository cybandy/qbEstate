<script setup lang='ts'>
const isDev = true

const links = [
  {
    label: 'Home',
    to: '/'
  },
  {
    label: 'About Us',
    to: '/about-us'
  },
  {
    label: 'Properties',
    to: '/properties'
  },
  {
    label: 'Contact',
    to: '/contact'
  },
]
const { headerColor } = storeToRefs(useThemeStore())
// const color = computed(()=>headerColor.value())
</script>

<template>
  <UContainer class="flex items-center justify-between">
    <div>
      <Logo :text-color="headerColor" />
    </div>
    <UHorizontalNavigation :links="links" :ui="{wrapper:'relative w-fit'}">
      <template #default="{ link }">
        <span class="group-hover:text-primary text-primary-950 dark:text-primary-50 relative font-medium text-lg">{{ link.label }}</span>
      </template>
    </UHorizontalNavigation>
    <div class="flex items-center gap-5">
      <UtilitiesDarkMode />
      <UButton label="Find a House" />
    </div>
  </UContainer>
</template>
