package models

/**
 * Andrey Mikhalevich 16/12/21
 * This file is part of the OSBE framework
 *
 * THIS FILE IS GENERATED FROM TEMPLATE build/templates/models/Model.go.tmpl
 * ALL DIRECT MODIFICATIONS WILL BE LOST WITH THE NEXT BUILD PROCESS!!!
 */

//Controller method model
import (
	"reflect"
	
	"github.com/dronm/gobizap/model"
	"github.com/dronm/gobizap/fields"
)

type ManufacturerBrand_complete_argv struct {
	Argv *ManufacturerBrand_complete `json:"argv"`	
}

//Exported model metadata
var ManufacturerBrand_complete_md fields.FieldCollection

func ManufacturerBrand_complete_Model_init() {	
	ManufacturerBrand_complete_md = fields.GenModelMD(reflect.ValueOf(ManufacturerBrand_complete{}))
}

//
type ManufacturerBrand_complete struct {
	/*Count fields.ValInt `json:"count" default:10`	
	Ic fields.ValInt `json:"ic" default:1 minValue:0 maxValue:1`
	Mid fields.ValInt `json:"mid" default:1 minValue:0 maxValue:1`
	Ord_directs fields.ValText `json:"ord_directs" length:500`
	Field_sep fields.ValText `json:"field_sep" length:2`
	*/
	model.Complete_Model
	Name fields.ValText `json:"name" matchField:"true" required:"true"`
}
