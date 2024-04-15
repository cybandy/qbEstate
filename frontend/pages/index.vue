<script setup lang='ts'>
useHead({
  title: 'Affordable properties'
})

const bg_img = "https://images.unsplash.com/photo-1512917774080-9991f1c4c750"

const imageOptimizer = useImage()

const backgroundImage = {
  'background-image': `url(${imageOptimizer(bg_img, {fit:'auto', format:'webp', width:600,},)})`
}
</script>

<template>
  <div>
    <div class="relative bg-primary-200 dark:bg-transparent min-h-[75dvh]">
      <UContainer class="section grid md:grid-cols-5 z-[2]">
        <div class="h-fit md:col-span-3 lg:col-span-2 space-y-8 z-[1]">
          <h1 class="text-primary-50 lg:text-primary-950 dark:text-primary-50 font-semibold text-4xl md:text-5xl xl:text-6xl text-wrap">Find Your Dream Home</h1>
          <p class="text-primary-200 lg:text-primary-950 dark:text-primary-200 text-base font-medium xs:w-10/12 sm:w-3/4">
            Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et
            dolore magna alr
          </p>
          <UButton to="/find-house" label="Find a House" />
        </div>
        
      </UContainer>

      <div class="absolute top-0 lg:right-0 lg:top-0 h-full lg:h-[95%] w-full lg:w-1/2 z-[0] bg-cover lg:bg-contain bg-right-top bg-no-repeat bg-scroll" :style="backgroundImage">
        <div class="lg:hidden w-full h-full absolute inset-0 bg-gradient-to-tr from-calypso-800 via-calypso-600/40 to-transparent">

        </div>
          <!-- <NuxtImg :src="bg_img" format="webp" class="w-full h"/> -->
        </div>
    </div>

  </div>
</template>
