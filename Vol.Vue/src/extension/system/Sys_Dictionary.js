import { h, resolveComponent } from 'vue';
import optons  from "@/views/builder/builderData.js"
let extension = {
    components: { //动态擴充組件或組件路徑
        //表单header、content、footer对應位置擴充的組件
        //擴展組件引入方式
        gridHeader: '',
        gridBody: {
            render () {
                return [
                    h(resolveComponent('el-alert'), {
                        style: { 'margin-bottom': '12px' },
                        'show-icon': true, type: 'success',
                        closable: false, title: '【所在數據庫】字段的数据源在views/builder/builderData.js中，后台在DictionaryManager方法GetDictionaries中根据选择的數據庫調用对應的數據庫'
                    }, ''),
                ]
            }
        },
        gridFooter: '',
        //弹出框(修改、编辑、查看)header、content、footer对應位置擴充的組件
        modelHeader: '',
        modelBody: '',
        modelFooter: ''
    },
    buttons: [], //擴展的按钮
    methods: { //事件擴展
        onInit () {
            //点击单元格编辑與結束编辑(默認是点击单元格编辑，鼠标离开結束编辑)
            this.detailOptions.clickEdit = true;
            this.editFormOptions.forEach(x => {
                x.forEach(item => {
                    if (item.field == 'ParentId') {
                        item.min = 0;
                    }
                    if (item.field == "DbSql") {
                        item.placeholder = "如果从數據庫加载数据源，請按此格式配置sql语句：select orderType as key,orderName as value from order  如果需要根据用戶信息加载数据源，請配置好此sql,再修改后台DictionaryHandler.GetCustomDBSql方法";
                    }
                    if (item.field=='DBServer') {
                        item.dataKey="";
                        item.data=optons.dbServer;
                    }
                })
            })
            this.detailOptions.columns.forEach(x => {
                if (x.field == 'OrderNo') {
                    x.summary = true;
                }
            })

            this.columns.forEach(item => {
                if (item.field=='DBServer') {
                    item.bind.key="";
                    item.bind.data=optons.dbServer;
                }
            })

            //保存后不关闭编辑框
            this.boxOptions.saveClose = false;
        },
        onInited () {
            this.boxOptions.height = document.body.clientHeight * 0.87
            this.height = this.height - 45;
        },
        addBefore (formData) {
            return this.saveBefore(formData);
        },
        updateBefore (formData) {
            return this.saveBefore(formData);
        },
        saveBefore (formData) {
            if (this.editFormFields.DbSql &&
                (this.editFormFields.DbSql.indexOf('value') == -1 ||
                    this.editFormFields.DbSql.indexOf('key') == -1)
            ) {
                this.$message.error("sql语句必須包括key/value字段,如:select orderType as key,orderName as value from order");
                return false;
            }
            return true;
        },
        searchBefore (param) {
            return true;
        },
        searchAfter (result) {
            return true;
        }
    }
};
export default extension;