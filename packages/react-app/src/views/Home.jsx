/* eslint-disable prettier/prettier */
import React, { useCallback, useEffect, useState } from "react";
import { Link } from "react-router-dom";
import { Button, Typography } from "antd";
import { Address } from "../components";
import { ethers } from "ethers";

function Home({ readContracts, mainnetProvider, blockExplorer, totalSupply, DEBUG }) {

    const { Paragraph, Title } = Typography;

    return (
        <div style={{ width: "auto", margin: "auto", paddingBottom: 25, minHeight: 800 }}>
            <Title level={2}>What are Blobbers?</Title>
            <Paragraph>
                Blobbers is a diverse NFT collection on the Optimism network. Each blobber is drawn from SVG code which is fully on-chain. This allows the owner of a blobber to change it's apperance. 
            </Paragraph>
            <Title level={2}>The BLB token</Title>
            <Paragraph>
                BLB is an ERC20 token can be used to upgrade each blobber once. Every block XXX BLB tokens are issued and distributed evenly among all blobbers. This means that if there are 1000 blobbers minted, each blobber will gain XXX/1000 BLB per block. BLB tokens can be claimed at any time on the "Your Blobbers" page. The issuance of BLB ends at block number YYY, and at this point, the supply of BLB will not increase. When BLB tokens are spend on upgrades, they are sent to the zero address and effectively removed from circulation. The maximum total supply of BLB is ZZZ which is enough to upgrade approximately WWW blobbers. To obtain enough BLB to upgrade your blobber, you can either mint early to increase your farming rewards, mint multiple blobbers or purchase BLB on an exchange such as Uniswap.
            </Paragraph>

        </div>
    );
}

export default Home;