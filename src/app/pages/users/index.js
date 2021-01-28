import React from "react";
import { Redirect, Switch } from "react-router-dom";
import { ContentRoute } from "../../../_metronic/layout";
import {AddUser } from "./AddUser";
import {ListUser} from "./ListUser";
import {ReadUser} from "./ReadUser";
import {addUserPhoto} from "./addUserPhoto";

export default function index() {
  return (
    <Switch>
      <Redirect
        exact={true}
        from="/users"
        to="/users/addUser"
      />
	  <ContentRoute
        path="/users/addUser"
        component={AddUser}
    />
	  <ContentRoute
        path="/users/listUser"
        component={ListUser} 
    />
    <ContentRoute
      path="/users/read/"
      component={ReadUser} 
    />
    <ContentRoute
      path="/users/addUserPhoto"
      component={addUserPhoto} 
    />
    </Switch>
  );
}
