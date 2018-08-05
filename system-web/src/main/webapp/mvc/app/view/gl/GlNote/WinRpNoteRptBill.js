Ext.define('mvc.view.gl.GlNote.WinRpNoteRptBill', {
	extend : 'Ext.window.Window',
	width : 400,
	layout : 'fit',
	form : null,
	resizable : true,
	modal : true,
	iconCls : 'app-icon',
	insFlag : true,
	tableCode : null,
	billPkey : null,
	slip : 'irille.gl.rp.RpNoteRptBill',
	initComponent : function() {
		this.items = {
			xtype : 'form',
			anchor : '100%',
			plain : true,
			requires : ['Ext.ux.DataTip'],
			layout : 'form',
			border : false,
			frame : false,
			insFlag : true,
			bodyPadding : '5 5 5 5',
			url : base_path + '/gl_GlNote_insByTb',
			fieldDefaults : {
				labelWidth : 100,
				// width : 275,
				labelStyle : 'font-weight : bold'
			},
			plugins : {
				ptype : 'datatip'
			},
			items : [{
				layout : {
					type : 'vbox',
					align : 'stretch'
				},
				border : false,
				items : [/*
							 * { xtype : 'beantrigger', name : 'bean.bill',
							 * afterLabelTextTpl : required, allowBlank : false,
							 * fieldLabel : '主单据' },
							 * mvc.Tools.crtComboTrigger(true, 'sys_SysTable',
							 * '', { name : 'bean.extTable', fieldLabel :
							 * '扩展属性表' })
							 */,{
							xtype : 'beantrigger',
							name : 'rpNoteRptBill.journal',
							fieldLabel : '出纳日记账',
							bean : 'RpJournal',
							beanType : 'rp',
							diySql : 'cell='+this.billCell,
							emptyText : form_empty_text,
							afterLabelTextTpl : required,
							allowBlank : false
						}, {
							xtype : 'numberfield',
							name : 'bean.amt',
							afterLabelTextTpl : required,
							allowBlank : false,
							fieldLabel : '金额',
							decimalPrecision : 2
						}, {
							xtype : 'textfield',
							name : 'bean.docNum',
							fieldLabel : '票据号'
						}, mvc.Tools.crtComboForm(false, {
									name : 'rpNoteRptBill.type',
									fieldLabel : '收款方式',
									store : Ext
											.create('mvc.combo.rp.RpORptType'),
									value : 0 ,
									listeners : {
										scope : this,
										change : function(field,newv,oldv,opts) {
											if (newv == 0){
												this.down('[name=rpNoteRptBill.name]').hide();
												this.down('[name=rpNoteRptBill.receiveDate]').hide();
											}else{
												this.down('[name=rpNoteRptBill.name]').show();
												this.down('[name=rpNoteRptBill.receiveDate]').show();
											}
											this.doLayout();
										}
									}
								}), {
							xtype : 'datefield',
							name : 'rpNoteRptBill.tranTime',
							fieldLabel : '收款时间',
							format : 'Y-m-d H:i:s'
						}, {
							xtype : 'datefield',
							name : 'rpNoteRptBill.receiveDate',
							fieldLabel : '到账日期',
							hidden : true,
							format : 'Y-m-d'
						}, {
							xtype : 'textfield',
							name : 'rpNoteRptBill.name',
							fieldLabel : '付款方名称',
							hidden : true
						}, {
							xtype : 'textfield',
							name : 'bean.summary',
							fieldLabel : '摘要'
						}, {
							xtype : 'textfield',
							name : 'bean.rem',
							fieldLabel : '备注'
						}]
			}]

		};
		this.buttonAlign = 'right', this.buttons = [{
					text : '重置',
					iconCls : 'win-refresh-icon',
					scope : this,
					handler : this.onReset
				}, {
					text : '关闭',
					iconCls : 'win-close-icon',
					scope : this,
					handler : this.onClose
				}, {
					text : '保存',
					iconCls : 'win-save-icon',
					scope : this,
					handler : this.onSave
				}];
		this.callParent(arguments);
		this.addEvents('create');
		this.form = this.items.items[0];
	},
	setActiveRecord : function(record) {
		this.form.activeRecord = record;
		if (record || this.form.activeRecord) {
			this.form.getForm().loadRecord(record);
		} else {
			this.form.getForm().reset();
		}
	},
	onReset : function() {
		this.setActiveRecord(this.form.activeRecord);
	},
	onClose : function() {
		this.close();
	},
	onSave : function() {
		var form = this.form.getForm();
		if (form.isValid()) {
			form.submit({
						url : this.form.url,
						type : 'ajax',
						params : {
							tableCode : this.tableCode,
							slip : this.slip,
							"bean.pkey": this.billPkey
						},
						submitEmptyText : false,
						success : function(form, action) {
							this.fireEvent('create', this, action.result);
							this.close();
						},
						failure : mvc.Tools.formFailure(),
						waitTitle : wait_title,
						waitMsg : wait_msg,
						scope : this
					});
		}
	}
});