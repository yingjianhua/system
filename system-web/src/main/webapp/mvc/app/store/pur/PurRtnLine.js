Ext.define('mvc.store.pur.PurRtnLine',{
extend : 'Ext.data.Store',
requires : 'mvc.model.pur.PurRtnLine',
model : 'mvc.model.pur.PurRtnLine',
pageSize : 20,
remoteSort : false,
autoLoad : false,
proxy : {
	type : 'ajax',
	url : base_path+'/pur_PurRtnLine_list',
	reader : {
		type : 'json',
		root : 'items',
		totalProperty : 'total'
	},
	simpleSortMode : true
}
});