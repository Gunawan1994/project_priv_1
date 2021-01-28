import React, { Suspense, lazy } from "react";
import { Redirect, Switch, Route } from "react-router-dom";
import { LayoutSplashScreen, ContentRoute } from "../_metronic/layout";
import { MyPage } from "./pages/MyPage";
import { DashboardPage } from "./pages/DashboardPage";
import { InfoPage } from "./pages/infopage"
import { ListTermWidget } from "./pages/terms/ListTermWidget"; 

const UserProfilepage = lazy(() =>
  import("./modules/UserProfile/UserProfilePage")
);

const LandingPage = lazy(() =>
  import("./pages/landing-page")
);

const EventPages = lazy(()=>
  import("./pages/event")
);

const AnnouncementPage = lazy(() =>
  import("./pages/announcement/")
);

const UsersPage = lazy(() =>
  import("./pages/users/")
);

export default function BasePage() {
  // useEffect(() => {
  //   console.log('Base page');
  // }, []) // [] - is required if you need only one call
  // https://reactjs.org/docs/hooks-reference.html#useeffect

  return (
    <Suspense fallback={<LayoutSplashScreen />}>
      <Switch>
        {
          /* Redirect from root URL to /dashboard. */
          <Redirect exact from="/" to="/dashboard" />
        }
        <ContentRoute path="/dashboard" component={DashboardPage} />
        <Route path="/landing-page" component={LandingPage} />
        <Route path="/event" component={EventPages} />
        <ContentRoute path="/my-page" component={MyPage} />
        <Route path="/announcement" component={AnnouncementPage} />
        <Route path="/terms" component={ListTermWidget} />
        <Route path="/users" component={UsersPage} />
        <Route path="/user-profile" component={UserProfilepage} />
        <ContentRoute path="/infopage" component={InfoPage} />
        <Redirect to="error" />
      </Switch>
    </Suspense>
  );
}
