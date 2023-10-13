//author:jxx
//此處是对表单的方法，組件，权限操作按钮等进行任意擴展(方法擴展可参照SellOrder.js)
let extension = {
    components: {//动态擴充組件或組件路徑
        //表单header、content、footer对應位置擴充的組件
        gridHeader: '',//{ template: "<div>擴展組xx件</div>" },
        gridBody: '',
        gridFooter: '',
        //弹出框(修改、编辑、查看)header、content、footer对應位置擴充的組件
        modelHeader: '',
        modelBody: '',
        modelFooter: ''
    },
    text: "点击左侧表单名名字即可加载收集的数据",
    tableAction: "formCollectionResultTree",
    buttons: { view: [], box: [], detail: [] },//擴展的按钮
    methods: {//事件擴展
        onInit() {
            this.textInline = false;
            // this.ck = false;
            this.load = false;
            this.setFiexdSearchForm(true);
            
        },
        onInited() {
            this.height = this.height - 74;
        },
        loadById(item) {
            let columns = [
                {
                    title: "提交人",
                    field: "Creator"
                },
                {
                    title: "提交時间",
                    field: "CreateDate"
                }];
            JSON.parse(item.formOptions).formOptions.forEach(x => {
                columns.push(...x.map(m => {
                    return {
                        title: m.title,
                        field: m.field,
                        type: m.type
                    }
                }))
            })
            this.formId = item.formId;
            this.columns.splice(0);
            this.columns.push(...columns);
            this.search();
        },
        exportBefore(formData) {
            formData.Value = this.formId;
            return true;
        },
        searchBefore(formData) {
          //  formData.Value = this.formId;
            formData.wheres.push({name:'FormId',value:this.formId})
            return true;
        },
        searchAfter(rows) {
            rows.forEach(row => {
                if (row.FormData) {
                    let data = JSON.parse(row.FormData);
                    for (const key in data) {
                        row[key] = Array.isArray(data[key]) ? data[key].filter(x => { return x != null && x != undefined }).join(',') : data[key];
                    }
                }
            })
            return true;
        }
    }
};
export default extension;