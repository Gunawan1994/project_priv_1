/* eslint-disable jsx-a11y/role-supports-aria-props */
/* eslint-disable no-script-url,jsx-a11y/anchor-is-valid */
import React from "react";
import { useLocation } from "react-router";
import { NavLink } from "react-router-dom";
import SVG from "react-inlinesvg";
import { toAbsoluteUrl, checkIsActive } from "../../../../_helpers";

export function AsideMenuList({ layoutProps }) {
  const location = useLocation();
  const getMenuItemActive = (url, hasSubmenu = false) => {
    return checkIsActive(location, url)
      ? ` ${!hasSubmenu &&
      "menu-item-active"} menu-item-open menu-item-not-hightlighted`
      : "";
  };

  return (
    <>
      <ul className={`menu-nav ${layoutProps.ulClasses}`}>
        <li
          className={`menu-item ${getMenuItemActive("/dashboard", false)}`}
          aria-haspopup="true"
        >
          <NavLink className="menu-link" to="/dashboard">
            <span className="svg-icon menu-icon">
              <SVG src={toAbsoluteUrl("/media/svg/icons/Design/Layers.svg")} />
            </span>
            <span className="menu-text">Dashboard</span>
          </NavLink>
        </li>

        <li
          className={`menu-item menu-item-submenu ${getMenuItemActive("/landing-page", true)}`}
          aria-haspopup="true"
        >
          <NavLink className="menu-link menu-toggle" to="/landing-page">
            <span className="svg-icon menu-icon">
              <SVG src={toAbsoluteUrl("/media/svg/icons/Design/Layers.svg")} />
            </span>
            <span className="menu-text">Landing Page</span>
            <i className="menu-arrow" />
          </NavLink>

          <div className="menu-submenu ">
            <ul className="menu-subnav">
              <ul className="menu-subnav">
                <li
                  className={`menu-item ${getMenuItemActive(
                    "/landing-page/video", false
                  )}`}
                  aria-haspopup="true"
                >
                  <NavLink className="menu-link" to="/landing-page/video">
                    <i className="menu-bullet menu-bullet-dot">
                      <span />
                    </i>
                    <span className="menu-text">Video</span>
                  </NavLink>
                </li>

                <li
                  className={`menu-item ${getMenuItemActive(
                    "/landing-page/penjelasan-singkat", false
                  )}`}
                  aria-haspopup="true"
                >
                  <NavLink className="menu-link" to="/landing-page/penjelasan-singkat">
                    <i className="menu-bullet menu-bullet-dot">
                      <span />
                    </i>
                    <span className="menu-text">Penjelasan Singkat</span>
                  </NavLink>
                </li>

                <li
                  className={`menu-item ${getMenuItemActive(
                    "/landing-page/kategori-penelitian", false
                  )}`}
                  aria-haspopup="true"
                >
                  <NavLink className="menu-link" to="/landing-page/kategori-penelitian">
                    <i className="menu-bullet menu-bullet-dot">
                      <span />
                    </i>
                    <span className="menu-text">Kategori Penelitian</span>
                  </NavLink>
                </li>

                <li
                  className={`menu-item ${getMenuItemActive(
                    "/landing-page/sub-kategori-penelitian", false
                  )}`}
                  aria-haspopup="true"
                >
                  <NavLink className="menu-link" to="/landing-page/sub-kategori-penelitian">
                    <i className="menu-bullet menu-bullet-dot">
                      <span />
                    </i>
                    <span className="menu-text">Sub Kategori Penelitian</span>
                  </NavLink>
                </li>

                <li
                  className={`menu-item ${getMenuItemActive(
                    "/landing-page/timeline", false
                  )}`}
                  aria-haspopup="true"
                >
                  <NavLink className="menu-link" to="/landing-page/timeline">
                    <i className="menu-bullet menu-bullet-dot">
                      <span />
                    </i>
                    <span className="menu-text">Timeline</span>
                  </NavLink>
                </li>

                <li
                  className={`menu-item ${getMenuItemActive(
                    "/landing-page/juri", false
                  )}`}
                  aria-haspopup="true"
                >
                  <NavLink className="menu-link" to="/landing-page/juri">
                    <i className="menu-bullet menu-bullet-dot">
                      <span />
                    </i>
                    <span className="menu-text">Juri</span>
                  </NavLink>
                </li>

                <li
                  className={`menu-item ${getMenuItemActive(
                    "/landing-page/dokumentasi", false
                  )}`}
                  aria-haspopup="true"
                >
                  <NavLink className="menu-link" to="/landing-page/dokumentasi">
                    <i className="menu-bullet menu-bullet-dot">
                      <span />
                    </i>
                    <span className="menu-text">Dokumentasi</span>
                  </NavLink>
                </li>

                <li
                  className={`menu-item ${getMenuItemActive(
                    "/landing-page/kontak", false
                  )}`}
                  aria-haspopup="true"
                >
                  <NavLink className="menu-link" to="/landing-page/kontak">
                    <i className="menu-bullet menu-bullet-dot">
                      <span />
                    </i>
                    <span className="menu-text">Kontak</span>
                  </NavLink>
                </li>

                <li
                  className={`menu-item ${getMenuItemActive(
                    "/landing-page/kontak-respon", false
                  )}`}
                  aria-haspopup="true"
                >
                  <NavLink className="menu-link" to="/landing-page/kontak-respon">
                    <i className="menu-bullet menu-bullet-dot">
                      <span />
                    </i>
                    <span className="menu-text">Kontak Respon</span>
                  </NavLink>
                </li>
              </ul>
            </ul>
          </div>
        </li>

        <li
          className={`menu-item ${getMenuItemActive("/infopage", false)}`}
          aria-haspopup="true"
        >
          <NavLink className="menu-link" to="/infopage">
            <span className="svg-icon menu-icon">
              <SVG src={toAbsoluteUrl("/media/svg/icons/Design/Layers.svg")} />
            </span>
            <span className="menu-text">Info Page</span>
          </NavLink>
        </li>

        <li className="menu-section ">
          <h4 className="menu-text font-size-h4">EVENT</h4>
          <i className="menu-icon flaticon-more-v2"></i>
        </li>

        <li
          className={`menu-item menu-item-submenu ${getMenuItemActive(
            "/event/participant",
            true
          )}`}
          aria-haspopup="true"
          data-menu-toggle="hover"
        >
          <NavLink className="menu-link menu-toggle" to="/event/participant">
            <span className="svg-icon menu-icon">
              <SVG src={toAbsoluteUrl("/media/svg/icons/Design/Cap-2.svg")} />
            </span>
            <span className="menu-text">Particpant Teams</span>
            <i className="menu-arrow" />
          </NavLink>
          <div className="menu-submenu ">
            <i className="menu-arrow" />
            <ul className="menu-subnav">
              <li
                className={`menu-item  ${getMenuItemActive(
                  "/event/participant/list"
                )}`}
                aria-haspopup="true"
              >
                <NavLink
                  className="menu-link"
                  to="/event/participant/list"
                >
                  <i className="menu-bullet menu-bullet-dot">
                    <span />
                  </i>
                  <span className="menu-text">List</span>
                </NavLink>
              </li>

              <li
                className={`menu-item  ${getMenuItemActive(
                  "/event/participant/activity"
                )}`}
                aria-haspopup="true"
              >
                <NavLink
                  className="menu-link"
                  to="/event/participant/activity"
                >
                  <i className="menu-bullet menu-bullet-dot">
                    <span />
                  </i>
                  <span className="menu-text">Activity</span>
                </NavLink>
              </li>

            </ul>
          </div>
        </li>

        <li
          className={`menu-item menu-item-submenu ${getMenuItemActive(
            "/event/jury",
            true
          )}`}
          aria-haspopup="true"
          data-menu-toggle="hover"
        >
          <NavLink className="menu-link menu-toggle" to="/event/jury">
            <span className="svg-icon menu-icon">
              <SVG src={toAbsoluteUrl("/media/svg/icons/General/Clipboard.svg")} />
            </span>
            <span className="menu-text">Jury</span>
            <i className="menu-arrow" />
          </NavLink>
          <div className="menu-submenu ">
            <i className="menu-arrow" />
            <ul className="menu-subnav">
              <li
                className={`menu-item  ${getMenuItemActive(
                  "/event/jury/assesment"
                )}`}
                aria-haspopup="true"
              >
                <NavLink
                  className="menu-link"
                  to="/event/jury/assesment"
                >
                  <i className="menu-bullet menu-bullet-dot">
                    <span />
                  </i>
                  <span className="menu-text">Jury Assesment</span>
                </NavLink>
              </li>

              <li
                className={`menu-item  ${getMenuItemActive(
                  "/event/jury/list"
                )}`}
                aria-haspopup="true"
              >
                <NavLink
                  className="menu-link"
                  to="/event/jury/list"
                >
                  <i className="menu-bullet menu-bullet-dot">
                    <span />
                  </i>
                  <span className="menu-text">List</span>
                </NavLink>
              </li>

              <li
                className={`menu-item  ${getMenuItemActive(
                  "/event/jury/activity"
                )}`}
                aria-haspopup="true"
              >
                <NavLink
                  className="menu-link"
                  to="/event/jury/activity"
                >
                  <i className="menu-bullet menu-bullet-dot">
                    <span />
                  </i>
                  <span className="menu-text">Activity</span>
                </NavLink>
              </li>

            </ul>
          </div>
        </li>

        <li
          className={`menu-item menu-item-submenu ${getMenuItemActive(
            "/event/webinar",
            true
          )}`}
          aria-haspopup="true"
          data-menu-toggle="hover"
        >
          <NavLink className="menu-link menu-toggle" to="/event/webinar">
            <span className="svg-icon menu-icon">
              <SVG src={toAbsoluteUrl("/media/svg/icons/Devices/Video-camera.svg")} />
            </span>
            <span className="menu-text">Webinar</span>
            <i className="menu-arrow" />
          </NavLink>
          <div className="menu-submenu ">
            <i className="menu-arrow" />
            <ul className="menu-subnav">
              <li
                className={`menu-item  ${getMenuItemActive(
                  "/event/webinar/create"
                )}`}
                aria-haspopup="true"
              >
                <NavLink
                  className="menu-link"
                  to="/event/webinar/create"
                >
                  <i className="menu-bullet menu-bullet-dot">
                    <span />
                  </i>
                  <span className="menu-text">Create Webinar</span>
                </NavLink>
              </li>

              <li
                className={`menu-item  ${getMenuItemActive(
                  "/event/webinar/list"
                )}`}
                aria-haspopup="true"
              >
                <NavLink
                  className="menu-link"
                  to="/event/webinar/list"
                >
                  <i className="menu-bullet menu-bullet-dot">
                    <span />
                  </i>
                  <span className="menu-text">List Webinar</span>
                </NavLink>
              </li>

            </ul>
          </div>
        </li>
        <li className="menu-section ">
          <h4 className="menu-text font-size-h4">ANNOUNCEMENT</h4>
          <i className="menu-icon flaticon-more-v2"></i>
        </li>

        <li
          className={`menu-item menu-item-submenu ${getMenuItemActive("/announcement", true)}`}
          aria-haspopup="true"
        >
          <NavLink className="menu-link menu-toggle" to="/announcement">
            <span className="svg-icon menu-icon">
              <SVG src={toAbsoluteUrl("/media/svg/icons/Design/Layers.svg")} />
            </span>
            <span className="menu-text">About Event</span>
            <i className="menu-arrow" />
          </NavLink>

          <div className="menu-submenu ">
            <ul className="menu-subnav">
              <ul className="menu-subnav">
                <li
                  className={`menu-item ${getMenuItemActive(
                    "/announcement/createAnn", false
                  )}`}
                  aria-haspopup="true"
                >
                  <NavLink className="menu-link" to="/announcement/createAnn">
                    <i className="menu-bullet menu-bullet-dot">
                      <span />
                    </i>
                    <span className="menu-text">Create</span>
                  </NavLink>
                </li>

                <li
                  className={`menu-item ${getMenuItemActive(
                    "/announcement/statusAnn", false
                  )}`}
                  aria-haspopup="true"
                >
                  <NavLink className="menu-link" to="/announcement/statusAnn">
                    <i className="menu-bullet menu-bullet-dot">
                      <span />
                    </i>
                    <span className="menu-text">Status</span>
                  </NavLink>
                </li>
              </ul>
            </ul>
          </div>
        </li>
        <li className="menu-section ">
          <h4 className="menu-text font-size-h4">ACCESS</h4>
          <i className="menu-icon flaticon-more-v2"></i>
        </li>
        <li
          className={`menu-item menu-item-submenu ${getMenuItemActive("/users", true)}`}
          aria-haspopup="true"
        >
          <NavLink className="menu-link menu-toggle" to="/announcement">
            <span className="svg-icon menu-icon">
              <SVG src={toAbsoluteUrl("/media/svg/icons/Design/Layers.svg")} />
            </span>
            <span className="menu-text">Users</span>
            <i className="menu-arrow" />
          </NavLink>

          <div className="menu-submenu ">
            <ul className="menu-subnav">
              <ul className="menu-subnav">
                <li
                  className={`menu-item ${getMenuItemActive(
                    "/users/addUser", false
                  )}`}
                  aria-haspopup="true"
                >
                  <NavLink className="menu-link" to="/users/addUser">
                    <i className="menu-bullet menu-bullet-dot">
                      <span />
                    </i>
                    <span className="menu-text">Add User</span>
                  </NavLink>
                </li>

                <li
                  className={`menu-item ${getMenuItemActive(
                    "/users/listUser", false
                  )}`}
                  aria-haspopup="true"
                >
                  <NavLink className="menu-link" to="/users/listUser">
                    <i className="menu-bullet menu-bullet-dot">
                      <span />
                    </i>
                    <span className="menu-text">List User</span>
                  </NavLink>
                </li>
              </ul>
            </ul>
          </div>
        </li>
        <li className="menu-section ">
          <h4 className="menu-text font-size-h4">TERMS</h4>
          <i className="menu-icon flaticon-more-v2"></i>
        </li>
        <li
          className={`menu-item ${getMenuItemActive("/terms/listTerms", false)}`}
          aria-haspopup="true"
        >
          <NavLink className="menu-link" to="/terms/listTerms">
            <span className="svg-icon menu-icon">
              <SVG src={toAbsoluteUrl("/media/svg/icons/Design/Layers.svg")} />
            </span>
            <span className="menu-text">List Terms</span>
          </NavLink>
        </li>


      </ul>
    </>
  );
}
