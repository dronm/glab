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

type MainMenuContent struct {
	Id fields.ValInt `json:"id" primaryKey:"true" autoInc:"true"`
	Descr fields.ValText `json:"descr"`
	Viewid fields.ValInt `json:"viewid"`
	Viewdescr fields.ValText `json:"viewdescr"`
	Default fields.ValBool `json:"default"`
	Glyphclass fields.ValText `json:"glyphclass"`
}

func (o *MainMenuContent) SetNull() {
	o.Id.SetNull()
	o.Descr.SetNull()
	o.Viewid.SetNull()
	o.Viewdescr.SetNull()
	o.Default.SetNull()
	o.Glyphclass.SetNull()
}

func NewModelMD_MainMenuContent() *model.ModelMD{
	return &model.ModelMD{Fields: fields.GenModelMD(reflect.ValueOf(MainMenuContent{})),
		ID: "MainMenuContent_Model",
		Relation: "",
		AggFunctions: []*model.AggFunction{
			&model.AggFunction{Alias: "totalCount", Expr: "count(*)"},
		},
	}
}