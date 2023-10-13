<!--
*Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *業務請在@/extension/system/icpmass_2/EDC_DATA_ICPMASS_2.js此處编写
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
    import extend from "@/extension/edc/icpmass_2/EDC_DATA_ICPMASS_2.js";
    import { ref, defineComponent } from "vue";
    export default defineComponent({
        setup() {
            const table = ref({
                key: 'ICPMASSId',
                footer: "Foots",
                cnName: 'ICPMASS_2',
                name: 'icpmass_2/EDC_DATA_ICPMASS_2',
                url: "/EDC_DATA_ICPMASS_2/",
                sortName: "MFG_Date"
            });
            const editFormFields = ref({"MFG_Date":"","Operator":"","WaferSize":"","SampleVolume":"","Seq":"","LotID":"","Element":"","MW":"","ppb":"","ValueE10":"","BoxCleanID":"","Category":"","InputTime":"","Result":"","Q1SPC":""});
            const editFormOptions = ref([[{"title":"MFG Date","required":true,"field":"MFG_Date"},
                               {"title":"Operator","required":true,"field":"Operator"},
                               {"title":"Wafer Size","required":true,"field":"WaferSize","type":"number"}],
                              [{"title":"Sample Vol","required":true,"field":"SampleVolume","type":"number"},
                               {"title":"Seq.","required":true,"field":"Seq","type":"number"},
                               {"title":"Lot ID","required":true,"field":"LotID"}],
                              [{"title":"Element","required":true,"field":"Element"},
                               {"title":"MW","field":"MW","type":"decimal"},
                               {"title":"ppb","field":"ppb","type":"decimal"}],
                              [{"title":"Value E10","field":"ValueE10","type":"decimal"},
                               {"title":"Box Clean ID","field":"BoxCleanID"},
                               {"title":"Category","field":"Category"}],
                              [{"title":"Input Time","field":"InputTime"},
                               {"title":"Result","field":"Result"},
                               {"title":"Q1SPC","field":"Q1SPC"}]]);
            const searchFormFields = ref({"MFG_Date":"","Operator":"","WaferSize":"","SampleVolume":"","Seq":"","LotID":"","Element":"","MW":"","ppb":""});
            const searchFormOptions = ref([[{"title":"MFG Date","field":"MFG_Date","type":"date"},{"title":"Operator","field":"Operator","type":"like"},{"title":"Wafer Size","field":"WaferSize","type":"like"}],[{"title":"Sample Vol","field":"SampleVolume","type":"number"},{"title":"Seq.","field":"Seq","type":"number"},{"title":"Lot ID","field":"LotID","type":"like"}],[{"title":"Element","field":"Element"},{"title":"MW","field":"MW","type":"like"},{"title":"ppb","field":"ppb","type":"like"}]]);
            const columns = ref([{field:'ICPMASSId',title:'ICPMASSId',type:'guid',width:110,hidden:true,readonly:true,require:true,align:'left'},
                       {field:'MFG_Date',title:'MFG Date',type:'datetime',width:110,require:true,align:'left',sort:true},
                       {field:'Operator',title:'Operator',type:'string',width:110,require:true,align:'left'},
                       {field:'WaferSize',title:'Wafer Size',type:'int',width:110,require:true,align:'left'},
                       {field:'SampleVolume',title:'Sample Vol',type:'int',width:110,require:true,align:'left'},
                       {field:'Seq',title:'Seq.',type:'int',width:110,require:true,align:'left'},
                       {field:'LotID',title:'Lot ID',type:'string',width:110,require:true,align:'left'},
                       {field:'Element',title:'Element',type:'string',link:true,width:110,require:true,align:'left'},
                       {field:'MW',title:'MW',type:'decimal',width:110,align:'left'},
                       {field:'ppb',title:'ppb',type:'decimal',width:110,align:'left'},
                       {field:'ValueE10',title:'Value E10',type:'decimal',width:110,align:'left'},
                       {field:'BoxCleanID',title:'Box Clean ID',type:'string',width:110,align:'left'},
                       {field:'Category',title:'Category',type:'string ',width:110,align:'left'},
                       {field:'InputTime',title:'Input Time',type:'datetime',width:110,align:'left',sort:true},
                       {field:'Result',title:'Result',type:'string',width:110,align:'left'},
                       {field:'Q1SPC',title:'Q1SPC',type:'string',width:110,align:'left'},
                       {field:'Q1SPCFlag',title:'Q1SPCFlag',type:'int',width:110,align:'left'},
                       {field:'Q1SPCErrorText',title:'Q1SPCErrorText',type:'string',width:220,align:'left'}]);
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
