/**
 * @author Andrey Mikhalevich <katrenplus@mail.ru>, 2017
 
 * THIS FILE IS GENERATED FROM TEMPLATE build/templates/controllers/Controller_js20.xsl
 * ALL DIRECT MODIFICATIONS WILL BE LOST WITH THE NEXT BUILD PROCESS!!!
 
 * @class
 * @classdesc controller
 
 * @extends ControllerObjServer
  
 * @requires core/extend.js
 * @requires core/ControllerObjServer.js
  
 * @param {Object} options
 * @param {Model} options.listModelClass
 * @param {Model} options.objModelClass
 */ 

function CashFlowOut_Controller(options){
	options = options || {};
	options.listModelClass = CashFlowOutList_Model;
	options.objModelClass = CashFlowOutList_Model;
	CashFlowOut_Controller.superclass.constructor.call(this,options);	
	
	//methods
	this.addInsert();
	this.addUpdate();
	this.addDelete();
	this.addGetList();
	this.addGetObject();
	this.add_complete_comment();
		
}
extend(CashFlowOut_Controller,ControllerObjServer);

			CashFlowOut_Controller.prototype.addInsert = function(){
	CashFlowOut_Controller.superclass.addInsert.call(this);
	
	var pm = this.getInsert();
	
	var options = {};
	options.primaryKey = true;options.autoInc = true;
	var field = new FieldInt("id",options);
	
	pm.addField(field);
	
	var options = {};
	
	var field = new FieldDateTimeTZ("date_time",options);
	
	pm.addField(field);
	
	var options = {};
	
	var field = new FieldInt("cash_location_id",options);
	
	pm.addField(field);
	
	var options = {};
	options.required = true;
	var field = new FieldInt("fin_expense_type1_id",options);
	
	pm.addField(field);
	
	var options = {};
	options.required = true;
	var field = new FieldInt("fin_expense_type2_id",options);
	
	pm.addField(field);
	
	var options = {};
	
	var field = new FieldInt("fin_expense_type3_id",options);
	
	pm.addField(field);
	
	var options = {};
	options.alias = "Комментарий";
	var field = new FieldText("comment_text",options);
	
	pm.addField(field);
	
	var options = {};
	options.alias = "Комментарий";
	var field = new FieldText("comment_text2",options);
	
	pm.addField(field);
	
	var options = {};
	
	var field = new FieldInt("user_id",options);
	
	pm.addField(field);
	
	var options = {};
	
	var field = new FieldFloat("total",options);
	
	pm.addField(field);
	
	pm.addField(new FieldInt("ret_id",{}));
	
	
}

			CashFlowOut_Controller.prototype.addUpdate = function(){
	CashFlowOut_Controller.superclass.addUpdate.call(this);
	var pm = this.getUpdate();
	
	var options = {};
	options.primaryKey = true;options.autoInc = true;
	var field = new FieldInt("id",options);
	
	pm.addField(field);
	
	field = new FieldInt("old_id",{});
	pm.addField(field);
	
	var options = {};
	
	var field = new FieldDateTimeTZ("date_time",options);
	
	pm.addField(field);
	
	var options = {};
	
	var field = new FieldInt("cash_location_id",options);
	
	pm.addField(field);
	
	var options = {};
	
	var field = new FieldInt("fin_expense_type1_id",options);
	
	pm.addField(field);
	
	var options = {};
	
	var field = new FieldInt("fin_expense_type2_id",options);
	
	pm.addField(field);
	
	var options = {};
	
	var field = new FieldInt("fin_expense_type3_id",options);
	
	pm.addField(field);
	
	var options = {};
	options.alias = "Комментарий";
	var field = new FieldText("comment_text",options);
	
	pm.addField(field);
	
	var options = {};
	options.alias = "Комментарий";
	var field = new FieldText("comment_text2",options);
	
	pm.addField(field);
	
	var options = {};
	
	var field = new FieldInt("user_id",options);
	
	pm.addField(field);
	
	var options = {};
	
	var field = new FieldFloat("total",options);
	
	pm.addField(field);
	
	
}

			CashFlowOut_Controller.prototype.addDelete = function(){
	CashFlowOut_Controller.superclass.addDelete.call(this);
	var pm = this.getDelete();
	var options = {"required":true};
		
	pm.addField(new FieldInt("id",options));
}

			CashFlowOut_Controller.prototype.addGetList = function(){
	CashFlowOut_Controller.superclass.addGetList.call(this);
	
	
	
	var pm = this.getGetList();
	
	pm.addField(new FieldInt(this.PARAM_COUNT));
	pm.addField(new FieldInt(this.PARAM_FROM));
	pm.addField(new FieldString(this.PARAM_COND_FIELDS));
	pm.addField(new FieldString(this.PARAM_COND_SGNS));
	pm.addField(new FieldString(this.PARAM_COND_VALS));
	pm.addField(new FieldString(this.PARAM_COND_JOINS));
	pm.addField(new FieldString(this.PARAM_COND_ICASE));
	pm.addField(new FieldString(this.PARAM_ORD_FIELDS));
	pm.addField(new FieldString(this.PARAM_ORD_DIRECTS));
	pm.addField(new FieldString(this.PARAM_FIELD_SEP));
	pm.addField(new FieldString(this.PARAM_FIELD_LSN));
	pm.addField(new FieldString(this.PARAM_EXP_FNAME));

	var f_opts = {};
	
	pm.addField(new FieldInt("id",f_opts));
	var f_opts = {};
	
	pm.addField(new FieldDateTimeTZ("date_time",f_opts));
	var f_opts = {};
	
	pm.addField(new FieldInt("cash_location_id",f_opts));
	var f_opts = {};
	
	pm.addField(new FieldJSON("cash_locations_ref",f_opts));
	var f_opts = {};
	
	pm.addField(new FieldJSON("fin_expense_types1_ref",f_opts));
	var f_opts = {};
	
	pm.addField(new FieldJSON("fin_expense_types2_ref",f_opts));
	var f_opts = {};
	
	pm.addField(new FieldJSON("fin_expense_types3_ref",f_opts));
	var f_opts = {};
	f_opts.alias = "Комментарий";
	pm.addField(new FieldText("comment_text",f_opts));
	var f_opts = {};
	f_opts.alias = "Комментарий";
	pm.addField(new FieldText("comment_text2",f_opts));
	var f_opts = {};
	
	pm.addField(new FieldJSON("users_ref",f_opts));
	var f_opts = {};
	
	pm.addField(new FieldFloat("total",f_opts));
	pm.getField(this.PARAM_ORD_FIELDS).setValue("date_time");
	
}

			CashFlowOut_Controller.prototype.addGetObject = function(){
	CashFlowOut_Controller.superclass.addGetObject.call(this);
	
	var pm = this.getGetObject();
	var f_opts = {};
		
	pm.addField(new FieldInt("id",f_opts));
	
	pm.addField(new FieldString("mode"));
	pm.addField(new FieldString("lsn"));
}

			CashFlowOut_Controller.prototype.add_complete_comment = function(){
	var opts = {"controller":this};	
	var pm = new PublicMethodServer('complete_comment',opts);
	
				
	
	var options = {};
	
		pm.addField(new FieldText("comment_text",options));
	
				
	
	var options = {};
	
		pm.addField(new FieldInt("fin_expense_type2_id",options));
	
				
	
	var options = {};
	
		pm.addField(new FieldInt("ic",options));
	
				
	
	var options = {};
	
		pm.addField(new FieldInt("mid",options));
	
				
	
	var options = {};
	
		pm.addField(new FieldInt("count",options));
	
				
	
	var options = {};
	
		pm.addField(new FieldString("ord_directs",options));
	
			
	this.addPublicMethod(pm);
}

		