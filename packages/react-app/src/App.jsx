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
import { YourBlobbers, Blobbers } from "./views";
import { useStaticJsonRPC } from "./hooks";

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
const NETWORKCHECK = true;

// 🛰 providers
if (DEBUG) console.log("📡 Connecting to Mainnet Ethereum");

// 🔭 block explorer URL
const blockExplorer = targetNetwork.blockExplorer;

const web3Modal = Web3ModalSetup();

// 🛰 providers
const providers = [
  "https://eth-mainnet.gateway.pokt.network/v1/lb/611156b4a585a20035148406",
  `https://eth-mainnet.alchemyapi.io/v2/${ALCHEMY_KEY}`,
  "https://rpc.scaffoldeth.io:48544",
];

function App(props) {
  const [injectedProvider, setInjectedProvider] = useState();
  const [address, setAddress] = useState();
  const location = useLocation();

  // load all your providers
  const localProvider = useStaticJsonRPC([
    process.env.REACT_APP_PROVIDER ? process.env.REACT_APP_PROVIDER : targetNetwork.rpcUrl,
  ]);
  const mainnetProvider = useStaticJsonRPC(providers);

  const logoutOfWeb3Modal = async () => {
    await web3Modal.clearCachedProvider();
    if (injectedProvider && injectedProvider.provider && typeof injectedProvider.provider.disconnect == "function") {
      await injectedProvider.provider.disconnect();
    }
    setTimeout(() => {
      window.location.reload();
    }, 1);
  };

  /* 💵 This hook will get the price of ETH from 🦄 Uniswap: */
  const price = useExchangeEthPrice(targetNetwork, mainnetProvider);

  /* 🔥 This hook will get the price of Gas from ⛽️ EtherGasStation */
  const gasPrice = useGasPrice(targetNetwork, "fast");
  // Use your injected provider from 🦊 Metamask or if you don't have it then instantly generate a 🔥 burner wallet.
  const userProviderAndSigner = useUserProviderAndSigner(injectedProvider, localProvider);
  const userSigner = userProviderAndSigner.signer;

  useEffect(() => {
    async function getAddress() {
      if (userSigner) {
        const newAddress = await userSigner.getAddress();
        setAddress(newAddress);
      }
    }
    getAddress();
  }, [userSigner]);

  // You can warn the user if you would like them to be on a specific network
  const localChainId = localProvider && localProvider._network && localProvider._network.chainId;
  const selectedChainId =
    userSigner && userSigner.provider && userSigner.provider._network && userSigner.provider._network.chainId;

  // For more hooks, check out 🔗eth-hooks at: https://www.npmjs.com/package/eth-hooks

  // The transactor wraps transactions and provides notificiations
  const tx = Transactor(userSigner, gasPrice);

  // 🏗 scaffold-eth is full of handy hooks like this one to get your balance:
  const yourLocalBalance = useBalance(localProvider, address);

  // Just plug in different 🛰 providers to get your balance on different chains:
  const yourMainnetBalance = useBalance(mainnetProvider, address);

  // const contractConfig = useContractConfig();

  const contractConfig = { deployedContracts: deployedContracts || {}, externalContracts: externalContracts || {} };

  // Load in your local 📝 contract and read a value from it:
  const readContracts = useContractLoader(localProvider, contractConfig);

  // If you want to make 🔐 write transactions to your contracts, use the userSigner:
  const writeContracts = useContractLoader(userSigner, contractConfig, localChainId);

  // EXTERNAL CONTRACT EXAMPLE:
  //
  // If you want to bring in the mainnet DAI contract it would look like:
  const mainnetContracts = useContractLoader(mainnetProvider, contractConfig);

  // If you want to call a function on a new block
  useOnBlock(mainnetProvider, () => {
    console.log(`⛓ A new mainnet block is here: ${mainnetProvider._lastBlockNumber}`);
  });

  const priceToMint = useContractReader(readContracts, "YourCollectible", "price");
  if (DEBUG) console.log("🤗 priceToMint:", priceToMint);

  const priceToUpgrade = useContractReader(readContracts, "YourCollectible", "priceToUpgrade");

  const maxSupply = useContractReader(readContracts, "YourCollectible", "limit")-0;
  const totalSupply = useContractReader(readContracts, "YourCollectible", "totalSupply")-0;
  if (DEBUG) console.log("🤗 totalSupply:", totalSupply);
  const blobbersLeft = maxSupply - totalSupply;

  
  // keep track of a variable from the contract in the local React state:
  const balance = useContractReader(readContracts, "YourCollectible", "balanceOf", [address]);
  if (DEBUG) console.log("🤗 address: ", address, " balance:", balance);

  const yourTokenBalance = useContractReader(readContracts, "BlobToken", "balanceOf", [address]);
  

  // CHANGE ON EVERY DEPLOY TO UPGRADE
  const yourCollectibleAddress = "0x77AD263Cd578045105FBFC88A477CAd808d39Cf6";

  const tokenAllowance = useContractReader(readContracts, "BlobToken", "allowance", [address, yourCollectibleAddress]);

  // EVENT LISTENERS
  const mintEvent = useEventListener(readContracts, "YourCollectible", "Mint", localProvider, 1);
  const upgradeEvent = useEventListener(readContracts, "YourCollectible", "Upgrade", localProvider, 1);

  //
  // 🧠 This effect will update yourCollectibles by polling when your balance changes
  //
  const yourBalance = balance && balance.toNumber && balance.toNumber();
  const [yourCollectibles, setYourCollectibles] = useState();
  const [transferToAddresses, setTransferToAddresses] = useState({});

  /*
  console.log("MintEvent ----------------");
  console.log(mintEvent);
  console.log("----------------------------------");

  console.log("UpgradeEvent ----------------");
  console.log(upgradeEvent);
  console.log("----------------------------------");
  
  console.log("YourCollectibles ----------------");
  console.log(yourCollectibles);
  console.log("----------------------------------");
  */
  

  useEffect(() => {
    const updateYourCollectibles = async () => {
      const collectibleUpdate = [];
      for (let tokenIndex = 0; tokenIndex < balance; tokenIndex++) {
        try {
          if (DEBUG) console.log("Getting token index", tokenIndex);
          const tokenId = await readContracts.YourCollectible.tokenOfOwnerByIndex(address, tokenIndex);
          if (DEBUG) console.log("Getting Blobber tokenId: ", tokenId);
          const tokenURI = await readContracts.YourCollectible.tokenURI(tokenId);
          
          const tokensToClaim = await readContracts.YourCollectible.amountAvailableToClaim(tokenId);

          if (DEBUG) console.log("tokenURI: ", tokenURI);
          const jsonManifestString = atob(tokenURI.substring(29));

          try {
            const jsonManifest = JSON.parse(jsonManifestString);
            collectibleUpdate.push({ id: tokenId, uri: tokenURI, owner: address, tokensToClaim: tokensToClaim, ...jsonManifest });
          } catch (e) {
            console.log(e);
          }
        } catch (e) {
          console.log(e);
        }
      }
      console.log("::::::::::::::::::::::::::::::::::::");
      setYourCollectibles(collectibleUpdate.reverse());
    };
    updateYourCollectibles();
  }, [address, yourBalance]);

  // When Upgrade event is emitted, ONLY fetch tokenURI for the upraded nft
  useEffect(() => {
    const updateYourCollectibles = async () => {
      const collectibleUpdate = [];
      let tokenId;
      try {
        const lastEvent = upgradeEvent[upgradeEvent.length-1];
        tokenId = lastEvent.args[1].toNumber();
      } catch(e) {
        console.log(e);
      }
      for (let tokenIndex = 0; tokenIndex < balance; tokenIndex++) {
        try {
          const collectible = yourCollectibles[tokenIndex];
          if(tokenId == collectible.id) {
            const tokenURI = await readContracts.YourCollectible.tokenURI(tokenId);
            const jsonManifestString = atob(tokenURI.substring(29));
            try {
              const jsonManifest = JSON.parse(jsonManifestString);
              collectibleUpdate.push({ id: collectible.id, uri: tokenURI, owner: address, tokensToClaim: collectible.tokensToClaim, ...jsonManifest });
            } catch(e) {
              console.log(e);
            }
          }
          else {
            try {
              collectibleUpdate.push(collectible);
            } catch (e) {
              console.log(e);
            }
          }
        } catch (e) {
          console.log(e);
        }
      }
      console.log("/////////////////////////////////////////");
      setYourCollectibles(collectibleUpdate);
      console.log(yourCollectibles);
    };
    updateYourCollectibles();
  }, [upgradeEvent]);

  // Only fetch tokensToClaim yourTokenBalance changes
  useEffect(() => {
    const updateYourCollectibles = async () => {
      const collectibleUpdate = [];
      for (let tokenIndex = 0; tokenIndex < balance; tokenIndex++) {
        try {
          let collectible = yourCollectibles[tokenIndex];
          let tokenId = collectible.id;
          const tokensToClaim = await readContracts.YourCollectible.amountAvailableToClaim(tokenId);
          collectible.tokensToClaim = tokensToClaim;

          try {
            collectibleUpdate.push(collectible);
          } catch (e) {
            console.log(e);
          }
        } catch (e) {
          console.log(e);
        }
      }
      console.log("LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL");
      setYourCollectibles(collectibleUpdate);
      console.log(yourCollectibles);
    };
    updateYourCollectibles();
  }, [yourTokenBalance]);


  //
  // 🧫 DEBUG 👨🏻‍🔬
  //
  useEffect(() => {
    if (
      DEBUG &&
      mainnetProvider &&
      address &&
      selectedChainId &&
      yourLocalBalance &&
      yourMainnetBalance &&
      readContracts &&
      writeContracts &&
      mainnetContracts
    ) {
      console.log("_____________________________________ 🏗 scaffold-eth _____________________________________");
      console.log("🌎 mainnetProvider", mainnetProvider);
      console.log("🏠 localChainId", localChainId);
      console.log("👩‍💼 selected address:", address);
      console.log("🕵🏻‍♂️ selectedChainId:", selectedChainId);
      console.log("💵 yourLocalBalance", yourLocalBalance ? ethers.utils.formatEther(yourLocalBalance) : "...");
      console.log("💵 yourMainnetBalance", yourMainnetBalance ? ethers.utils.formatEther(yourMainnetBalance) : "...");
      console.log("📝 readContracts", readContracts);
      console.log("🌍 DAI contract on mainnet:", mainnetContracts);
      console.log("🔐 writeContracts", writeContracts);
    }
  }, [
    mainnetProvider,
    address,
    selectedChainId,
    yourLocalBalance,
    yourMainnetBalance,
    readContracts,
    writeContracts,
    mainnetContracts,
  ]);

  const loadWeb3Modal = useCallback(async () => {
    const provider = await web3Modal.connect();
    setInjectedProvider(new ethers.providers.Web3Provider(provider));

    provider.on("chainChanged", chainId => {
      console.log(`chain changed to ${chainId}! updating providers`);
      setInjectedProvider(new ethers.providers.Web3Provider(provider));
    });

    provider.on("accountsChanged", () => {
      console.log(`account changed!`);
      setInjectedProvider(new ethers.providers.Web3Provider(provider));
    });

    // Subscribe to session disconnection
    provider.on("disconnect", (code, reason) => {
      console.log(code, reason);
      logoutOfWeb3Modal();
    });
  }, [setInjectedProvider]);

  useEffect(() => {
    if (web3Modal.cachedProvider) {
      loadWeb3Modal();
    }
  }, [loadWeb3Modal]);

  const faucetAvailable = localProvider && localProvider.connection && targetNetwork.name.indexOf("local") !== -1;


  return (
    <div className="App">
      {/* ✏️ Edit the header and change the title to your project name */}
      
      <NetworkDisplay
        NETWORKCHECK={NETWORKCHECK}
        localChainId={localChainId}
        selectedChainId={selectedChainId}
        targetNetwork={targetNetwork}
      />
      <div className="glass">
      <Menu style={{textAlign: "center"}} selectedKeys={[location.pathname]} mode="horizontal">
        <Menu.Item key="/">
          <Link to="/">Home</Link>
        </Menu.Item>
        <Menu.Item key="/yourBlobbers">
          <Link to="/yourBlobbers">Your Blobbers</Link>
        </Menu.Item>
      </Menu>
      </div>
      <Header />
      
      <div style={{ maxWidth: 820, margin: "auto", marginTop: 32, paddingBottom: 32 }}>
        <div style={{ fontSize: 16 }}>
          <p>
            Only <strong>{ maxSupply } Blobbers</strong> available on a price curve <strong>increasing 0.2%</strong> with each new mint.
          </p>
        </div>

        <Button
          type="primary"
          onClick={async () => {
            const priceRightNow = await readContracts.YourCollectible.price();
            try {
              const txCur = await tx(writeContracts.YourCollectible.mintItem({ value: priceRightNow }));
              await txCur.wait();
            } catch (e) {
              console.log("mint failed", e);
            }
          }}
        >
          MINT for Ξ{priceToMint && (+ethers.utils.formatEther(priceToMint)).toFixed(4)}
        </Button>

        <p style={{ fontWeight: "bold" }}>
          { blobbersLeft } left
        </p>
      </div>

      <Switch>
        <Route exact path="/">
          <Blobbers
            readContracts={readContracts}
            mainnetProvider={mainnetProvider}
            blockExplorer={blockExplorer}
            totalSupply={totalSupply}
            DEBUG={DEBUG}
          />
        </Route>
        <Route exact path="/yourBlobbers">
          <YourBlobbers
            readContracts={readContracts}
            writeContracts={writeContracts}
            priceToMint={priceToMint}
            priceToUpgrade={priceToUpgrade}
            yourCollectibles={yourCollectibles}
            yourTokenBalance={yourTokenBalance}
            tokenAllowance={tokenAllowance}
            tx={tx}
            mainnetProvider={mainnetProvider}
            blockExplorer={blockExplorer}
            transferToAddresses={transferToAddresses}
            setTransferToAddresses={setTransferToAddresses}
            address={address}
            yourCollectibleAddress={yourCollectibleAddress}
          />
        </Route>
        <Route exact path="/howto">
          <div style={{ fontSize: 18, width: 820, margin: "auto" }}>
            <h2 style={{ fontSize: "2em", fontWeight: "bold" }}>How to add Optimistic Ethereum network on MetaMask</h2>
            <div style={{ textAlign: "left", marginLeft: 50, marginBottom: 50 }}>
              <ul>
                <li>
                  Go to <a target="_blank" href="https://chainid.link/?network=optimism">https://chainid.link/?network=optimism</a>
                </li>
                <li>
                  Click on <strong>connect</strong> to add the <strong>Optimistic Ethereum</strong> network in <strong>MetaMask</strong>.
                </li>
              </ul>
            </div>
            <h2 style={{ fontSize: "2em", fontWeight: "bold" }}>How to add funds to your wallet on Optimistic Ethereum network</h2>
            <div style={{ textAlign: "left", marginLeft: 50, marginBottom: 100 }}>
              <ul>
                <li><a href="https://portr.xyz/" target="_blank">The Teleporter</a>: the cheaper option, but with a 0.05 ether limit per transfer.</li>
                <li><a href="https://gateway.optimism.io/" target="_blank">The Optimism Gateway</a>: larger transfers and cost more.</li>
                <li><a href="https://app.hop.exchange/send?token=ETH&sourceNetwork=ethereum&destNetwork=optimism" target="_blank">Hop.Exchange</a>: where you can send from/to Ethereum mainnet and other L2 networks.</li>
              </ul>
            </div>
          </div>
        </Route>
        <Route exact path="/debug">
          <div style={{ padding: 32 }}>
            <Address value={readContracts && readContracts.YourCollectible && readContracts.YourCollectible.address} />
          </div>
          <Contract
            name="YourCollectible"
            price={price}
            signer={userSigner}
            provider={localProvider}
            address={address}
            blockExplorer={blockExplorer}
            contractConfig={contractConfig}
          />
          <Contract
              name="BlobToken"
              signer={userSigner}
              provider={localProvider}
              address={address}
              blockExplorer={blockExplorer}
              contractConfig={contractConfig}
            />
        </Route>
      </Switch>

      <ThemeSwitch />

      {/* 👨‍💼 Your account is in the top right with a wallet at connect options */}
      <div style={{ position: "fixed", textAlign: "right", right: 0, top: 0, padding: 10 }}>
        <Account
          address={address}
          localProvider={localProvider}
          userSigner={userSigner}
          mainnetProvider={mainnetProvider}
          price={price}
          web3Modal={web3Modal}
          loadWeb3Modal={loadWeb3Modal}
          logoutOfWeb3Modal={logoutOfWeb3Modal}
          blockExplorer={blockExplorer}
          yourTokenBalance={yourTokenBalance}
        />
        <FaucetHint localProvider={localProvider} targetNetwork={targetNetwork} address={address} />
      </div>

      {/* 🗺 Extra UI like gas price, eth price, faucet, and support: */}
      <div style={{ position: "fixed", textAlign: "left", left: 0, bottom: 20, padding: 10 }}>
        <Row align="middle" gutter={[4, 4]}>
          <Col span={8}>
            <Ramp price={price} address={address} networks={NETWORKS} />
          </Col>

          <Col span={8} style={{ textAlign: "center", opacity: 0.8 }}>
            <GasGauge gasPrice={gasPrice} />
          </Col>
          <Col span={8} style={{ textAlign: "center", opacity: 1 }}>
            <Button
              onClick={() => {
                window.open("https://t.me/joinchat/KByvmRe5wkR-8F_zz6AjpA");
              }}
              size="large"
              shape="round"
            >
              <span style={{ marginRight: 8 }} role="img" aria-label="support">
                💬
              </span>
              Support
            </Button>
          </Col>
        </Row>

        <Row align="middle" gutter={[4, 4]}>
          <Col span={24}>
            {
              /*  if the local provider has a signer, let's show the faucet:  */
              faucetAvailable ? (
                <Faucet localProvider={localProvider} price={price} ensProvider={mainnetProvider} />
              ) : (
                ""
              )
            }
          </Col>
        </Row>
      </div>
    </div>
  );
}

export default App;
