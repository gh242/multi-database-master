//author:jxx
//此處是对表单的方法，組件，权限操作按钮等进行任意擴展(方法擴展可参照SellOrder.js)
import  gridHeader from './FormCollectionOptionsGridHeader.vue'
import { h, resolveComponent } from 'vue';
let extension = {
    components: {//动态擴充組件或組件路徑
        //表单header、content、footer对應位置擴充的組件
        gridHeader:gridHeader,//{ template: "<div>擴展組xx件</div>" },
        gridBody: {
            render() {
              return [
                h(resolveComponent('el-alert'), {
                  style: { 'margin-bottom': '12px' },
                  'show-icon': true, type: 'success',
                  closable: false, title: '1、点击新建随便输入,2、点击表格[表单設计]然后保存,3、点击预览(页面打开后提交数据),4、数据采集页面看查結果'
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
    buttons: {view: [], box:[],  detail:[]},//擴展的按钮
    methods: {//事件擴展
        onInit() {
            this.boxOptions.height=200;
            this.initFormButton();
        },
        onInited(){
            this.height=  this.height-40;
        },
        initFormButton() {
            this.columns.splice(this.columns.findIndex(x => { return x.field == 'FormFields' }), 1, ...[{
                title: "操作",
                field: "表单設计",
                with: 80,
                sort: false,
                formatter: () => {
                    return '<a style="color: #3a8ee6;">表单設计</a>'
                },
                click: (row) => {
                    this.$refs.gridHeader.open(row);
                }
            }, 
             {
                title: "预览",
                field: "预览",
                with: 85,
                sort: false,
                formatter: () => {
                    return '<a style="color: #3a8ee6;">预览</a>'
                },
                click: (row) => {
                    this.$tabs.open({
                        path: "/formSubmit", text: row.Title, query: {
                            id: row.FormId
                        }
                    })
                    //  this.$refs.gridHeader.open(row);
                }
            }])
        }
    }
};
export default extension;