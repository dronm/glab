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

function MailTemplate_Model(options){
	var id = 'MailTemplate_Model';
	options = options || {};
	
	options.fields = {};
	
			
				
			
				
	
	var filed_options = {};
	filed_options.primaryKey = true;	
	
	filed_options.autoInc = true;	
	
	options.fields.id = new FieldInt("id",filed_options);
	
				
	
	var filed_options = {};
	filed_options.primaryKey = false;	
	filed_options.alias = 'Тип email';
	filed_options.autoInc = false;	
	
	options.fields.mail_type = new FieldEnum("mail_type",filed_options);
	filed_options.enumValues = 'password_recover';
	options.fields.mail_type.getValidator().setRequired(true);
	
				
	
	var filed_options = {};
	filed_options.primaryKey = false;	
	filed_options.alias = 'Шаблон';
	filed_options.autoInc = false;	
	
	options.fields.template = new FieldText("template",filed_options);
	options.fields.template.getValidator().setRequired(true);
	
				
	
	var filed_options = {};
	filed_options.primaryKey = false;	
	filed_options.alias = 'Комментарий';
	filed_options.autoInc = false;	
	
	options.fields.comment_text = new FieldText("comment_text",filed_options);
	options.fields.comment_text.getValidator().setRequired(true);
	
				
	
	var filed_options = {};
	filed_options.primaryKey = false;	
	filed_options.alias = 'Тема';
	filed_options.autoInc = false;	
	
	options.fields.mes_subject = new FieldText("mes_subject",filed_options);
	options.fields.mes_subject.getValidator().setRequired(true);
	
				
	
	var filed_options = {};
	filed_options.primaryKey = false;	
	filed_options.alias = 'Поля';
	filed_options.autoInc = false;	
	
	options.fields.fields = new FieldJSON("fields",filed_options);
	options.fields.fields.getValidator().setRequired(true);
	
			
		MailTemplate_Model.superclass.constructor.call(this,id,options);
}
extend(MailTemplate_Model,ModelXML);

