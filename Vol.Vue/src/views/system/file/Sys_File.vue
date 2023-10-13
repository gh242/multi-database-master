<!--
*Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *業務請在@/extension/system/file/Sys_File.js此處编写
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
    import extend from "@/extension/system/file/Sys_File.js";
    import { ref, defineComponent } from "vue";
    export default defineComponent({
        setup() {
            const table = ref({
                key: 'FileId',
                footer: "Foots",
                cnName: '资料列表',
                name: 'file/Sys_File',
                url: "/Sys_File/",
                sortName: "CreateDate"
            });
            const editFormFields = ref({"ParentId":[],"FilePath":"","BeginDate":"","EndDate":"","completedStatus":""});
            const editFormOptions = ref([[{"dataKey":"文件夹","data":[],"title":"目錄","field":"ParentId","type":"cascader"}],
                              [{"title":"文件","required":true,"field":"FilePath","type":"file"}],
                              [{"title":"开始時间","field":"BeginDate","type":"date"}],
                              [{"title":"完成時间","field":"EndDate","type":"date"}],
                              [{"title":"状态","field":"completedStatus"}]]);
            const searchFormFields = ref({"FileName":"","CreateDate":"","ModifyDate":""});
            const searchFormOptions = ref([[{"title":"文件名","field":"FileName","type":"like"},{"title":"上传時间","field":"CreateDate","type":"datetime"},{"title":"修改時间","field":"ModifyDate","type":"datetime"}]]);
            const columns = ref([{field:'FileId',title:'FileId',type:'guid',width:110,hidden:true,readonly:true,require:true,align:'left'},
                       {field:'FileName',title:'文件名',type:'string',width:130,align:'left',sort:true},
                       {field:'ParentId',title:'目錄',type:'guid',bind:{ key:'文件夹',data:[]},width:110,align:'left'},
                       {field:'FileType',title:'文件類型',type:'string',width:80,align:'left'},
                       {field:'FileSize',title:'文件大小',type:'decimal',width:100,align:'left'},
                       {field:'FilePath',title:'文件',type:'string',width:220,hidden:true,require:true,align:'left'},
                       {field:'IsDel',title:'IsDel',type:'int',width:110,hidden:true,require:true,align:'left'},
                       {field:'CreateID',title:'CreateID',type:'int',width:80,hidden:true,align:'left'},
                       {field:'Creator',title:'创建人',type:'string',width:120,align:'left'},
                       {field:'CreateDate',title:'上传時间',type:'datetime',width:150,align:'left',sort:true},
                       {field:'ModifyID',title:'ModifyID',type:'int',width:80,hidden:true,align:'left'},
                       {field:'Modifier',title:'修改人',type:'string',width:120,hidden:true,align:'left'},
                       {field:'ModifyDate',title:'修改時间',type:'datetime',width:150,hidden:true,align:'left',sort:true},
                       {field:'IsFolder',title:'是否為文件夹',type:'int',width:80,hidden:true,require:true,align:'left'},
                       {field:'DelDate',title:'删除時间',type:'datetime',width:150,hidden:true,align:'left',sort:true},
                       {field:'OrderNo',title:'OrderNo',type:'int',width:80,hidden:true,align:'left'},
                       {field:'BeginDate',title:'开始時间',type:'date',width:120,align:'left',sort:true},
                       {field:'EndDate',title:'完成時间',type:'date',width:120,align:'left',sort:true},
                       {field:'completedStatus',title:'状态',type:'string',width:80,align:'left'}]);
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
