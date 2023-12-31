/*****************************************************************************************
 **  Author:jxx 2022
 **  QQ:283591387
 **完整文档见：http://v2.volcore.xyz/document/api 【代码生成页面ViewGrid】
 **常用示例见：http://v2.volcore.xyz/document/vueDev
 **后台操作见：http://v2.volcore.xyz/document/netCoreDev
 *****************************************************************************************/
//此js文件是用来自定义擴展業務代码，可以擴展一些自定义页面或者重新配置生成的代码

let extension = {
  components: {
    //查询界面擴展組件
    gridHeader: '',
    gridBody: '',
    gridFooter: '',
    //新建、编辑弹出框擴展組件
    modelHeader: '',
    modelBody: '',
    modelFooter: ''
  },
  tableAction: '', //指定某张表的权限(這裡填写表名,默認不用填写)
  buttons: { view: [], box: [], detail: [] }, //擴展的按钮
  methods: {
    //下面这些方法可以保留也可以删除
    onInit() {
      this.columns.push({
        field: '操作',
        title: '查看',
        width: 100,
        align: 'center',
        formatter: (row) => {
          return '<a style="font-size: 14px;border-bottom: 1px solid #3a8ee6;color: #3a8ee6; padding-bottom: 2px;  cursor: pointer;">查看详情</a>';
        },
        click: (row) => {
          this.$tabs.open({
            text: row.WorkTableName,
            path: '/' + row.WorkTable,
            query: { id: row.WorkTableKey, viewflow: 1 }
          });
        }
      });
    },
    onInited() {
      //框架初始化配置后
      //如果要配置明细表,在此方法操作
      //this.detailOptions.columns.forEach(column=>{ });
    },
    searchBefore(param) {
      //界面查询前,可以给param.wheres添加查询参数
      //返回false，则不会執行查询
      return true;
    },
    searchAfter(result) {
      //查询后，result返回的查询数据,可以在显示到表格前處理表格的值
      return true;
    },
    addBefore(formData) {
      //新建保存前formData為对象，包括明细表，可以给给表单設置值，自己输出看formData的值
      return true;
    },
    updateBefore(formData) {
      //编辑保存前formData為对象，包括明细表、删除行的Id
      return true;
    },
    rowClick({ row, column, event }) {
      //查询界面点击行事件
      // this.$refs.table.$refs.table.toggleRowSelection(row); //单击行時选中當前行;
    },
    modelOpenAfter(row) {
      //点击编辑、新建按钮弹出框后，可以在此處写逻辑，如，从后台獲取数据
      //(1)判断是编辑还是新建操作： this.currentAction=='Add';
      //(2)给弹出框設置默認值
      //(3)this.editFormFields.字段='xxx';
      //如果需要给下拉框設置默認值，請遍历this.editFormOptions找到字段配置对應data屬性的key值
      //看不懂就把输出看：console.log(this.editFormOptions)
    }
  }
};
export default extension;
