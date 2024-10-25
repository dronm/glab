/**	
 *
 * THIS FILE IS GENERATED FROM TEMPLATE build/templates/models/Model_js.xsl
 * ALL DIRECT MODIFICATIONS WILL BE LOST WITH THE NEXT BUILD PROCESS!!!
 *
 * @author Andrey Mikhalevich <katrenplus@mail.ru>, 2017
 * @class
 * @classdesc Model class. Created from template build/templates/models/Model_js.xsl. !!!DO NOT MODEFY!!!
 
 * @extends ModelXML
 
 * @requires core/extend.js
 * @requires core/ModelXML.js
 
 * @param {string} id 
 * @param {Object} options
 */

function SupplierItemFeatureVal_Model(options){
	var id = 'SupplierItemFeatureVal_Model';
	options = options || {};
	
	options.fields = {};
	
				
	
	var filed_options = {};
	filed_options.primaryKey = true;	
	
	filed_options.autoInc = true;	
	
	options.fields.id = new FieldInt("id",filed_options);
	
				
	
	var filed_options = {};
	filed_options.primaryKey = false;	
	filed_options.alias = 'Харктеристика';
	filed_options.autoInc = false;	
	
	options.fields.item_feature_id = new FieldInt("item_feature_id",filed_options);
	options.fields.item_feature_id.getValidator().setRequired(true);
	
				
	
	var filed_options = {};
	filed_options.primaryKey = false;	
	filed_options.alias = 'Номенклатура';
	filed_options.autoInc = false;	
	
	options.fields.supplier_item_id = new FieldInt("supplier_item_id",filed_options);
	options.fields.supplier_item_id.getValidator().setRequired(true);
	
				
	
	var filed_options = {};
	filed_options.primaryKey = false;	
	filed_options.alias = 'Значение';
	filed_options.autoInc = false;	
	
	options.fields.val = new FieldText("val",filed_options);
	options.fields.val.getValidator().setRequired(true);
	
				
	
	var filed_options = {};
	filed_options.primaryKey = false;	
	filed_options.defValue = true;
	filed_options.alias = 'Дата обновения';
	filed_options.autoInc = false;	
	
	options.fields.date_time = new FieldDateTimeTZ("date_time",filed_options);
	options.fields.date_time.getValidator().setRequired(true);
	
									
		SupplierItemFeatureVal_Model.superclass.constructor.call(this,id,options);
}
extend(SupplierItemFeatureVal_Model,ModelXML);

