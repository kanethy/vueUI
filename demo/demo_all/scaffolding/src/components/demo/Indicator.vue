<template>
  <div>
      <mt-button type="primary" @click="open">打开加载提示框</mt-button>
  </div>
</template>
<script>
export default {
  methods:{
    open(){
      //简捷方式
      //this.$indicator.open("加载中...");
      //标准方式
      this.$indicator.open({
          text:'加载中...',
          spinnerType:'triple-bounce'
      })
    }
  }
}
</script>