Ext.define('mvc.store.cst.CstSalInvoiceLine',{
extend : 'Ext.data.Store',
requires : 'mvc.model.cst.CstSalInvoiceLine',
model : 'mvc.model.cst.CstSalInvoiceLine',
pageSize : 20,
remoteSort : false,
autoLoad : false,
proxy : {
	type : 'ajax',
	url : base_path+'/cst_CstSalInvoiceLine_list',
	reader : {
		type : 'json',
		root : 'items',
		totalProperty : 'total'
	},
	simpleSortMode : true
}
});