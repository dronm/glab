package controllers

/**
 * Andrey Mikhalevich 15/12/21
 * This file is part of the OSBE framework
 *
 * THIS FILE IS GENERATED FROM TEMPLATE build/templates/controllers/Controller.go.tmpl
 * ALL DIRECT MODIFICATIONS WILL BE LOST WITH THE NEXT BUILD PROCESS!!!
 *
 * This file contains method descriptions only.
 * Controller implimentation is in Item_ControllerImp.go file
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
type Item_Controller struct {
	gobizap.Base_Controller
}

func NewController_Item() *Item_Controller{
	c := &Item_Controller{gobizap.Base_Controller{ID: "Item", PublicMethods: make(gobizap.PublicMethodCollection)}}	
	keys_fields := fields.GenModelMD(reflect.ValueOf(models.Item_keys{}))
	
	//************************** method insert **********************************
	c.PublicMethods["insert"] = &Item_Controller_insert{
		gobizap.Base_PublicMethod{
			ID: "insert",
			Fields: fields.GenModelMD(reflect.ValueOf(models.Item{})),
			EventList: gobizap.PublicMethodEventList{"Item.insert"},
		},
	}
	
	//************************** method delete *************************************
	c.PublicMethods["delete"] = &Item_Controller_delete{
		gobizap.Base_PublicMethod{
			ID: "delete",
			Fields: keys_fields,
			EventList: gobizap.PublicMethodEventList{"Item.delete"},
		},
	}
	
	//************************** method update *************************************
	c.PublicMethods["update"] = &Item_Controller_update{
		gobizap.Base_PublicMethod{
			ID: "update",
			Fields: fields.GenModelMD(reflect.ValueOf(models.Item_old_keys{})),
			EventList: gobizap.PublicMethodEventList{"Item.update"},
		},
	}
	
	//************************** method get_object *************************************
	c.PublicMethods["get_object"] = &Item_Controller_get_object{
		gobizap.Base_PublicMethod{
			ID: "get_object",
			Fields: keys_fields,
		},
	}
	
	//************************** method get_list *************************************
	c.PublicMethods["get_list"] = &Item_Controller_get_list{
		gobizap.Base_PublicMethod{
			ID: "get_list",
			Fields: model.Cond_Model_fields,
		},
	}
	
	//************************** method set_feature *************************************
	c.PublicMethods["set_feature"] = &Item_Controller_set_feature{
		gobizap.Base_PublicMethod{
			ID: "set_feature",
			Fields: fields.GenModelMD(reflect.ValueOf(models.Item_set_feature{})),
		},
	}

	//************************** method get_features_filter_list *************************************
	c.PublicMethods["get_features_filter_list"] = &Item_Controller_get_features_filter_list{
		gobizap.Base_PublicMethod{
			ID: "get_features_filter_list",
		},
	}
			
	//************************** method complete *************************************
	c.PublicMethods["complete"] = &Item_Controller_complete{
		gobizap.Base_PublicMethod{
			ID: "complete",
			Fields: fields.GenModelMD(reflect.ValueOf(models.Item_complete{})),
		},
	}
	
	return c
}

type Item_Controller_keys_argv struct {
	Argv models.Item_keys `json:"argv"`	
}

//************************* INSERT **********************************************
//Public method: insert
type Item_Controller_insert struct {
	gobizap.Base_PublicMethod
}

//Public method Unmarshal to structure
func (pm *Item_Controller_insert) Unmarshal(payload []byte) (reflect.Value, error) {
	var res reflect.Value
	argv := &models.Item_argv{}
		
	if err := json.Unmarshal(payload, argv); err != nil {
		return res, err
	}
	res = reflect.ValueOf(&argv.Argv).Elem()	
	return res, nil
}

//************************* DELETE **********************************************
type Item_Controller_delete struct {
	gobizap.Base_PublicMethod
}

//Public method Unmarshal to structure
func (pm *Item_Controller_delete) Unmarshal(payload []byte) (reflect.Value, error) {
	var res reflect.Value
	argv := &models.Item_keys_argv{}
		
	if err := json.Unmarshal(payload, argv); err != nil {
		return res, err
	}	
	res = reflect.ValueOf(&argv.Argv).Elem()	
	return res, nil
}

//************************* GET OBJECT **********************************************
type Item_Controller_get_object struct {
	gobizap.Base_PublicMethod
}

//Public method Unmarshal to structure
func (pm *Item_Controller_get_object) Unmarshal(payload []byte) (reflect.Value, error) {
	var res reflect.Value
	argv := &models.Item_keys_argv{}
		
	if err := json.Unmarshal(payload, argv); err != nil {
		return res, err
	}	
	res = reflect.ValueOf(&argv.Argv).Elem()	
	return res, nil
}

//************************* GET LIST **********************************************
//Public method: get_list
type Item_Controller_get_list struct {
	gobizap.Base_PublicMethod
}
//Public method Unmarshal to structure
func (pm *Item_Controller_get_list) Unmarshal(payload []byte) (reflect.Value, error) {
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
type Item_Controller_update struct {
	gobizap.Base_PublicMethod
}
//Public method Unmarshal to structure
func (pm *Item_Controller_update) Unmarshal(payload []byte) (reflect.Value, error) {
	var res reflect.Value
	argv := &models.Item_old_keys_argv{}
		
	if err := json.Unmarshal(payload, argv); err != nil {
		return res, err
	}	
	res = reflect.ValueOf(&argv.Argv).Elem()	
	return res, nil
}

//************************* set_feature **********************************************
//Public method: set_feature
type Item_Controller_set_feature struct {
	gobizap.Base_PublicMethod
}
//Public method Unmarshal to structure
func (pm *Item_Controller_set_feature) Unmarshal(payload []byte) (reflect.Value, error) {
	var res reflect.Value
	argv := &models.Item_set_feature_argv{}
	if err := json.Unmarshal(payload, argv); err != nil {
		return res, err
	}	
	res = reflect.ValueOf(&argv.Argv).Elem()	
	return res, nil
}

//************************* get_features_filter_list **********************************************
//Public method: get_features_filter_list
type Item_Controller_get_features_filter_list struct {
	gobizap.Base_PublicMethod
}
//Public method Unmarshal to structure
func (pm *Item_Controller_get_features_filter_list) Unmarshal(payload []byte) (reflect.Value, error) {
	res := reflect.Value(reflect.ValueOf(nil))
	return res, nil
}

//************************* complete **********************************************
//Public method: get_features_filter_list
type Item_Controller_complete struct {
	gobizap.Base_PublicMethod
}
//Public method Unmarshal to structure
func (pm *Item_Controller_complete) Unmarshal(payload []byte) (reflect.Value, error) {
	var res reflect.Value
	argv := &models.Item_complete_argv{}
	if err := json.Unmarshal(payload, argv); err != nil {
		return res, err
	}	
	res = reflect.ValueOf(&argv.Argv).Elem()	
	return res, nil
}

