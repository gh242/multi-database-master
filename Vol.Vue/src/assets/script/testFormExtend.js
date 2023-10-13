//对vue参数进行擴展
var extend = function ($vueParam) {
    $vueParam.methods.volBoxFrom = function () {
        this.$Message.info("擴展js,增加弹出消息");
        this.$refs.volBoxFrom.show();
    }
    //修改data屬性:
    let data = $vueParam.data();
    data.formFileds['extend'] = "动态擴展字段";
    data.formOptions.splice(0,0,{ filed: "extend", title: "动态增加字段", type: "text", required: true });
    $vueParam.data = function () {
        return data;
    }
}
export { extend }