

let extension = {
    components: {//动态擴充組件或組件路徑
        //表单header、content、footer对應位置擴充的組件
        gridHeader:'',
        gridbody:'',
        gridFooter: '',
        //弹出框(修改、编辑、查看)header、content、footer对應位置擴充的組件
        modelHeader: '',
        modelBody: '',
        modelFooter: ''
    },
    buttons: [],//擴展的按钮
    methods: {//事件擴展
        onInit() {
        },
        onInited() {
        }
    }
};
export default extension;