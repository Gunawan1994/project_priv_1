/* eslint-disable no-script-url,jsx-a11y/anchor-is-valid */
import React from "react";
import { useLocation } from "react-router";
import { NavLink } from "react-router-dom";
import SVG from "react-inlinesvg";
import { toAbsoluteUrl, checkIsActive } from "../../../../_helpers";

export function HeaderMenu({ layoutProps }) {
  const location = useLocation();
  const getMenuItemActive = (url) => {
    return checkIsActive(location, url) ? "menu-item-active" : "";
  };

  return (
    <div
      id="kt_header_menu"
      className={`header-menu header-menu-mobile ${layoutProps.ktMenuClasses}`}
      {...layoutProps.headerMenuAttributes}
    >
      {/*begin::Header Nav*/}
      <ul className={`menu-nav ${layoutProps.ulClasses}`}>
        {/*begin::1 Level*/}
        <li
          className={`menu-item menu-item-rel ${getMenuItemActive(
            "/dashboard"
          )}`}
        >
          <NavLink className="menu-link" to="/dashboard">
            <span className="menu-text">Dashboard</span>
            {layoutProps.rootArrowEnabled && <i className="menu-arrow" />}
          </NavLink>
        </li>
        {/*end::1 Level*/}

        {/*Classic submenu*/}
        {/*begin::1 Level*/}
        <li
          data-menu-toggle={layoutProps.menuDesktopToggle}
          aria-haspopup="true"
          className={`menu-item menu-item-submenu menu-item-rel ${getMenuItemActive(
            "/google-material"
          )}`}
        >
          <NavLink className="menu-link menu-toggle" to="/google-material">
            <span className="menu-text">General</span>
            <i className="menu-arrow"></i>
          </NavLink>
          <div className="menu-submenu menu-submenu-classic menu-submenu-left">
            <ul className="menu-subnav">
              {/*begin::2 Level*/}
              <li
                className={`menu-item menu-item-submenu ${getMenuItemActive(
                  "/google-material/inputs"
                )}`}
                data-menu-toggle="hover"
                aria-haspopup="true"
              >
                <NavLink
                  className="menu-link menu-toggle"
                  to="/google-material/inputs"
                >
                  <span className="svg-icon menu-icon">
                    <SVG
                      src={toAbsoluteUrl(
                        "/media/svg/icons/Design/PenAndRuller.svg"
                      )}
                    />
                  </span>
                  <span className="menu-text">Landing Page</span>
                  <i className="menu-arrow" />
                </NavLink>
                <div
                  className={`menu-submenu menu-submenu-classic menu-submenu-right`}
                >
                  <ul className="menu-subnav">
                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/autocomplete"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/autocomplete"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Video</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/buttons"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/buttons"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Penjelasan Singkat</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/checkboxes"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/checkboxes"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Kategori Penelitian</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/pickers"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/pickers"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">
                          Sub Kategori Penelitian
                        </span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/radio-buttons"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/radio-buttons"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Timeline</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/selects"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/selects"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Juri</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/switches"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/switches"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Dokumentasi</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/text-fields"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/text-fields"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Kontak</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/transfer-list"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/transfer-list"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Kontak Respon</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}
                  </ul>
                </div>
              </li>
              {/*end::2 Level*/}

              {/*begin::2 Level*/}
              <li
                className={`menu-item menu-item-submenu ${getMenuItemActive(
                  "/google-material/navigation"
                )}`}
                data-menu-toggle="hover"
                aria-haspopup="true"
              >
                <NavLink
                  className="menu-link menu-toggle"
                  to="/google-material/navigation"
                >
                  <span className="svg-icon menu-icon">
                    <SVG
                      src={toAbsoluteUrl(
                        "/media/svg/icons/Navigation/Arrow-from-left.svg"
                      )}
                    />
                  </span>
                  <span className="menu-text">Info Page</span>
                </NavLink>
              </li>
              {/*end::2 Level*/}
            </ul>
          </div>
        </li>
        {/*end::1 Level*/}
        {/*begin::1 Level*/}
        <li
          data-menu-toggle={layoutProps.menuDesktopToggle}
          aria-haspopup="true"
          className={`menu-item menu-item-submenu menu-item-rel ${getMenuItemActive(
            "/google-material"
          )}`}
        >
          <NavLink className="menu-link menu-toggle" to="/google-material">
            <span className="menu-text">Terms</span>
            <i className="menu-arrow"></i>
          </NavLink>
          <div className="menu-submenu menu-submenu-classic menu-submenu-left">
            <ul className="menu-subnav">
              {/*begin::2 Level*/}
              <li
                className={`menu-item menu-item-submenu ${getMenuItemActive(
                  "/google-material/inputs"
                )}`}
                data-menu-toggle="hover"
                aria-haspopup="true"
              >
                <NavLink
                  className="menu-link menu-toggle"
                  to="/google-material/inputs"
                >
                  <span className="svg-icon menu-icon">
                    <SVG
                      src={toAbsoluteUrl(
                        "/media/svg/icons/Design/PenAndRuller.svg"
                      )}
                    />
                  </span>
                  <span className="menu-text">Landing Page</span>
                  <i className="menu-arrow" />
                </NavLink>
                <div
                  className={`menu-submenu menu-submenu-classic menu-submenu-right`}
                >
                  <ul className="menu-subnav">
                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/autocomplete"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/autocomplete"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Video</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/buttons"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/buttons"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Penjelasan Singkat</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/checkboxes"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/checkboxes"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Kategori Penelitian</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/pickers"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/pickers"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">
                          Sub Kategori Penelitian
                        </span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/radio-buttons"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/radio-buttons"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Timeline</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/selects"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/selects"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Juri</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/switches"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/switches"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Dokumentasi</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/text-fields"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/text-fields"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Kontak</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/transfer-list"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/transfer-list"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Kontak Respon</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}
                  </ul>
                </div>
              </li>
              {/*end::2 Level*/}

              {/*begin::2 Level*/}
              <li
                className={`menu-item menu-item-submenu ${getMenuItemActive(
                  "/google-material/navigation"
                )}`}
                data-menu-toggle="hover"
                aria-haspopup="true"
              >
                <NavLink
                  className="menu-link menu-toggle"
                  to="/google-material/navigation"
                >
                  <span className="svg-icon menu-icon">
                    <SVG
                      src={toAbsoluteUrl(
                        "/media/svg/icons/Navigation/Arrow-from-left.svg"
                      )}
                    />
                  </span>
                  <span className="menu-text">Info Page</span>
                </NavLink>
              </li>
              {/*end::2 Level*/}
            </ul>
          </div>
        </li>
        {/*end::1 Level*/}
        {/*begin::1 Level*/}
        <li
          data-menu-toggle={layoutProps.menuDesktopToggle}
          aria-haspopup="true"
          className={`menu-item menu-item-submenu menu-item-rel ${getMenuItemActive(
            "/google-material"
          )}`}
        >
          <NavLink className="menu-link menu-toggle" to="/google-material">
            <span className="menu-text">Event</span>
            <i className="menu-arrow"></i>
          </NavLink>
          <div className="menu-submenu menu-submenu-classic menu-submenu-left">
            <ul className="menu-subnav">
              {/*begin::2 Level*/}
              <li
                className={`menu-item menu-item-submenu ${getMenuItemActive(
                  "/google-material/inputs"
                )}`}
                data-menu-toggle="hover"
                aria-haspopup="true"
              >
                <NavLink
                  className="menu-link menu-toggle"
                  to="/google-material/inputs"
                >
                  <span className="svg-icon menu-icon">
                    <SVG
                      src={toAbsoluteUrl(
                        "/media/svg/icons/Design/PenAndRuller.svg"
                      )}
                    />
                  </span>
                  <span className="menu-text">Landing Page</span>
                  <i className="menu-arrow" />
                </NavLink>
                <div
                  className={`menu-submenu menu-submenu-classic menu-submenu-right`}
                >
                  <ul className="menu-subnav">
                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/autocomplete"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/autocomplete"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Video</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/buttons"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/buttons"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Penjelasan Singkat</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/checkboxes"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/checkboxes"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Kategori Penelitian</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/pickers"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/pickers"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">
                          Sub Kategori Penelitian
                        </span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/radio-buttons"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/radio-buttons"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Timeline</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/selects"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/selects"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Juri</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/switches"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/switches"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Dokumentasi</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/text-fields"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/text-fields"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Kontak</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/transfer-list"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/transfer-list"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Kontak Respon</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}
                  </ul>
                </div>
              </li>
              {/*end::2 Level*/}

              {/*begin::2 Level*/}
              <li
                className={`menu-item menu-item-submenu ${getMenuItemActive(
                  "/google-material/navigation"
                )}`}
                data-menu-toggle="hover"
                aria-haspopup="true"
              >
                <NavLink
                  className="menu-link menu-toggle"
                  to="/google-material/navigation"
                >
                  <span className="svg-icon menu-icon">
                    <SVG
                      src={toAbsoluteUrl(
                        "/media/svg/icons/Navigation/Arrow-from-left.svg"
                      )}
                    />
                  </span>
                  <span className="menu-text">Info Page</span>
                </NavLink>
              </li>
              {/*end::2 Level*/}
            </ul>
          </div>
        </li>
        {/*end::1 Level*/}
        {/*begin::1 Level*/}
        <li
          data-menu-toggle={layoutProps.menuDesktopToggle}
          aria-haspopup="true"
          className={`menu-item menu-item-submenu menu-item-rel ${getMenuItemActive(
            "/google-material"
          )}`}
        >
          <NavLink className="menu-link menu-toggle" to="/google-material">
            <span className="menu-text">Announcement</span>
            <i className="menu-arrow"></i>
          </NavLink>
          <div className="menu-submenu menu-submenu-classic menu-submenu-left">
            <ul className="menu-subnav">
              {/*begin::2 Level*/}
              <li
                className={`menu-item menu-item-submenu ${getMenuItemActive(
                  "/google-material/inputs"
                )}`}
                data-menu-toggle="hover"
                aria-haspopup="true"
              >
                <NavLink
                  className="menu-link menu-toggle"
                  to="/google-material/inputs"
                >
                  <span className="svg-icon menu-icon">
                    <SVG
                      src={toAbsoluteUrl(
                        "/media/svg/icons/Design/PenAndRuller.svg"
                      )}
                    />
                  </span>
                  <span className="menu-text">Landing Page</span>
                  <i className="menu-arrow" />
                </NavLink>
                <div
                  className={`menu-submenu menu-submenu-classic menu-submenu-right`}
                >
                  <ul className="menu-subnav">
                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/autocomplete"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/autocomplete"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Video</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/buttons"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/buttons"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Penjelasan Singkat</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/checkboxes"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/checkboxes"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Kategori Penelitian</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/pickers"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/pickers"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">
                          Sub Kategori Penelitian
                        </span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/radio-buttons"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/radio-buttons"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Timeline</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/selects"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/selects"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Juri</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/switches"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/switches"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Dokumentasi</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/text-fields"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/text-fields"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Kontak</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/transfer-list"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/transfer-list"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Kontak Respon</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}
                  </ul>
                </div>
              </li>
              {/*end::2 Level*/}

              {/*begin::2 Level*/}
              <li
                className={`menu-item menu-item-submenu ${getMenuItemActive(
                  "/google-material/navigation"
                )}`}
                data-menu-toggle="hover"
                aria-haspopup="true"
              >
                <NavLink
                  className="menu-link menu-toggle"
                  to="/google-material/navigation"
                >
                  <span className="svg-icon menu-icon">
                    <SVG
                      src={toAbsoluteUrl(
                        "/media/svg/icons/Navigation/Arrow-from-left.svg"
                      )}
                    />
                  </span>
                  <span className="menu-text">Info Page</span>
                </NavLink>
              </li>
              {/*end::2 Level*/}
            </ul>
          </div>
        </li>
        {/*end::1 Level*/}
        {/*begin::1 Level*/}
        <li
          data-menu-toggle={layoutProps.menuDesktopToggle}
          aria-haspopup="true"
          className={`menu-item menu-item-submenu menu-item-rel ${getMenuItemActive(
            "/google-material"
          )}`}
        >
          <NavLink className="menu-link menu-toggle" to="/google-material">
            <span className="menu-text">Access</span>
            <i className="menu-arrow"></i>
          </NavLink>
          <div className="menu-submenu menu-submenu-classic menu-submenu-left">
            <ul className="menu-subnav">
              {/*begin::2 Level*/}
              <li
                className={`menu-item menu-item-submenu ${getMenuItemActive(
                  "/google-material/inputs"
                )}`}
                data-menu-toggle="hover"
                aria-haspopup="true"
              >
                <NavLink
                  className="menu-link menu-toggle"
                  to="/google-material/inputs"
                >
                  <span className="svg-icon menu-icon">
                    <SVG
                      src={toAbsoluteUrl(
                        "/media/svg/icons/Design/PenAndRuller.svg"
                      )}
                    />
                  </span>
                  <span className="menu-text">Landing Page</span>
                  <i className="menu-arrow" />
                </NavLink>
                <div
                  className={`menu-submenu menu-submenu-classic menu-submenu-right`}
                >
                  <ul className="menu-subnav">
                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/autocomplete"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/autocomplete"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Video</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/buttons"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/buttons"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Penjelasan Singkat</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/checkboxes"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/checkboxes"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Kategori Penelitian</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/pickers"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/pickers"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">
                          Sub Kategori Penelitian
                        </span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/radio-buttons"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/radio-buttons"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Timeline</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/selects"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/selects"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Juri</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/switches"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/switches"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Dokumentasi</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/text-fields"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/text-fields"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Kontak</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}

                    {/*begin::3 Level*/}
                    <li
                      className={`menu-item ${getMenuItemActive(
                        "/google-material/inputs/transfer-list"
                      )}`}
                    >
                      <NavLink
                        className="menu-link"
                        to="/google-material/inputs/transfer-list"
                      >
                        <i className="menu-bullet menu-bullet-dot">
                          <span />
                        </i>
                        <span className="menu-text">Kontak Respon</span>
                      </NavLink>
                    </li>
                    {/*end::3 Level*/}
                  </ul>
                </div>
              </li>
              {/*end::2 Level*/}

              {/*begin::2 Level*/}
              <li
                className={`menu-item menu-item-submenu ${getMenuItemActive(
                  "/google-material/navigation"
                )}`}
                data-menu-toggle="hover"
                aria-haspopup="true"
              >
                <NavLink
                  className="menu-link menu-toggle"
                  to="/google-material/navigation"
                >
                  <span className="svg-icon menu-icon">
                    <SVG
                      src={toAbsoluteUrl(
                        "/media/svg/icons/Navigation/Arrow-from-left.svg"
                      )}
                    />
                  </span>
                  <span className="menu-text">Info Page</span>
                </NavLink>
              </li>
              {/*end::2 Level*/}
            </ul>
          </div>
        </li>
        {/*end::1 Level*/}
      </ul>
      {/*end::Header Nav*/}
    </div>
  );
}
