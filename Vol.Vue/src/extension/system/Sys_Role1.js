
import { h, resolveComponent } from 'vue';
let extension = {
  components: {//动态擴充組件或組件路徑
    //表单header、content、footer对應位置擴充的組件
    gridHeader: '',
    gridBody: {
      render () {
          return [
              h(resolveComponent('el-alert'), {
                  style: { 'margin-bottom': '12px' },
                  'show-icon': true, type: 'error',
                  closable: false, title: '关于TreeTable使用'
              }, ' treetable同樣全部代码自动生成，页面生成后設置this.rowKe="xxx" tree主键字段,即可完成树形table配置,具体说明见Sys_Role1.js'),
          ]
      }
  },

    gridFooter: '',
    //弹出框(修改、编辑、查看)header、content、footer对應位置擴充的組件
    modelHeader: '',
    modelBody: '',
    modelFooter: ''
  },
  buttons: [],//擴展的按钮
  tableAction:"Sys_Role",
  methods: {//事件擴展
    onInited () {
      this.height = this.height - 80;
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
    onInit() {
      //設置treetable的唯一值字段(这个字段的值在表里面必須是唯一的)
      this.rowKey="Role_Id";
    },
    /***加载后台数据见Sys_RoleController.cs文件***/
    loadTreeChildren(tree, treeNode, resolve) { //加载子节点
      let url=`api/role/getTreeTableChildrenData?roleId=${tree.Role_Id}`;
      this.http.post(url,{}).then(result=>{
        resolve(result.rows)
      })
    },
      /***加载后台数据见Sys_RoleController.cs文件***/
    searchBefore(params){//判断加载根节点或子节点
      //没有查询条件，默認查询返回所有根节点数据
      if (!params.wheres.length) {
        params.value=1;
      }
      return true;
    }
  }
};
export default extension;
