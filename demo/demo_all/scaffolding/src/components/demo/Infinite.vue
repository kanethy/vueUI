<template>
  <!-- 在本案例中各参数的说明如下： -->
  <!-- infinite-scroll-distance="20" 是指在滚动条距容器底部小于等于20个像素时将触发一个函数来加载更多的数据 -->
  <!-- v-infinite-scroll="loadMore" 是指触发的函数名称，用这个函数来加载更多的数据 -->
  <div 
    style="border:2px solid #f00"
    infinite-scroll-distance="20"
    v-infinite-scroll="loadMore"
    infinite-scroll-disabled="busy">
      <p v-for="(v,k) of n" :key="k">{{v}}</p>
  </div>
</template>
<script>
export default {
  methods:{
    loadMore(){
      this.busy = true;
      //假设现在服务器运行效率非常低,10秒才能返回运行结果
      window.setTimeout(()=>{
        this.n += 50;
        this.busy = false;
      },10000);
       
    }
  },
  data(){
    return {
      n:50,
      busy:false
    }
  }
}
</script>