<script setup lang='ts'>
const isDev = true

const links = [
  {
    label:'Home',
    to:'/'
  },
  {
    label:'About Us',
    to:'#'
  },
  {
    label:'Properties',
    to:'#'
  },
  {
    label:'Contact',
    to:'#'
  },
]
</script>

<template>
  <div>
    <Logo />
    <UHorizontalNavigation :links="links">
    <template #default="{ link }">
      <span class="group-hover:text-primary relative">{{ link.label }}</span>
    </template>
  </UHorizontalNavigation>
  <div>
    <UtilitiesDarkMode />
    <UButton label="Find a House" />
  </div>
  </div>
</template>
