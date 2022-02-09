/* eslint-disable prettier/prettier */
import { Alert, Button, Col, Menu, Row } from "antd";
import "antd/dist/antd.css";
import {
  useBalance,
  useContractLoader,
  useContractReader,
  useGasPrice,
  useOnBlock,
  useUserProviderAndSigner,
} from "eth-hooks";
import { useExchangeEthPrice } from "eth-hooks/dapps/dex";
import { useEventListener } from "eth-hooks/events/useEventListener";
import React, { useCallback, useEffect, useState } from "react";
import { Link, Route, Switch, useLocation } from "react-router-dom";
import "./App.css";
import {
  Account,
  Address,
  Contract,
  Faucet,
  GasGauge,
  Header,
  Ramp,
  ThemeSwitch,
  NetworkDisplay,
  FaucetHint,
} from "./components";
import { NETWORKS, ALCHEMY_KEY } from "./constants";
import externalContracts from "./contracts/external_contracts";
// contracts
import deployedContracts from "./contracts/hardhat_contracts.json";
import { Transactor, Web3ModalSetup } from "./helpers";
import { YourBlobbers, Blobbers, Home } from "./views";
import { useStaticJsonRPC } from "./hooks";

import { FaDiscord, FaTwitter } from 'react-icons/fa';


const { ethers } = require("ethers");
/*
    Welcome to 🏗 scaffold-eth !

    Code:
    https://github.com/scaffold-eth/scaffold-eth

    Support:
    https://t.me/joinchat/KByvmRe5wkR-8F_zz6AjpA
    or DM @austingriffith on twitter or telegram

    You should get your own Infura.io ID and put it in `constants.js`
    (this is your connection to the main Ethereum network for ENS etc.)


    🌏 EXTERNAL CONTRACTS:
    You can also bring in contract artifacts in `constants.js`
    (and then use the `useExternalContractLoader()` hook!)
*/

/// 📡 What chain are your contracts deployed to?
const targetNetwork = NETWORKS.localhost; // <------- select your target frontend network (localhost, rinkeby, xdai, mainnet)

// 😬 Sorry for all the console logging
const DEBUG = false;


function App(props) {
  
  const location = useLocation();

  return (
    <div className="App">
      
      <Menu style={{ textAlign: "center" }} selectedKeys={[location.pathname]} mode="horizontal">
        <Menu.Item key="/">
        </Menu.Item>
      </Menu>
      <Header />

      <div style={{ maxWidth: 820, margin: "auto", marginTop: 32, paddingBottom: 32 }}>
        <Button
          type="primary"
        >
          MINT COMMING SOON
        </Button>
      </div>

      <Switch>
        <Route exact path="/">
          <Home />
        </Route>
      </Switch>

      {/* <ThemeSwitch /> */}

      {/* 👨‍💼 Your account is in the top right with a wallet at connect options */}

      <div className="glassBox2" style={{ position: "fixed", textAlign: "left", left: 0, bottom: 20, padding: 20, paddingLeft: 30 }}>
        <Row align="middle" gutter={[4, 4]}>

          <Col span={8} style={{ marginRight: 20 }}>
            <a href="https://discord.gg/efrUhB7J" target="_blank">
              <FaDiscord style={{ color: "#fff", width: 30, height: 30 }} />
            </a>
          </Col>

          <Col span={8} style={{ textAlign: "center" }}>
            <a href="https://twitter.com/blobbersio" target="_blank">
              <FaTwitter style={{ color: "#fff", width: 30, height: 30 }} />
            </a>
          </Col>

        </Row>
      </div>



    </div>
  );
}

export default App;
