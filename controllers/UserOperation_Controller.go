package controllers

/**
 * Andrey Mikhalevich 08/04/24
 * This file is part of the gobizap framework
 *
 * THIS FILE IS GENERATED FROM TEMPLATE build/templates/controllers/Controller.go.tmpl
 * ALL DIRECT MODIFICATIONS WILL BE LOST WITH THE NEXT BUILD PROCESS!!!
 *
 * This file contains method descriptions only.
 * Controller implimentation is in UserOperation_ControllerImp.go file
 *
 */

import (
	"reflect"	
	"encoding/json"
	
	"glab/models"
	
	"github.com/dronm/gobizap"
	"github.com/dronm/gobizap/fields"
	
)

//Controller
type UserOperation_Controller struct {
	gobizap.Base_Controller
}

func NewController_UserOperation() *UserOperation_Controller{
	c := &UserOperation_Controller{gobizap.Base_Controller{ID: "UserOperation", PublicMethods: make(gobizap.PublicMethodCollection)}}	
	keys_fields := fields.GenModelMD(reflect.ValueOf(models.UserOperation_keys{}))
	
	
	//************************** method delete *************************************
	c.PublicMethods["delete"] = &UserOperation_Controller_delete{
		gobizap.Base_PublicMethod{
			ID: "delete",
			Fields: keys_fields,
			EventList: gobizap.PublicMethodEventList{"UserOperation.delete"},
		},
	}
	
	
	//************************** method get_object *************************************
	c.PublicMethods["get_object"] = &UserOperation_Controller_get_object{
		gobizap.Base_PublicMethod{
			ID: "get_object",
			Fields: keys_fields,
		},
	}
	
	
			
	
	return c
}

type UserOperation_Controller_keys_argv struct {
	Argv models.UserOperation_keys `json:"argv"`	
}


//************************* DELETE **********************************************
type UserOperation_Controller_delete struct {
	gobizap.Base_PublicMethod
}

//Public method Unmarshal to structure
func (pm *UserOperation_Controller_delete) Unmarshal(payload []byte) (reflect.Value, error) {
	var res reflect.Value
	argv := &models.UserOperation_keys_argv{}
		
	if err := json.Unmarshal(payload, argv); err != nil {
		return res, err
	}	
	res = reflect.ValueOf(&argv.Argv).Elem()	
	return res, nil
}

//************************* GET OBJECT **********************************************
type UserOperation_Controller_get_object struct {
	gobizap.Base_PublicMethod
}

//Public method Unmarshal to structure
func (pm *UserOperation_Controller_get_object) Unmarshal(payload []byte) (reflect.Value, error) {
	var res reflect.Value
	argv := &models.UserOperation_keys_argv{}
		
	if err := json.Unmarshal(payload, argv); err != nil {
		return res, err
	}	
	res = reflect.ValueOf(&argv.Argv).Elem()	
	return res, nil
}


