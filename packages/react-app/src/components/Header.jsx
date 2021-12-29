import { PageHeader } from "antd";
import React from "react";

// displays a page header

export default function Header() {
  return (
    <a href="/">
      <div style={{ position: "absolute", left: -20, top: -30 }}>
        <img src="blooper_logo.svg" width="80" height="80" alt="Blooper" />
      </div>
      <PageHeader
        title={<div style={{ marginLeft: 50 }}>Bloopers</div>}
        subTitle="Join the Boys"
        style={{ cursor: "pointer" }}
      />
    </a>
  );
}
