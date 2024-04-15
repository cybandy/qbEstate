// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  devtools: { enabled: true },
  ssr:false,
  css:[
    '~/assets/css/main.css'
  ],
  devServer: {
    host: "qbestate.local",
    port: 443,
    https: {
      key: "./ssl/qbestate.local-key.pem",
      cert: "./ssl/qbestate.local.pem",
    },
  },
  modules: [
    "@pinia/nuxt",
    "@nuxt/image",
    '@pinia-plugin-persistedstate/nuxt',
    "nuxt-lodash",
    "@nuxt/ui",
    '@nuxtjs/supabase',
    "@nuxt/fonts",
    "@nuxt/eslint",
    '@vueuse/nuxt',
  ],
  lodash: {
    prefix: "_",
    prefixSkip: false
  },
  fonts: {
    families: [
      { name: 'Nunito Sans', provider: 'google', weights: ['400', '500', '600', '700'] }
    ]
  },
  ui:{
    
  },
  colorMode:{
    preference:'light'
  },
  supabase:{
    redirect:false
  }
})
