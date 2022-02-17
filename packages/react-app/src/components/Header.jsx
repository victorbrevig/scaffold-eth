import { PageHeader } from "antd";
import React from "react";
import LOGO from "../logo2.svg";

// displays a page header

/*
<PageHeader
        title={<div style={{ marginLeft: 50 }}>Blobbers</div>}
        subTitle="Join the Boys"
        style={{ cursor: "pointer" }}
      />
*/
export default function Header() {
  return (
    <a href="/">
      <div style={{ position: "absolute", left: 30, top: 25 }}>
        <img src={LOGO} alt="Blobber" width="240" height="46.4" />
      </div>
    </a>
  );
}
