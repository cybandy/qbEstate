<script setup lang='ts'>
const menus = [
  [
    {
      label:'Home',
      to:'/'
    },
    {
      label:'About Us',
      to:'/about-us'
    },
    {
      label:'Properties',
      to:'/properties'
    },
    {
      label:'Contact Us',
      to:'/contact-us'
    },
  ],
  [
    {
      label:'Buy',
      to:'/properties?sale_type=buy'
    },
    {
      label:'Sell',
      to:'/properties?sale_type=sell'
    },
    {
      label:'Rent',
      to:'/properties?sale_type=rent'
    },
    {
      label:'FAQ',
      to:'#'
    },
    
  ],
]
const { headerColor } = storeToRefs(useThemeStore())
</script>

<template>
  <UContainer  class="flex items-center justify-between py-10 bg-transparent">
    <div>
      <Logo :text-color="headerColor" />
    </div>
    <template v-for="menu of menus">
      <div class="flex flex-col gap-5">
        <ULink v-for="items of menu" :to="items.to">{{ items.label }}</ULink>
      </div>
    </template>
    <div class="flex flex-col gap-5">
      <p>Via Gian Filippo Ingrassia 25, 90123 PA, Italy</p>
      <ULink to="mailto:info@cybandy.com" target="_blank">info@cybandy.com</ULink>
      <ULink to="tel:393883835946" target="_blank">+393883835946</ULink>
      <div class="flex items-center gap-5">
        <ULink to="https://www.facebook.com/profile.php?id=100083577977374" target="_blank">
          <UIcon name="fa-brands:facebook-square" class="w-10 h-auto" />
        </ULink>
        <ULink to="https://www.instagram.com/qbtechnology_/" target="_blank">
          <UIcon name="fa-brands:instagram" class="w-10 h-auto" />
        </ULink>
        <ULink to="https://www.instagram.com/qbtechnology_/" target="_blank">
          <UIcon name="fa-brands:telegram-plane" class="w-10 h-auto" />
        </ULink>
      </div>
    </div>
  </UContainer>
</template>
