/* eslint-disable prettier/prettier */
import React, { useCallback, useEffect, useState } from "react";
import { Link } from "react-router-dom";
import { Button, Typography, Card, List, Col, Row } from "antd";
import { Address } from "../components";
import { ethers } from "ethers";
import "../App.css";
import BOX from "../upgrade.svg";
import BLOBBER from "../blobber.svg";
import COIN from "../coin.svg";

function Home({ readContracts, mainnetProvider, blockExplorer, totalSupply, DEBUG }) {

    const { Paragraph, Title } = Typography;

    const contentStyle = {
        height: '160px',
        color: '#fff',
        lineHeight: '160px',
        textAlign: 'center',
        background: 'rgba(0,0,0,0)',
    };

    return (
        <div style={{ width: "auto", margin: "auto", paddingBottom: 25, minHeight: 800 }}>

            <div className="site-card-wrapper">
                <Row gutter={16} className="rowHome">
                    <Col span={8}>
                        <div style={{ margin: 5, padding: 30 }} className="glassCard">
                            <img className="imagesHome" src={BLOBBER} alt="BlobberAnim" />
                            <Title level={2} style={{ fontSize: 34, marginRight: 8 }}>What are Blobbers?</Title>
                            <Paragraph style={{ fontSize: 18 }}>
                                Planet Blob-6 has become unhabitable due to global warming... sounds familiar? All of its inhabitants, the Blobbers, have had to migrate to other planets in the known universe where life is prosperous. Earth has caught their attention, and as they start their migration to our planet, the Blobbers are getting used to our weird clothes and consumer products. It seems that all they want is to find an owner that adopts them and in return, they'll produce some sort of BLOB which to them is just their poop, but to us humans it has value, it's cryptocurrency! Mint and collect these blobbers, each with their own traits, some rarer than others and help the blobbers carry on their legacy as the first life forms to excrete cryptocurrency.
                            </Paragraph>
                            <Paragraph style={{ fontSize: 16 }}>
                                Blobbers is a diverse NFT collection on the Optimism network. Each blobber is drawn from SVG code which is fully on-chain. This allows the owner of a blobber to change it's apperance through upgrades.
                            </Paragraph>
                        </div>
                    </Col>
                    <Col span={8}>
                        <div style={{ margin: 5, padding: 30 }} className="glassCard">
                            <img className="imagesHome" src={COIN} alt="CoinAnim" />
                            <Title level={2} style={{ fontSize: 34, marginRight: 8 }}>The BLB token</Title>
                            <Paragraph style={{ fontSize: 18 }}>
                                BLB is an ERC20 token that can be used to upgrade each blobber once. Every block XXX BLB tokens are issued and distributed evenly among all blobbers. This means that if there are 1000 blobbers minted, each blobber will gain XXX/1000 BLB per block. BLB tokens can be claimed at any time on the "Your Blobbers" page. The issuance of BLB ends at block number YYY, and at this point, the supply of BLB will not increase. When BLB tokens are spent on upgrades, they are sent to the zero address and effectively removed from circulation. The maximum total supply of BLB is ZZZ which is enough to upgrade approximately WWW blobbers. To obtain enough BLB to upgrade your blobber, you can either mint early to increase your farming rewards, mint multiple blobbers or purchase BLB on an exchange such as Uniswap.
                            </Paragraph>
                        </div>
                    </Col>
                    <Col span={8}>
                        <div style={{ margin: 5, padding: 30 }} className="glassCard">
                            <img className="imagesHome" src={BOX} alt="BoxAnim" />
                            <Title level={2} style={{ fontSize: 34, marginRight: 8 }}>Upgrade to Tier 2</Title>
                            <Paragraph style={{ fontSize: 18 }}>
                                Every Blobber can be upgraded once, and the cost of this upgrade is XXX BLB. By upgrading your NFT, the SVG code that draws your Blobber will be modified to render a Tier 2 Blobber. These Tier 2 Blobbers are characterized by having a gradient background. On top of that, your Blobber will randomly receive at least one extra rare traits that is not available in the normal Tier 1 population such as; different designs in the background, mutations in the central Blob and changes in the Blobber's nature (transparency and glow). You can upgrade each Blobber once in "Your Blobbers" page. Your address should first be approved to perform any upgrades. Once it is approved, you can upgrade as many Tier 1 Blobbers as your BLB balance allows you to.
                            </Paragraph>
                        </div>
                    </Col>
                </Row>
            </div>



        </div>




    );
}

export default Home;