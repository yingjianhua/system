Ext.define('mvc.store.gs.GsStockStimate',{
extend : 'Ext.data.Store',
requires : 'mvc.model.gs.GsStockStimate',
model : 'mvc.model.gs.GsStockStimate',
pageSize : 20,
remoteSort : false,
autoLoad : false,
proxy : {
	type : 'ajax',
	url : base_path+'/gs_GsStockStimate_list',
	reader : {
		type : 'json',
		root : 'items',
		totalProperty : 'total'
	},
	simpleSortMode : true
}
});