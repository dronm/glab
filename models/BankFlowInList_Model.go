package models

/**
 * Andrey Mikhalevich 15/12/21
 * This file is part of the OSBE framework
 *
 * THIS FILE IS GENERATED FROM TEMPLATE build/templates/models/Model.go.tmpl
 * ALL DIRECT MODIFICATIONS WILL BE LOST WITH THE NEXT BUILD PROCESS!!!
 */

import (
	"reflect"	
		
	"github.com/dronm/gobizap/fields"
	"github.com/dronm/gobizap/model"
)

type BankFlowInList struct {
	Id fields.ValInt `json:"id" primaryKey:"true" autoInc:"true"`
	Bank_account_id fields.ValInt `json:"bank_account_id"`
	Bank_accounts_ref fields.ValJSON `json:"bank_accounts_ref"`
	Firm_id fields.ValInt `json:"firm_id"`
	Firms_ref fields.ValJSON `json:"firms_ref"`
	Date_time fields.ValDateTimeTZ `json:"date_time" alias:"Период" defOrder:"DESC"`
	Uploaded_date_time fields.ValDateTimeTZ `json:"uploaded_date_time" alias:"Дата загрузки"`
	Client_descr fields.ValText `json:"client_descr" alias:"Корреспондент"`
	Pay_comment fields.ValText `json:"pay_comment" alias:"Назначение платежа"`
	Total fields.ValFloat `json:"total"`
	Pp_num fields.ValText `json:"pp_num" alias:"Номер платежносго поручения"`
}

func (o *BankFlowInList) SetNull() {
	o.Id.SetNull()
	o.Bank_account_id.SetNull()
	o.Bank_accounts_ref.SetNull()
	o.Firm_id.SetNull()
	o.Firms_ref.SetNull()
	o.Date_time.SetNull()
	o.Uploaded_date_time.SetNull()
	o.Client_descr.SetNull()
	o.Pay_comment.SetNull()
	o.Total.SetNull()
	o.Pp_num.SetNull()
}

func NewModelMD_BankFlowInList() *model.ModelMD{
	return &model.ModelMD{Fields: fields.GenModelMD(reflect.ValueOf(BankFlowInList{})),
		ID: "BankFlowInList_Model",
		Relation: "bank_flow_in_list",
		AggFunctions: []*model.AggFunction{
			&model.AggFunction{Alias: "total_total", Expr: "sum(total)"},
&model.AggFunction{Alias: "totalCount", Expr: "count(*)"},
		},
	}
}