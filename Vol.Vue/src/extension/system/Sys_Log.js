import { h, resolveComponent } from 'vue';
let extension = {
  components: {
    //动态擴充組件或組件路徑
    //表单header、content、footer对應位置擴充的組件
    gridHeader: "", //{ template: "<div>擴展組xx件</div>" },
    gridBody: '',
    gridFooter: "",
    //弹出框(修改、编辑、查看)header、content、footer对應位置擴充的組件
    modelHeader: "",
    modelBody: "",
    modelFooter: ""
  },
  buttons: [], //擴展的按钮
  methods: {
    //事件擴展
    onInit() {
      console.log("sys_log")
      this.setFiexdSearchForm(true);
    },
    onInited() {
      this.height = this.height - 195;
    }
  }
};
export default extension;
