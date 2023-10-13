let props = {
  columns: {//當前表的配置信息
    type: Array,
    default: () => {
      return [];
    }
  },
  detail: {//从表明细配置
    type: Object,
    default: () => {
      return {
        columns: [],//从表列
        sortName: ""//从表排序字段
      };
    }
  },
  editFormFields: {//新建、编辑字段(key/value)
    type: Object,
    default: () => {
      return {};
    }
  },
  editFormOptions: {//新建、编辑配置信息
    type: Array,
    default: () => {
      return [];
    }
  },
  searchFormFields: {//查询字段(key/value)
    type: Object,
    default: () => {
      return {};
    }
  },
  searchFormOptions: {//查询配置信息(key/value)
    type: Array,
    default: () => {
      return [];
    }
  },
  table: {//表的配置信息：主键、排序等
    type: Object,
    default: () => {
      return {};
    }
  },
  extend: {//表的擴展方法與組件都合并到此屬性中
    type: Object,
    default: () => {
      return {};
    }
  }
}

export default props;