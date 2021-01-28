import React, { useMemo } from "react";
import objectPath from "object-path";
import { useHtmlClassService } from "../../_core/MetronicLayout";
import { QuickActionsDropdown } from "../extras/dropdowns/QuickActionsDropdown";
import { QuickUserToggler } from "../extras/QuickUserToggler";

export function Topbar() {
  const uiService = useHtmlClassService();
  const layoutProps = useMemo(() => {
    return {
      viewQuickActionsDisplay: objectPath.get(
        uiService.config,
        "extras.quick-actions.display"
      ),
      viewUserDisplay: objectPath.get(uiService.config, "extras.user.display"),
    };
  }, [uiService]);

  return (
    <div className="topbar">
      {layoutProps.viewQuickActionsDisplay && <QuickActionsDropdown />}
      {layoutProps.viewUserDisplay && <QuickUserToggler />}
    </div>
  );
}
