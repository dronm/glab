package controllers

/**
 * Andrey Mikhalevich 15/12/21
 * This file is part of the OSBE framework
 *
 * THIS FILE IS GENERATED FROM TEMPLATE build/templates/controllers/Controller.go.tmpl
 * ALL DIRECT MODIFICATIONS WILL BE LOST WITH THE NEXT BUILD PROCESS!!!
 *
 * This file contains method descriptions only.
 * Controller implimentation is in AutoModel_ControllerImp.go file
 *
 */

import (
	"reflect"	
	"encoding/json"
	
	"glab/models"
	
	"github.com/dronm/gobizap"
	"github.com/dronm/gobizap/fields"
	"github.com/dronm/gobizap/model"
)

//Controller
type AutoModel_Controller struct {
	gobizap.Base_Controller
}

func NewController_AutoModel() *AutoModel_Controller{
	c := &AutoModel_Controller{gobizap.Base_Controller{ID: "AutoModel", PublicMethods: make(gobizap.PublicMethodCollection)}}	
	keys_fields := fields.GenModelMD(reflect.ValueOf(models.AutoModel_keys{}))
	
	//************************** method insert **********************************
	c.PublicMethods["insert"] = &AutoModel_Controller_insert{
		gobizap.Base_PublicMethod{
			ID: "insert",
			Fields: fields.GenModelMD(reflect.ValueOf(models.AutoModel{})),
			EventList: gobizap.PublicMethodEventList{"AutoModel.insert"},
		},
	}
	
	//************************** method delete *************************************
	c.PublicMethods["delete"] = &AutoModel_Controller_delete{
		gobizap.Base_PublicMethod{
			ID: "delete",
			Fields: keys_fields,
			EventList: gobizap.PublicMethodEventList{"AutoModel.delete"},
		},
	}
	
	//************************** method update *************************************
	c.PublicMethods["update"] = &AutoModel_Controller_update{
		gobizap.Base_PublicMethod{
			ID: "update",
			Fields: fields.GenModelMD(reflect.ValueOf(models.AutoModel_old_keys{})),
			EventList: gobizap.PublicMethodEventList{"AutoModel.update"},
		},
	}
	
	//************************** method get_object *************************************
	c.PublicMethods["get_object"] = &AutoModel_Controller_get_object{
		gobizap.Base_PublicMethod{
			ID: "get_object",
			Fields: keys_fields,
		},
	}
	
	//************************** method get_list *************************************
	c.PublicMethods["get_list"] = &AutoModel_Controller_get_list{
		gobizap.Base_PublicMethod{
			ID: "get_list",
			Fields: model.Cond_Model_fields,
		},
	}
	//************************** method complete *************************************
	c.PublicMethods["complete_for_make"] = &AutoModel_Controller_complete_for_make{
		gobizap.Base_PublicMethod{
			ID: "complete_for_make",
			Fields: fields.GenModelMD(reflect.ValueOf(models.AutoModel_complete_for_make{})),
		},
	}
	
	//************************** method get_all_years *************************************
	c.PublicMethods["get_all_years"] = &AutoModel_Controller_get_all_years{
		gobizap.Base_PublicMethod{
			ID: "get_all_years",
			Fields: fields.GenModelMD(reflect.ValueOf(models.AutoModel_get_all_years{})),
		},
	}
			
	
	return c
}

type AutoModel_Controller_keys_argv struct {
	Argv models.AutoModel_keys `json:"argv"`	
}

//************************* INSERT **********************************************
//Public method: insert
type AutoModel_Controller_insert struct {
	gobizap.Base_PublicMethod
}

//Public method Unmarshal to structure
func (pm *AutoModel_Controller_insert) Unmarshal(payload []byte) (reflect.Value, error) {
	var res reflect.Value
	argv := &models.AutoModel_argv{}
		
	if err := json.Unmarshal(payload, argv); err != nil {
		return res, err
	}
	res = reflect.ValueOf(&argv.Argv).Elem()	
	return res, nil
}

//************************* DELETE **********************************************
type AutoModel_Controller_delete struct {
	gobizap.Base_PublicMethod
}

//Public method Unmarshal to structure
func (pm *AutoModel_Controller_delete) Unmarshal(payload []byte) (reflect.Value, error) {
	var res reflect.Value
	argv := &models.AutoModel_keys_argv{}
		
	if err := json.Unmarshal(payload, argv); err != nil {
		return res, err
	}	
	res = reflect.ValueOf(&argv.Argv).Elem()	
	return res, nil
}

//************************* GET OBJECT **********************************************
type AutoModel_Controller_get_object struct {
	gobizap.Base_PublicMethod
}

//Public method Unmarshal to structure
func (pm *AutoModel_Controller_get_object) Unmarshal(payload []byte) (reflect.Value, error) {
	var res reflect.Value
	argv := &models.AutoModel_keys_argv{}
		
	if err := json.Unmarshal(payload, argv); err != nil {
		return res, err
	}	
	res = reflect.ValueOf(&argv.Argv).Elem()	
	return res, nil
}

//************************* GET LIST **********************************************
//Public method: get_list
type AutoModel_Controller_get_list struct {
	gobizap.Base_PublicMethod
}
//Public method Unmarshal to structure
func (pm *AutoModel_Controller_get_list) Unmarshal(payload []byte) (reflect.Value, error) {
	var res reflect.Value
	argv := &model.Controller_get_list_argv{}
		
	if err := json.Unmarshal(payload, argv); err != nil {
		return res, err
	}	
	res = reflect.ValueOf(&argv.Argv).Elem()	
	return res, nil
}

//************************* UPDATE **********************************************
//Public method: update
type AutoModel_Controller_update struct {
	gobizap.Base_PublicMethod
}
//Public method Unmarshal to structure
func (pm *AutoModel_Controller_update) Unmarshal(payload []byte) (reflect.Value, error) {
	var res reflect.Value
	argv := &models.AutoModel_old_keys_argv{}
		
	if err := json.Unmarshal(payload, argv); err != nil {
		return res, err
	}	
	res = reflect.ValueOf(&argv.Argv).Elem()	
	return res, nil
}

//************************** complete_for_make ********************************************************
//Public method: complete_for_make
type AutoModel_Controller_complete_for_make struct {
	gobizap.Base_PublicMethod
}
//Public method Unmarshal to structure
func (pm *AutoModel_Controller_complete_for_make) Unmarshal(payload []byte) (reflect.Value, error) {
	var res reflect.Value
	argv := &models.AutoModel_complete_for_make_argv{}
		
	if err := json.Unmarshal(payload, argv); err != nil {
		return res, err
	}	
	res = reflect.ValueOf(&argv.Argv).Elem()	
	return res, nil
}

//************************** get_all_years ********************************************************
//Public method: get_all_years
type AutoModel_Controller_get_all_years struct {
	gobizap.Base_PublicMethod
}
//Public method Unmarshal to structure
func (pm *AutoModel_Controller_get_all_years) Unmarshal(payload []byte) (reflect.Value, error) {
	var res reflect.Value
	argv := &models.AutoModel_get_all_years_argv{}
		
	if err := json.Unmarshal(payload, argv); err != nil {
		return res, err
	}	
	res = reflect.ValueOf(&argv.Argv).Elem()	
	return res, nil
}