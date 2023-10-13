

let extension = {
  components: {//动态擴充組件或組件路徑
    //表单header、content、footer对應位置擴充的組件
    gridHeader: '',
    gridBody: '',
    gridFooter: '',
    //弹出框(修改、编辑、查看)header、content、footer对應位置擴充的組件
    modelHeader: '',
    modelBody: '',
    modelFooter: ''
  },
  buttons: [],//擴展的按钮
  methods: {//事件擴展
    onInit () {
      this.columns.forEach(x => {
        if (x.field == 'ParentId') {
          x.title = "上级角色";
        }
      });

      //这些配置不是必須的
      this.editFormOptions.forEach(x => {
        x.forEach(item => {
          if (item.field == 'ParentId') {
            item.title = "上级角色";
            //設置任意节点都能选中(默認只能选中最后一个节点)
            item.changeOnSelect = true;
          }
        })
      })
    },
    onInited () {
    }
  }
};
export default extension;
