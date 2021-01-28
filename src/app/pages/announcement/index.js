import React from "react";
import { Redirect, Switch } from "react-router-dom";
import { ContentRoute } from "../../../_metronic/layout";
import{CreateAnnWidget} from "./CreateAnnWidget";
import{StatusAnnWidget} from "./StatusAnnWidget";

export default function index() {
  return (
    <Switch>
      <Redirect
        exact={true}
        from="/annoncement"
        to="/announcement/createAnn"
      />
	  <ContentRoute
        path="/announcement/createAnn" 
        component={CreateAnnWidget} 
      />
	  <ContentRoute
        path="/announcement/statusAnn" 
        component={StatusAnnWidget} 
      />
    </Switch>
  );
}
