/* eslint-disable prettier/prettier */
import React from "react";
import { Link } from "react-router-dom";
import { Button, Card, List } from "antd";
import { Address, AddressInput } from "../components";
import Balance from "../components/Balance";
import { ethers } from "ethers";
import { list } from "postcss";

function Home({
  readContracts,
  writeContracts,
  priceToMint,
  priceToUpgrade,
  yourCollectibles,
  yourTokenBalance,
  tokenAllowance,
  tx,
  mainnetProvider,
  blockExplorer,
  transferToAddresses,
  setTransferToAddresses,
  address,
  yourCollectibleAddress,
}) {
  return (
    <div>
      <div style={{ width: 600, margin: "auto", paddingBottom: 25 }}>
        <List
          dataSource={yourCollectibles}
          grid={{ gutter: 20, column: 2 }}
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
                //return <Button>APPROVE BLB</Button>;
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
                <Card
                  title={
                    <div>
                      <span style={{ fontSize: 18, marginRight: 8 }}>{item.name}</span>
                    </div>
                  }
                >
                  <img src={item.image} alt={"Blobber #" + id} />
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
    </div>
  );
}

export default Home;