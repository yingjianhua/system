Ext.define('mvc.view.gs.GsStockStimate.List',{
extend : 'Ext.grid.Panel',
oldId : 'btn_GsStockStimate',
lock : true,
disableSelection : false,
loadMask : true,
multiSelect : true,
roles : '',
selModel : {selType : 'checkboxmodel'},
viewConfig : {enableTextSelection : true},
initComponent : function(){
var mainActs = [];this.columns = [{text : '仓库',width : 100,dataIndex : 'bean.warehouse',sortable : true,renderer : mvc.Tools.beanRendererHref(),md : 'gs',mn : 'view.gs.GsWarehouse.List'}
	,{text : '货物',width : 100,dataIndex : 'bean.goods',sortable : true,renderer : mvc.Tools.beanRendererHref(),md : 'goods',mn : 'view.gs.GsGoods.List'}
	,{text : '类别',width : 80,dataIndex : 'bean.enrouteType',sortable : true,renderer : mvc.Tools.optRenderer('gs','Gs','OEnrouteType')}
	,{text : '计量单位',width : 75,dataIndex : 'bean.uom',sortable : true,renderer : mvc.Tools.beanRenderer()}
	,{text : '数量',width : 100,dataIndex : 'bean.qty',sortable : true,renderer : mvc.Tools.numberRenderer(4),align : 'right'}
	,{text : '源单据',width : 80,dataIndex : 'bean.origForm',sortable : true,renderer : mvc.Tools.beanRenderer()}
	,{text : '源单据号',width : 135,dataIndex : 'bean.origFormNum',sortable : true}
	,{text : '建档日期',width : 100,dataIndex : 'bean.createdDate',sortable : true,renderer : Ext.util.Format.dateRenderer('Y-m-d')}
	,{text : '预计到货出货日期',width : 100,dataIndex : 'bean.planDate',sortable : true,renderer : Ext.util.Format.dateRenderer('Y-m-d')}
	];
		mvc.Tools.doGoodsLine(this.columns, 2);		if (mainActs.length > 0)
			this.tbar=mainActs;
		this.store=Ext.create('mvc.store.gs.GsStockStimate'); 
		this.store.remoteFilter = true;
		this.store.proxy.filterParam = 'filter';
		this.on({cellclick:mvc.Tools.onCellclick});
this.dockedItems=[{
		dock : 'top',
		xtype : 'toolbar',
		items : [{
				xtype : 'label',
				text : '仓库：'
			},
				mvc.Tools.crtComboTrigger(true,'gs_GsWarehouse','',{
							name : 'warehouse'
						})
			,'',{
				xtype : 'label',
				text : '货物：'
			},{
				xtype : 'comboauto',
				name : 'goods',
				listConfig : {minWidth:250},
				fields : ['pkey','code','name','spec'],
				valueField : ['pkey'],
				textField : 'code',
				queryParam : 'code',
				name : 'goods',
				url : base_path + '/gs_GsGoods_autoComplete',
				urlExt : 'gs.GsGoods',
				hasBlur : false
			},'',{
				xtype : 'label',
				text : '数量：'
			},{
				xtype : 'numberfield',
				name : 'qty'
			},'',{
				xtype : 'button',
				text : '撤销',
				scope : this,
				iconCls : 'win-close-icon',
				handler : this.onSearchCancel
			},{
				xtype : 'splitbutton',
				text : '搜索',
				scope : this,
				iconCls : 'win-ok-icon',
				handler : this.onSearch,
				menu : [{text:'高级搜索',iconCls : 'win-ok-icon', scope : this,handler: this.onSearchAdv}]
			}]
	},{
		xtype : 'pagingtoolbar',
		store : this.store,
		dock : 'bottom',
		displayInfo : true,
		displayMsg : '显示 {0} - {1} 条，共计 {2} 条',
		emptyMsg : '没有数据',
		items : [{
				xtype : Ext.create('mvc.tools.ComboxPaging',{myList : this})
			}]
	}];
		this.callParent(arguments);		mvc.Tools.onENTER2SearchBar(this.down('[dock=top]'),this);},
listeners : {
	selectionchange : function(selModel, selected){
}
},
onSearchCancel : function(){
		this.getSelectionModel().deselectAll();
		mvc.Tools.searchClear(this.down('toolbar'));
		this.store.clearFilter();
},
onSearch : function(){
		var array = mvc.Tools.searchValues(this.down('toolbar'));
		this.onSearchDo(array);
},
onSearchAdv : function(){
		var win = Ext.create('mvc.view.gs.GsStockStimate.WinSearch',{
			title : this.title+'>高级搜索',
			listCmp : this
		});
		win.show();
},
onSearchDo : function(array){
		this.getSelectionModel().deselectAll();
		if (array.length == 0){
			this.store.clearFilter();
			return;
		}
		this.store.clearFilter(true);
		this.store.filter(array);
}
});