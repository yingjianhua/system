Ext.define('mvc.store.pur.PurProtGoodsApplyLine',{
extend : 'Ext.data.Store',
requires : 'mvc.model.pur.PurProtGoodsApplyLine',
model : 'mvc.model.pur.PurProtGoodsApplyLine',
pageSize : 20,
remoteSort : false,
autoLoad : false,
proxy : {
	type : 'ajax',
	url : base_path+'/pur_PurProtGoodsApplyLine_list',
	reader : {
		type : 'json',
		root : 'items',
		totalProperty : 'total'
	},
	simpleSortMode : true
}
});