Ext.define('mvc.view.frm.FrmLink.List',{
extend : 'Ext.grid.Panel',
oldId : 'btn_FrmLink',
lock : true,
disableSelection : false,
loadMask : true,
multiSelect : true,
roles : '',
selModel : {selType : 'checkboxmodel'},
viewConfig : {enableTextSelection : true},
initComponent : function(){
var mainActs = [];this.columns = [{text : '关联类型',width : 100,dataIndex : 'bean.type',sortable : true,renderer : mvc.Tools.optRenderer('frm','Frm','OLinkType')}
	,{text : '主单据',width : 80,dataIndex : 'bean.mainForm',sortable : true,renderer : mvc.Tools.beanRenderer()}
	,{text : '主单据号',width : 135,dataIndex : 'bean.mainFormNum',sortable : true}
	,{text : '关联单据',width : 80,dataIndex : 'bean.linkForm',sortable : true,renderer : mvc.Tools.beanRenderer()}
	,{text : '关联单据号',width : 135,dataIndex : 'bean.linkFormNum',sortable : true}
	];
		if (mainActs.length > 0)
			this.tbar=mainActs;
		this.store=Ext.create('mvc.store.frm.FrmLink'); 
		this.store.remoteFilter = true;
		this.store.proxy.filterParam = 'filter';
		this.on({cellclick:mvc.Tools.onCellclick});
this.dockedItems=[{
		dock : 'top',
		xtype : 'toolbar',
		items : [{
				xtype : 'label',
				text : '主单据号：'
			},{
				xtype : 'textfield',
				name : 'mainFormNum'
			},'',{
				xtype : 'label',
				text : '关联单据号：'
			},{
				xtype : 'textfield',
				name : 'linkFormNum'
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
		var win = Ext.create('mvc.view.frm.FrmLink.WinSearch',{
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