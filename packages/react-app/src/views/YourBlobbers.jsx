/* eslint-disable prettier/prettier */
import React, { useCallback, useEffect, useState } from "react";
import { Link } from "react-router-dom";
import { Button, Card, List, Typography } from "antd";
import { Address, AddressInput } from "../components";
import Balance from "../components/Balance";
import { ethers } from "ethers";
import { list } from "postcss";

function YourBlobbers({
  readContracts,
  writeContracts,
  priceToMint,
  priceToUpgrade,
  yourTokenBalance,
  tokenAllowance,
  yourBalance,
  upgradeEvent,
  claimEvent,
  tx,
  mainnetProvider,
  blockExplorer,
  transferToAddresses,
  setTransferToAddresses,
  address,
  yourCollectibleAddress,
}) {
  const [yourBlobbers, setYourBlobbers] = useState();
  const [page, setPage] = useState(1);
  const [loadingBlobbers, setLoadingBlobbers] = useState(true);
  const perPage = 8;
  const { Paragraph, Title } = Typography;

  useEffect(() => {
    const updateYourBlobbers = async () => {
      console.log(readContracts.YourCollectible);
      if (readContracts.YourCollectible && yourBalance) {
        setLoadingBlobbers(true);
        const collectibleUpdate = [];
        let startIndex = yourBalance - 1 - perPage * (page - 1);
        for (let tokenIndex = startIndex; tokenIndex > startIndex - perPage && tokenIndex >= 0; tokenIndex--) {
          try {
            console.log("TIMEBEFORE1: " + new Date(Date.now()));
            const tokenId = await readContracts.YourCollectible.tokenOfOwnerByIndex(address, tokenIndex);
            console.log("TIMEAFTER1: " + new Date(Date.now()));
            console.log("TIMEBEFORE2: " + new Date(Date.now()));
            const tokenURI = await readContracts.YourCollectible.tokenURI(tokenId);
            console.log("TIMEAFTER2: " + new Date(Date.now()));
            const jsonManifestString = atob(tokenURI.substring(29));
            console.log("TIMEBEFORE3: " + new Date(Date.now()));
            const tokensToClaim = await readContracts.YourCollectible.amountAvailableToClaim(tokenId);
            console.log("TIMEAFTER3: " + new Date(Date.now()));
            try {
              const jsonManifest = JSON.parse(jsonManifestString);
              collectibleUpdate.push({ id: tokenId, uri: tokenURI, tokensToClaim: tokensToClaim, owner: address, ...jsonManifest });
            } catch (e) {
              console.log(e);
            }
          } catch (e) {
            console.log(e);
          }
        }
        setYourBlobbers(collectibleUpdate);
        setLoadingBlobbers(false);
      }
    };
    console.log("FULLREFRESTFULLREFRESHFULLREFRESH");
    updateYourBlobbers();
  }, [readContracts.YourCollectible, page, yourBalance]);

  useEffect(() => {
    const updateTokensToClaim = async () => {
      const collectibleUpdate = [];
      let eventAddress;
      try {
        const lastEvent = claimEvent[claimEvent.length - 1];
        console.log("/////////////////////////////");
        console.log(lastEvent);
        console.log("/////////////////////////////");
        eventAddress = lastEvent.args[0];
      } catch (e) {
        console.log(e);
      }
      console.log("-----------------------------");
      console.log(address);
      console.log(eventAddress);
      console.log("-----------------------------");

      if (address != eventAddress)
        return;


      for (let tokenIndex = 0; tokenIndex < perPage && tokenIndex < (yourBalance - (page - 1) * perPage); tokenIndex++) {
        try {
          let collectible = yourBlobbers[tokenIndex];
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
      setYourBlobbers(collectibleUpdate);
    };
    updateTokensToClaim();
    console.log("TOKENSTOCLAIMTOKENSTOCLAIMTOKENSTOCLAIM");
  }, [claimEvent]);

  useEffect(() => {
    const upgradeBlooperUpdate = async () => {
      const collectibleUpdate = [];
      let tokenId;
      try {
        const lastEvent = upgradeEvent[upgradeEvent.length - 1];
        tokenId = lastEvent.args[1].toNumber();
      } catch (e) {
        console.log(e);
      }
      for (let tokenIndex = 0; tokenIndex < perPage && tokenIndex < (yourBalance - (page - 1) * perPage); tokenIndex++) {
        try {
          const collectible = yourBlobbers[tokenIndex];
          if (tokenId == collectible.id) {
            const tokenURI = await readContracts.YourCollectible.tokenURI(tokenId);
            const jsonManifestString = atob(tokenURI.substring(29));
            try {
              const jsonManifest = JSON.parse(jsonManifestString);
              collectibleUpdate.push({ id: collectible.id, uri: tokenURI, owner: address, tokensToClaim: collectible.tokensToClaim, ...jsonManifest });
            } catch (e) {
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
      setYourBlobbers(collectibleUpdate);
    };
    upgradeBlooperUpdate();
    console.log("UPGRADEUPGRADEUPGRADEUPGRADEUPGRADE");
  }, [upgradeEvent]);


  return (
    <div style={{ width: "auto", margin: "auto", paddingBottom: 25, minHeight: 800 }}>
      {false ? (
        <Spin tip={"Fetching your blobbers..."} style={{ marginTop: 100 }} />
      ) : (
        <div>
          <List
            grid={{
              gutter: 16,
              xs: 1,
              sm: 2,
              md: 2,
              lg: 3,
              xl: 4,
              xxl: 4,
            }}
            pagination={{
              total: yourBalance,
              defaultPageSize: perPage,
              defaultCurrent: page,
              onChange: currentPage => {
                setPage(currentPage);
              },
              showTotal: (total, range) => `${range[0]}-${range[1]} of ${yourBalance} items`,
            }}
            loading={loadingBlobbers}
            dataSource={yourBlobbers}
            renderItem={item => {
              const id = item.id.toNumber();
              const tokensToClaim = item.tokensToClaim;
              const renderClaimButton = () => {
                if (tokenAllowance > 0) {
                  const hasEnoughTokens = yourTokenBalance.gte(priceToUpgrade);
                  return (
                    <Button
                      // disabled if not enough BLB or already upgraded
                      disabled={!hasEnoughTokens}
                      onClick={() => {
                        tx(writeContracts.YourCollectible.upgrade(id));
                      }}
                    >
                      UPGRADE
                    </Button>
                  );
                }
                else {
                  return (
                    <Button
                      onClick={() => {
                        // current 1000000000000, maybe set higher
                        tx(writeContracts.BlobToken.approve(yourCollectibleAddress, ethers.utils.parseEther("10000000000000000")));
                      }}
                    >
                      APPROVE BLB
                    </Button>
                  );
                }
              };
              const renderUpgradeButton = () => {
                return (
                  <Button
                    onClick={() => {
                      tx(writeContracts.YourCollectible.claimBLB(id));
                      // REFRESH COMPONENT (need to update yourCollectibles at this id index)
                    }}
                  >
                    CLAIM BLB
                  </Button>
                );
              };

              return (
                <List.Item key={id + "_" + item.uri + "_" + item.owner}>
                  <Card className="ant-card">
                    <img src={item.image} alt={"Blobber #" + id} />
                    <div className="blobberTitle">
                      <h2 level={2} style={{ fontSize: 34, marginRight: 0, fontWeight: 10, float: "left", opacity: 0.6 }}>Blobber #</h2>
                      <h2 level={2} style={{ fontSize: 34, marginRight: 0, fontWeight: 900, float: "left" }}>{id}</h2>
                    </div>
                    <div style={{ marginTop: 20 }}>
                      <AddressInput
                        ensProvider={mainnetProvider}
                        placeholder="transfer to address"
                        value={transferToAddresses[id]}
                        onChange={newValue => {
                          const update = {};
                          update[id] = newValue;
                          setTransferToAddresses({ ...transferToAddresses, ...update });
                        }}
                      />
                      <Button
                        onClick={() => {
                          tx(writeContracts.YourCollectible.transferFrom(address, transferToAddresses[id], id));
                        }}
                      >
                        Transfer
                      </Button>
                    </div>
                    <p>
                      Available to claim:
                    </p>
                    <Balance balance={tokensToClaim} fontSize={24} />
                    {renderUpgradeButton()}
                    {renderClaimButton()}
                  </Card>
                </List.Item>
              );
            }}
          />
        </div>
      )
      }
    </div >
  );


}

export default YourBlobbers;
