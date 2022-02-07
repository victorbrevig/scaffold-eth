import { PageHeader } from "antd";
import React from "react";
import LOGO from "../logo.svg";

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
      <div style={{ position: "absolute", left: 30, top: 35 }}>
        <img src={LOGO} alt="Blobber" width="300" height="58" />
      </div>
    </a>
  );
}
