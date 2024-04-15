/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./components/**/*.{js,vue,ts}",
    "./layouts/**/*.vue",
    "./pages/**/*.vue",
    "./plugins/**/*.{js,ts}",
    "./app.vue",
    "./error.vue",
  ],
  theme: {
    extend: {
      aspectRatio: {
        auto: 'auto',
        square: '1 / 1',
        video: '16 / 9'
      },
      colors:{
        'calypso': {
          '50': '#eefcfd',
          '100': '#d3f7fa',
          '200': '#adedf4',
          '300': '#74deec',
          '400': '#34c7dc',
          '500': '#18aac2',
          '600': '#1789a3',
          '700': '#196b81',
          '800': '#1e5a6c',
          '900': '#1d4b5c',
          '950': '#0d313f',
      },
      
      },
      fontFamily:{
        "nunitoSans":["nunito sans"]
      },
      screens: {
        xs: "576px",
      },
    },
  },
  plugins: [],
}
