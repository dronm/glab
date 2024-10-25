/**	
 * @author Andrey Mikhalevich <katrenplus@mail.ru>, 2024

 * @extends View
 * @requires core/extend.js
 * @requires controls/View.js     

 * @class
 * @classdesc
 
 * @param {string} id - Object identifier
 * @param {object} options
 */
function CashFlowInOut_View(id,options){
	options = options || {};	

	let d = new Date();
	let self = this;
	options.addElement = function(){
		//date with period change commands.
		this.addElement(new EditDate(id+":period",{
			"cmdClear":false,
			"cmdNext":true,
			"cmdPrev":true,
			"inputEnabled":false,
			"labelCaption":"День:",
			"labelClassName":"control-label "+ window.getBsCol(1),
			"editContClassName":"input-group " + window.getBsCol(2),
			"value": d,
			"onValueChange":function(){
				self.onSelectDate();
			}
		}));	

		this.addElement(new Control(id+":bal_report", "DIV", {
		}));

		this.addElement(new CashFlowOutList_View(id+":cash_flow_out_list",{
			"inOut":true,
			"inOutRefresh":function(){
				self.m_oldDate = undefined;
				self.onSelectDate();
			}
		}));

		this.addElement(new CashFlowInList_View(id+":cash_flow_in_list",{
			"inOut":true,
			"inOutRefresh":function(){
				self.m_oldDate = undefined;
				self.onSelectDate();
			}
		}));
	}
	CashFlowInOut_View.superclass.constructor.call(this,id,options);

	this.m_oldDate = d; 
	this.onSelectDate();
}
//ViewObjectAjx,ViewAjxList
extend(CashFlowInOut_View, View);

/* Constants */


/* private members */

/* protected*/


/* public methods */
CashFlowInOut_View.prototype.onSelectDate = function(){
	let ctrl = this.getElement("period");
	if(ctrl.getNode().value.includes("_")){
		return;
	}
	let v = ctrl.getValue();
	if(!v || !DateHelper.isValidDate(v) || this.m_oldDate == v){
		return;
	}
	this.m_oldDate = v;
	v.setHours(0);
	v.setMinutes(0);
	v.setSeconds(0);
	let to = new Date(v.getTime() + (23*60*60*1000) + (59*60*1000) + (59*1000));
	
	let filters = [
		{"field":"date_time",
		"sign":"ge",
		"val":DateHelper.format(v, "Y-m-dTH:i:s")}
		,{"field":"date_time",
		"sign":"le",
		"val":DateHelper.format(to, "Y-m-dTH:i:s")}
	];

	// if date is not a current date then set hours to 08:00
	let gridDate;
	let cur = new Date();
	if(v.getDate() != cur.getDate() || v.getMonth() != cur.getMonth() || v.getFullYear() != cur.getFullYear()){
		gridDate = new Date(v);
		gridDate.setHours(8);// fixed time
	}
	this.refreshGrid("cash_flow_in_list", filters, gridDate);
	this.refreshGrid("cash_flow_out_list", filters, gridDate);
	 
	this.updateReport(v, to);
	window.showTempNote("Данные обновлены за выбранный период", null, 5000);
}

CashFlowInOut_View.prototype.refreshGrid = function(gridId, filters, dateVal){
	let grid = this.getElement(gridId).getElement("grid");

	let gridOpts = {}
	if(dateVal){
		let gridModelId = grid.getModel().getId();
		let gridModel = new window[gridModelId]();
		gridModel.setFieldValue("date_time", dateVal);
		gridModel.setFieldValue("cash_locations_ref", window.getApp().getDefaultCashLocation());
		gridModel.recInsert();
		gridOpts.models = {};
		gridOpts.models[gridModelId] = gridModel;
    }
	grid.setInsertViewOptions(gridOpts);
	grid.setFilters(filters);
	grid.onRefresh();
}

CashFlowInOut_View.prototype.updateReport = function(from, to){
	let pm = (new CashFlowIn_Controller()).getPublicMethod("get_report");	
	pm.setFieldValue("cond_fields", "date_time@@date_time@@cash_location_id");
	pm.setFieldValue("cond_sgns", "ge@@le@@e");
	pm.setFieldValue("cond_vals", DateHelper.format(from, "Y-m-dTH:i:s") + "@@" + DateHelper.format(to, "Y-m-dTH:i:s") + "@@null");
	pm.setFieldValue("templ", "RepCashFlow");
	let self = this;
	pm.run({
		"viewId": "ViewHTMLXSLT",
		"retContentType": "text",		
		"ok":function(resp){
			self.updateReportCont(resp);
		}
	});
}

CashFlowInOut_View.prototype.updateReportCont = function(resp){
	this.getElement("bal_report").getNode().innerHTML = resp;
}
