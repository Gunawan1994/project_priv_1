import React from "react";
import { Redirect, Switch } from "react-router-dom";
import { ContentRoute } from "../../../_metronic/layout";
import { ListParticipant } from "./participant/list";
import { ActivityParticipant } from "./participant/activity";
import { Assesment } from "./jury/assesment";
import { JuryActivity } from "./jury/activity";
import { JuryList } from "./jury/list";
import { CreateWebinar } from "./webinar/create";
import { WebinarList } from "./webinar/list";

export default function index() {
    return (
        <Switch>
            <Redirect exact={true} from="/event" to="/event/participant/list" />
            <ContentRoute path="/event/participant/list" component={ListParticipant} />
            <ContentRoute path="/event/participant/activity" component={ActivityParticipant} />
            <ContentRoute path="/event/jury/assesment" component={Assesment} />
            <ContentRoute path="/event/jury/list" component={JuryList} />
            <ContentRoute path="/event/jury/activity" component={JuryActivity} />
            <ContentRoute path="/event/webinar/create" component={CreateWebinar} />
            <ContentRoute path="/event/webinar/list" component={WebinarList} />
        </Switch>
    )
}