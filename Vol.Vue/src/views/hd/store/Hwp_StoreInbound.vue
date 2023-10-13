<!--
*Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *業務請在@/extension/system/store/Hwp_StoreInbound.js此處编写
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
    import extend from "@/extension/hd/store/Hwp_StoreInbound.js";
    import { ref, defineComponent } from "vue";
    export default defineComponent({
        setup() {
            const table = ref({
                key: 'StoreInboundId',
                footer: "Foots",
                cnName: '入庫',
                name: 'store/Hwp_StoreInbound',
                url: "/Hwp_StoreInbound/",
                sortName: "InDate"
            });
            const editFormFields = ref({});
            const editFormOptions = ref([]);
            const searchFormFields = ref({"WasteName":"","CatalogName":"","CatalogCode":"","Features":""});
            const searchFormOptions = ref([[{"title":"废物名称","field":"WasteName","type":"like"},{"title":"危险废物","field":"CatalogName","type":"like"},{"title":"废物代码","field":"CatalogCode","type":"like"},{"dataKey":"危险特性","data":[],"title":"危险特性","field":"Features","type":"like"}]]);
            const columns = ref([{field:'StoreInboundId',title:'StoreInboundId',type:'int',width:110,hidden:true,readonly:true,require:true,align:'left'},
                       {field:'WasteName',title:'废物名称',type:'string',link:true,width:120,require:true,align:'left',sort:true},
                       {field:'CatalogName',title:'危险废物',type:'string',width:180,readonly:true,require:true,align:'left'},
                       {field:'Catalog',title:'Catalog',type:'string',width:220,hidden:true,align:'left'},
                       {field:'CatalogCode',title:'废物代码',type:'string',width:100,readonly:true,require:true,align:'left'},
                       {field:'Features',title:'危险特性',type:'string',bind:{ key:'危险特性',data:[]},width:100,readonly:true,require:true,align:'left'},
                       {field:'PhysicalStatus',title:'物理性状',type:'string',bind:{ key:'物理性状',data:[]},width:120,require:true,align:'left'},
                       {field:'WasteType',title:'废物類型',type:'string',bind:{ key:'废物類别',data:[]},width:120,align:'left'},
                       {field:'InDate',title:'入庫時间',type:'datetime',width:100,require:true,align:'left',sort:true},
                       {field:'InQty',title:'入庫量',type:'decimal',width:110,require:true,align:'left'},
                       {field:'OutQty',title:'出庫数量',type:'decimal',width:110,hidden:true,align:'left'},
                       {field:'StoreQty',title:'庫存量',type:'decimal',width:110,hidden:true,align:'left'},
                       {field:'Unit',title:'计量单位',type:'string',bind:{ key:'单位',data:[]},width:80,require:true,align:'left'},
                       {field:'CreateID',title:'CreateID',type:'int',width:80,hidden:true,align:'left'},
                       {field:'Creator',title:'Creator',type:'string',width:130,hidden:true,align:'left'},
                       {field:'CreateDate',title:'CreateDate',type:'datetime',width:110,hidden:true,align:'left',sort:true},
                       {field:'ModifyID',title:'ModifyID',type:'int',width:80,hidden:true,align:'left'},
                       {field:'Modifier',title:'Modifier',type:'string',width:130,hidden:true,align:'left'},
                       {field:'ModifyDate',title:'ModifyDate',type:'datetime',width:110,hidden:true,align:'left',sort:true},
                       {field:'OrderNo',title:'OrderNo',type:'string',width:120,hidden:true,align:'left'}]);
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
