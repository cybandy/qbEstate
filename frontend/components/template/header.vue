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

const isOpen = ref(false)
</script>

<template>
  <UContainer class="flex items-center justify-between">
    <div class="h-fit">
      <Logo :text-color="headerColor" class="w-[120px] sm:w-fit" />
    </div>
    <UHorizontalNavigation :links="links" :ui="{wrapper:'relative w-fit hidden lg:flex', before:'', after:''}">
      <template #default="{ link }">
        <span class="group-hover:text-primary text-primary-950 dark:text-primary-50 relative font-medium text-lg">{{ link.label }}</span>
      </template>
    </UHorizontalNavigation>
    
    <UButton @click="()=>isOpen=true" class="lg:hidden" variant="link" color="black" icon="i-heroicons-bars-3-20-solid" />
    <div class="hidden lg:flex items-center gap-5">
      <UtilitiesDarkMode />
      <UButton to="/find-house" label="Find a House" />
    </div>

    <USlideover v-model="isOpen">
      <UCard class="flex flex-col flex-1">

        <template #header>
          <div class="flex items-end">
            <UButton @click="()=>isOpen=false" class="lg:hidden" variant="link" color="black" icon="i-heroicons-x-mark-20-solid" />
          </div>
        </template>

        <div>
          <UVerticalNavigation :links="links" />
        </div>
      </UCard>
    </USlideover>
  </UContainer>
</template>
