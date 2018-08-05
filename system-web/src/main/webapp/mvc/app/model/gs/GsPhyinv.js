Ext.define('mvc.model.gs.GsPhyinv',{
extend : 'Ext.data.Model',
idProperty : 'bean.pkey',
proxy : {
	type : 'ajax',
	url : base_path+'/gs_GsPhyinv_load'
},
fields : [{name : 'bean.pkey',mapping : 'pkey',type : 'int',useNull : true}
	,{name : 'bean.code',mapping : 'code',type : 'string'}
	,{name : 'bean.status',mapping : 'status',type : 'int',useNull : true}
	,{name : 'bean.org',mapping : 'org',type : 'string',outkey : true}
	,{name : 'bean.dept',mapping : 'dept',type : 'string',outkey : true}
	,{name : 'bean.createdBy',mapping : 'createdBy',type : 'string',outkey : true}
	,{name : 'bean.createdTime',mapping : 'createdTime',type : 'date',dateFormat : 'Y-m-d H:i:s'}
	,{name : 'bean.apprBy',mapping : 'apprBy',type : 'string',outkey : true}
	,{name : 'bean.apprTime',mapping : 'apprTime',type : 'date',dateFormat : 'Y-m-d H:i:s'}
	,{name : 'bean.rem',mapping : 'rem',type : 'string'}
	,{name : 'bean.warehouse',mapping : 'warehouse',type : 'string',outkey : true}
	,{name : 'bean.planFiniDate',mapping : 'planFiniDate',type : 'date'}
	,{name : 'bean.finiTime',mapping : 'finiTime',type : 'date',dateFormat : 'Y-m-d H:i:s'}
	,{name : 'bean.unmatchNum',mapping : 'unmatchNum',type : 'int',useNull : true}
	,{name : 'bean.unmatchAmt',mapping : 'unmatchAmt',type : 'float',useNull : true}
	,{name : 'bean.countedBy',mapping : 'countedBy',type : 'string',outkey : true}
	,{name : 'bean.rowVersion',mapping : 'rowVersion',type : 'int',useNull : true}
	]
});