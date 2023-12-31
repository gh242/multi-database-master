import {  defineAsyncComponent } from "vue";
let extension = {
    components: { //动态擴充組件或組件路徑
        //表单header、content、footer对應位置擴充的組件
        gridHeader: defineAsyncComponent(() =>
            import("./Sys_User/Sys_UserGridHeader.vue")),
        gridBody: '',
        gridFooter: '',
        //弹出框(修改、编辑、查看)header、content、footer对應位置擴充的組件
        modelHeader: '',
        modelBody: '',
        modelFooter: ''
    },
    text: "只能看到當前角色下的所有帐号",
    buttons: [], //擴展的按钮
    methods: { //事件擴展
        onInit() {
            this.boxOptions.height = 530;
            this.columns.push({
                title: '操作',
                hidden: false,
                align: "center",
                fixed: 'right',
                width: 120,
                render: (h, { row, column, index }) => {
                    return h(
                        "div", { style: { 'font-size': '13px', 'cursor': 'pointer', 'color': '#409eff' } }, [
                        h(
                            "a", {
                            style: { 'margin-right': '15px' },
                            onClick: (e) => {
                                e.stopPropagation()
                                this.$refs.gridHeader.open(row);
                            }
                        }, "修改密码"
                        ),
                        h(
                            "a", {
                            style: {},
                            onClick: (e) => {
                                e.stopPropagation()
                                this.edit(row);
                            }
                        },
                            "编辑"
                        ),
                    ])
                }
            })
        },
        onInited() { },
        addAfter(result) { //用戶新建后，显示随机生成的密码
            if (!result.status) {
                return true;
            }
            //显示新建用戶的密码
            //2020.08.28优化新建成后提示方式
            this.$confirm(result.message, '新建用戶成功', {
                confirmButtonText: '确定',
                type: 'success',
                center: true
            }).then(() => { })

            this.boxModel = false;
            this.refresh();
            return false;
        },
        modelOpenAfter() {
            //点击弹出框后，如果是编辑状态，禁止编辑用戶名，如果新建状态，將用戶名字段設置為可编辑
            let isEDIT = this.currentAction == this.const.EDIT;
            this.editFormOptions.forEach(item => {
                item.forEach(x => {
                    if (x.field == "UserName") {
                        x.disabled=isEDIT;
                    }
                })
                //不是新建，性别默認值設置為男
                if (!isEDIT) {
                    this.editFormFields.Gender = "0";
                }
            })
        }

    }
};
export default extension;