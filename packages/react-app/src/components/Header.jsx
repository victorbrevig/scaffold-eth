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
        <img src="whitelogo.png" width="332.4" height="68.1" cursor="pointer" alt="Blobber" />
      </div>
    </a>
  );
}
