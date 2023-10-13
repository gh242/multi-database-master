<!--
*Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *業務請在@/extension/system/reportdbtest2/ReportDbTest2.js此處编写
 -->
<template>
    <view-grid ref="grid"
               :columns="columns"
               :detail="detail"
               :editFormFields="editFormFields"
               :editFormOptions="editFormOptions"
               :searchFormFields="searchFormFields"
               :searchFormOptions="searchFormOptions"
               :table="table"
               :extend="extend">
    </view-grid>
</template>
<script>
    import extend from "@/extension/reporttest/reportdbtest2/ReportDbTest2.js";
    import { ref, defineComponent } from "vue";
    export default defineComponent({
        setup() {
            const table = ref({
                key: 'Order_Id',
                footer: "Foots",
                cnName: 'ReportTest2',
                name: 'reportdbtest2/ReportDbTest2',
                url: "/ReportDbTest2/",
                sortName: "CreateDate"
            });
            const editFormFields = ref({"ReportTranNo":"","ReportSellNo":"","ReportQty":"","Remark":"","Creator":"","CreateDate":""});
            const editFormOptions = ref([[{"title":"運單號","required":true,"field":"ReportTranNo"},
                               {"title":"報表編號","required":true,"field":"ReportSellNo"}],
                              [{"title":"數量","required":true,"field":"ReportQty","type":"number"},
                               {"title":"備註","field":"Remark"}],
                              [{"title":"創建人","field":"Creator"},
                               {"title":"創建時間","field":"CreateDate"}]]);
            const searchFormFields = ref({"ReportTranNo":"","ReportSellNo":"","ReportQty":"","Remark":"","Creator":"","CreateDate":""});
            const searchFormOptions = ref([[{"title":"運單號","field":"ReportTranNo","type":"like"},{"title":"報表編號","field":"ReportSellNo","type":"like"}],[{"title":"數量","field":"ReportQty","type":"number"},{"title":"備註","field":"Remark","type":"like"}],[{"title":"創建人","field":"Creator"},{"title":"創建時間","field":"CreateDate"}]]);
            const columns = ref([{field:'Order_Id',title:'訂單號',type:'guid',width:110,hidden:true,readonly:true,require:true,align:'left'},
                       {field:'ReportTranNo',title:'運單號',type:'string',link:true,width:120,require:true,align:'left',sort:true},
                       {field:'ReportSellNo',title:'報表編號',type:'string',width:220,require:true,align:'left'},
                       {field:'ReportQty',title:'數量',type:'int',width:110,require:true,align:'left'},
                       {field:'Remark',title:'備註',type:'string',width:220,align:'left'},
                       {field:'CreateID',title:'CreateID',type:'int',width:80,hidden:true,align:'left'},
                       {field:'Creator',title:'創建人',type:'string',width:130,align:'left'},
                       {field:'CreateDate',title:'創建時間',type:'datetime',width:110,align:'left',sort:true},
                       {field:'ModifyID',title:'ModifyID',type:'int',width:80,hidden:true,align:'left'},
                       {field:'Modifier',title:'修改人',type:'string',width:130,align:'left'},
                       {field:'ModifyDate',title:'修改時間',type:'datetime',width:110,align:'left',sort:true}]);
            const detail = ref({
                cnName: "#detailCnName",
                table: "#detailTable",
                columns: [],
                sortName: "",
                key: ""
            });
            return {
                table,
                extend,
                editFormFields,
                editFormOptions,
                searchFormFields,
                searchFormOptions,
                columns,
                detail,
            };
        },
    });
</script>
