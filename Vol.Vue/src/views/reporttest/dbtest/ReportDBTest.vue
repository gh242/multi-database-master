<!--
*Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *業務請在@/extension/system/dbtest/ReportDBTest.js此處编写
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
    import extend from "@/extension/reporttest/dbtest/ReportDBTest.js";
    import { ref, defineComponent } from "vue";
    export default defineComponent({
        setup() {
            const table = ref({
                key: 'Order_Id',
                footer: "Foots",
                cnName: 'ReportDBTest',
                name: 'dbtest/ReportDBTest',
                url: "/ReportDBTest/",
                sortName: "CreateDate"
            });
            const editFormFields = ref({"ReportTranNo":"","ReportSellNo":"","ReportQty":"","Remark":""});
            const editFormOptions = ref([[{"title":"单号","required":true,"field":"ReportTranNo"}],
                              [{"title":"订单","required":true,"field":"ReportSellNo"}],
                              [{"title":"数量","required":true,"field":"ReportQty","type":"number"}],
                              [{"title":"备注","field":"Remark"}]]);
            const searchFormFields = ref({"ReportTranNo":"","ReportSellNo":"","ReportQty":""});
            const searchFormOptions = ref([[{"title":"单号","field":"ReportTranNo"},{"title":"订单","field":"ReportSellNo"},{"title":"数量","field":"ReportQty","type":"number"}]]);
            const columns = ref([{field:'Order_Id',title:'Order_Id',type:'guid',width:110,hidden:true,readonly:true,require:true,align:'left'},
                       {field:'ReportTranNo',title:'单号',type:'string',width:110,require:true,align:'left',sort:true},
                       {field:'ReportSellNo',title:'订单',type:'string',width:220,require:true,align:'left'},
                       {field:'ReportQty',title:'数量',type:'int',width:80,require:true,align:'left'},
                       {field:'Remark',title:'备注',type:'string',width:220,align:'left'},
                       {field:'CreateID',title:'CreateID',type:'int',width:80,hidden:true,align:'left'},
                       {field:'Creator',title:'Creator',type:'string',width:130,hidden:true,align:'left'},
                       {field:'CreateDate',title:'创建時间',type:'datetime',width:150,align:'left',sort:true},
                       {field:'ModifyID',title:'ModifyID',type:'int',width:80,hidden:true,align:'left'},
                       {field:'Modifier',title:'Modifier',type:'string',width:130,hidden:true,align:'left'},
                       {field:'ModifyDate',title:'修改時间',type:'datetime',width:150,align:'left',sort:true}]);
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
