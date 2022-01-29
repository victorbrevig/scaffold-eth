import { PageHeader } from "antd";
import React from "react";

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
      <div style={{ position: "absolute", left: 30, top: 30 }}>
        <img src="logo-yellow.png" width="221.6" height="45.4" cursor="pointer" alt="Blobber" />
      </div>
    </a>
  );
}
