import {} from '@vueuse/core'

export const useThemeStore = defineStore('theme',{
  state:()=>({
    headerColor: useDark()? '#eefcfd': '#0d313f' as '#0d313f'|'#eefcfd'
  }),
  getters:{
    // headerColor:(state)=>(color='' as '#0d313f'|'#eefcfd')=>{
      
    //   if(color.length>0){
    //     return color
    //   }
    //   return useDark() ? '#eefcfd' : '#0d313f'
    // }
  }
})
