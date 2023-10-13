<!--
*Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *業務請在@/extension/system/dbtest/ServiceDbTest.js此處编写
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
    import extend from "@/extension/servicetest/dbtest/ServiceDbTest.js";
    import { ref, defineComponent } from "vue";
    export default defineComponent({
        setup() {
            const table = ref({
                key: 'Order_Id',
                footer: "Foots",
                cnName: 'ServiceDbTest',
                name: 'dbtest/ServiceDbTest',
                url: "/ServiceDbTest/",
                sortName: "CreateDate"
            });
            const editFormFields = ref({"ServiceTranNo":"","ServiceSellNo":"","ServiceQty":"","Remark":""});
            const editFormOptions = ref([[{"title":"订单号","required":true,"field":"ServiceTranNo"}],
                              [{"title":"运单号","required":true,"field":"ServiceSellNo"}],
                              [{"title":"数量","required":true,"field":"ServiceQty","type":"number"}],
                              [{"title":"备注","field":"Remark"}]]);
            const searchFormFields = ref({"ServiceTranNo":"","ServiceSellNo":"","ServiceQty":"","Remark":""});
            const searchFormOptions = ref([[{"title":"订单号","field":"ServiceTranNo"},{"title":"运单号","field":"ServiceSellNo"},{"title":"数量","field":"ServiceQty","type":"number"},{"title":"备注","field":"Remark"}]]);
            const columns = ref([{field:'Order_Id',title:'Order_Id',type:'guid',width:110,hidden:true,readonly:true,require:true,align:'left'},
                       {field:'ServiceTranNo',title:'订单号',type:'string',width:120,require:true,align:'left',sort:true},
                       {field:'ServiceSellNo',title:'运单号',type:'string',width:220,require:true,align:'left'},
                       {field:'ServiceQty',title:'数量',type:'int',width:110,require:true,align:'left'},
                       {field:'Remark',title:'备注',type:'string',width:220,align:'left'},
                       {field:'CreateID',title:'CreateID',type:'int',width:80,hidden:true,align:'left'},
                       {field:'Creator',title:'创建人',type:'string',width:130,align:'left'},
                       {field:'CreateDate',title:'创建時间',type:'datetime',width:110,align:'left',sort:true},
                       {field:'ModifyID',title:'ModifyID',type:'int',width:80,hidden:true,align:'left'},
                       {field:'Modifier',title:'Modifier',type:'string',width:130,hidden:true,align:'left'},
                       {field:'ModifyDate',title:'ModifyDate',type:'datetime',width:110,hidden:true,align:'left',sort:true}]);
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
