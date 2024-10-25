/**
 * Andrey Mikhalevich 15/12/21
 * This file is part of the OSBE framework
 *
 * THIS FILE IS GENERATED FROM TEMPLATE build/templates/permissions/permissions.sql.tmpl
 * ALL DIRECT MODIFICATIONS WILL BE LOST WITH THE NEXT BUILD PROCESS!!!
 */

/*
-- If this is the first time you execute the script, uncomment these lines
-- to create table and insert row
CREATE TABLE IF NOT EXISTS permissions (
    rules json NOT NULL
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.permissions OWNER TO ;

INSERT INTO permissions VALUES ('{"admin":{}}');
*/

UPDATE permissions SET rules = '{
	"admin":{
		"Event":{
			"subscribe":true
			,"unsubscribe":true
			,"publish":true
		}
		,"Constant":{
			"set_value":true
			,"get_list":true
			,"get_object":true
			,"get_values":true
		}
		,"Enum":{
			"get_enum_list":true
		}
		,"MainMenuConstructor":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"MainMenuContent":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"View":{
			"get_list":true
			,"complete":true
			,"get_section_list":true
		}
		,"VariantStorage":{
			"insert":true
			,"upsert_filter_data":true
			,"upsert_col_visib_data":true
			,"upsert_col_order_data":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"get_filter_data":true
			,"get_col_visib_data":true
			,"get_col_order_data":true
		}
		,"About":{
			"get_object":true
		}
		,"Service":{
			"reload_config":true
			,"reload_version":true
		}
		,"User":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete":true
			,"get_profile":true
			,"reset_pwd":true
			,"login":true
			,"login_refresh":true
			,"logout":true
			,"logout_html":true
			,"download_photo":true
			,"delete_photo":true
			,"password_recover":true
		}
		,"Login":{
			"get_list":true
			,"get_object":true
			,"logout":true
		}
		,"LoginDevice":{
			"get_list":true
			,"switch_banned":true
		}
		,"Captcha":{
			"get":true
		}
		,"LoginDeviceBan":{
			"insert":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"TimeZoneLocale":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"Department":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete":true
		}
		,"Post":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete":true
		}
		,"Contact":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete":true
			,"upsert":true
		}
		,"EntityContact":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"ObjectModLog":{
			"get_list":true
			,"get_object":true
		}
		,"MailMessage":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"MailMessageAttachment":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"MailTemplate":{
			"insert":true
			,"update":true
			,"get_list":true
			,"get_object":true
		}
		,"Attachment":{
			"get_list":true
			,"get_object":true
			,"delete_file":true
			,"get_file":true
			,"add_file":true
		}
		,"AutoMake":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete":true
		}
		,"AutoModel":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete_for_make":true
			,"get_all_years":true
		}
		,"AutoModelGeneration":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete_for_model":true
			,"gen_next_id":true
		}
		,"AutoType":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete":true
		}
		,"AutoBodyType":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"AutoBodyDoor":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"AutoBody":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete_for_model_generation":true
			,"complete_for_model":true
		}
		,"ItemFolder":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete":true
		}
		,"ItemFeature":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete":true
		}
		,"ItemFeatureValueList":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"SupplierItemFeatureValueList":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"ItemFeatureGroup":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"ItemFeatureGroupItem":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"ItemFolderFeatureGroup":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"SupplierItemFolderFeatureGroup":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"Item":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete_item":true
			,"complete":true
			,"set_feature":true
			,"get_features_filter_list":true
		}
		,"Manufacturer":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete":true
		}
		,"ManufacturerBrand":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete":true
		}
		,"Supplier":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete":true
		}
		,"VehicleType":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete":true
		}
		,"ItemPriority":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete":true
		}
		,"PopularityType":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"SupplierItem":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"import":true
			,"set_feature":true
			,"get_features_filter_list":true
		}
		,"ItemSearch":{
			"get_object":true
			,"find_items":true
		}
		,"ImportItem":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"SupplierStore":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete_for_supplier":true
		}
		,"SupplierStoreValue":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"AutoPriceCategory":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"AutoToGlassMatchHead":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"AutoToGlassMatchEurocode":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"get_body_list":true
		}
		,"AutoToGlassMatchOption":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"get_conf_form":true
		}
		,"AutoModelGenerationBody":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"BankCard":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"Employee":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete":true
		}
		,"EmployeeStatus":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"PersonDocument":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"PersonDocumentType":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"CashLocation":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"FinExpenseType":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_item_list":true
			,"get_object":true
			,"complete":true
			,"verify_rule":true
		}
		,"CashFlowIn":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"get_report":true
		}
		,"CashIncomeSource":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"CashFlowOut":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete_comment":true
		}
		,"CashFlowTransfer":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"Firm":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"Bank":{
			"get_list":true
			,"get_object":true
			,"complete":true
		}
		,"BankAccount":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"BankFlowIn":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"import_from_bank":true
			,"get_report":true
			,"apply_rules":true
		}
		,"BankFlowOut":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"UserOperation":{
			"get_object":true
			,"delete":true
		}
	}
	,"accountant":{
		"Event":{
			"subscribe":true
			,"unsubscribe":true
			,"publish":true
		}
		,"Constant":{
			"set_value":true
			,"get_list":true
			,"get_object":true
			,"get_values":true
		}
		,"Enum":{
			"get_enum_list":true
		}
		,"MainMenuConstructor":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"MainMenuContent":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"View":{
			"get_list":true
			,"complete":true
			,"get_section_list":true
		}
		,"VariantStorage":{
			"insert":true
			,"upsert_filter_data":true
			,"upsert_col_visib_data":true
			,"upsert_col_order_data":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"get_filter_data":true
			,"get_col_visib_data":true
			,"get_col_order_data":true
		}
		,"About":{
			"get_object":true
		}
		,"Service":{
			"reload_config":true
			,"reload_version":true
		}
		,"User":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete":true
			,"get_profile":true
			,"reset_pwd":true
			,"login":true
			,"login_refresh":true
			,"logout":true
			,"logout_html":true
			,"download_photo":true
			,"delete_photo":true
			,"password_recover":true
		}
		,"Login":{
			"get_list":true
			,"get_object":true
			,"logout":true
		}
		,"LoginDevice":{
			"get_list":true
			,"switch_banned":true
		}
		,"Captcha":{
			"get":true
		}
		,"LoginDeviceBan":{
			"insert":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"TimeZoneLocale":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"Department":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete":true
		}
		,"Post":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete":true
		}
		,"Contact":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete":true
			,"upsert":true
		}
		,"EntityContact":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"ObjectModLog":{
			"get_list":true
			,"get_object":true
		}
		,"MailMessage":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"MailMessageAttachment":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"MailTemplate":{
			"insert":true
			,"update":true
			,"get_list":true
			,"get_object":true
		}
		,"Attachment":{
			"get_list":true
			,"get_object":true
			,"delete_file":true
			,"get_file":true
			,"add_file":true
		}
		,"AutoMake":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete":true
		}
		,"AutoModel":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete_for_make":true
			,"get_all_years":true
		}
		,"AutoModelGeneration":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete_for_model":true
			,"gen_next_id":true
		}
		,"AutoType":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete":true
		}
		,"AutoBodyType":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"AutoBodyDoor":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"AutoBody":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete_for_model_generation":true
			,"complete_for_model":true
		}
		,"ItemFolder":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete":true
		}
		,"ItemFeature":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete":true
		}
		,"ItemFeatureValueList":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"SupplierItemFeatureValueList":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"ItemFeatureGroup":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"ItemFeatureGroupItem":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"ItemFolderFeatureGroup":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"SupplierItemFolderFeatureGroup":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"Item":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete_item":true
			,"complete":true
			,"set_feature":true
			,"get_features_filter_list":true
		}
		,"Manufacturer":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete":true
		}
		,"ManufacturerBrand":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete":true
		}
		,"Supplier":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete":true
		}
		,"VehicleType":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete":true
		}
		,"ItemPriority":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete":true
		}
		,"PopularityType":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"SupplierItem":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"import":true
			,"set_feature":true
			,"get_features_filter_list":true
		}
		,"ItemSearch":{
			"get_object":true
			,"find_items":true
		}
		,"ImportItem":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"SupplierStore":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete_for_supplier":true
		}
		,"SupplierStoreValue":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"AutoPriceCategory":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"AutoToGlassMatchHead":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"AutoToGlassMatchEurocode":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"get_body_list":true
		}
		,"AutoToGlassMatchOption":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"get_conf_form":true
		}
		,"AutoModelGenerationBody":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"BankCard":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"Employee":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete":true
		}
		,"EmployeeStatus":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"PersonDocument":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"PersonDocumentType":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"CashLocation":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"FinExpenseType":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_item_list":true
			,"get_object":true
			,"complete":true
			,"verify_rule":true
		}
		,"CashFlowIn":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"get_report":true
		}
		,"CashIncomeSource":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"CashFlowOut":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"complete_comment":true
		}
		,"CashFlowTransfer":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"Firm":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"Bank":{
			"get_list":true
			,"get_object":true
			,"complete":true
		}
		,"BankAccount":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"BankFlowIn":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
			,"import_from_bank":true
			,"get_report":true
			,"apply_rules":true
		}
		,"BankFlowOut":{
			"insert":true
			,"update":true
			,"delete":true
			,"get_list":true
			,"get_object":true
		}
		,"UserOperation":{
			"get_object":true
			,"delete":true
		}
	}
	,"guest":{
		"User":{
			"login":true
		}
	}
}';
