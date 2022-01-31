pragma solidity ^0.8.0;
//SPDX-License-Identifier: MIT
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "base64-sol/base64.sol";

import "./HexStrings.sol";
import "./ToColor.sol";
import "./BodyGenerator.sol";
import "./EyeGenerator.sol";
import "./MouthGenerator.sol";
import "./MouthGenerator2.sol";
import "./DetailGenerator.sol";
import "./ExtraGenerator.sol";
import "./FullFaceGenerator.sol";
import "./HatGenerator.sol";
import "./HatGenerator2.sol";
import "./MaskGenerator.sol";

import "./BlobToken.sol";

// GET LISTED ON OPENSEA: https://testnets.opensea.io/get-listed/step-two

contract YourCollectible is ERC721Enumerable, Ownable {
    using Strings for uint256;
    using HexStrings for uint160;
    using ToColor for bytes3;
    using Counters for Counters.Counter;

    event Mint(address indexed _to, uint256 indexed _id);
    event Upgrade(address indexed _by, uint256 indexed _id);

    BlobToken blobToken;

    SVGBodyGenerator bodyGenerator;
    SVGHatGenerator hatGenerator;
    SVGHatGenerator2 hatGenerator2;
    SVGFullFaceGenerator fullFaceGenerator;
    SVGMaskGenerator maskGenerator;
    SVGEyeGenerator eyeGenerator;
    SVGMouthGenerator mouthGenerator;
    SVGMouthGenerator2 mouthGenerator2;
    SVGDetailGenerator detailGenerator;
    SVGExtraGenerator extraGenerator;

    Counters.Counter private _tokenIds;

    address payable public constant recipient =
        payable(0x6946EC240f5C64D6AF2b3a210394a9D24737d1E6);

    uint256 public constant limit = 1000;
    uint256 public constant curve = 1002; // price increase 0,2% with each purchase
    uint256 public price = 0.001 ether;

    uint256 public priceToUpgrade = 4000e18; // in BLB

    uint256 issuancePerBlock = 1000 * 1e18;

    constructor(
        address bodyGeneratorAddress,
        address hatGeneratorAddress,
        address hatGenerator2Address,
        address fullFaceGeneratorAddress,
        address maskGeneratorAddress,
        address eyeGeneratorAddress,
        address mouthGeneratorAddress,
        address mouthGenerator2Address,
        address detailGeneratorAddress,
        address extraGeneratorAddress,
        address blobTokenAddress
    ) ERC721("Blobbers", "BLOB") {
        bodyGenerator = SVGBodyGenerator(bodyGeneratorAddress);
        hatGenerator = SVGHatGenerator(hatGeneratorAddress);
        hatGenerator2 = SVGHatGenerator2(hatGenerator2Address);
        fullFaceGenerator = SVGFullFaceGenerator(fullFaceGeneratorAddress);
        maskGenerator = SVGMaskGenerator(maskGeneratorAddress);
        eyeGenerator = SVGEyeGenerator(eyeGeneratorAddress);
        mouthGenerator = SVGMouthGenerator(mouthGeneratorAddress);
        mouthGenerator2 = SVGMouthGenerator2(mouthGenerator2Address);
        detailGenerator = SVGDetailGenerator(detailGeneratorAddress);
        extraGenerator = SVGExtraGenerator(extraGeneratorAddress);
        blobToken = BlobToken(blobTokenAddress);
    }

    struct Blobber {
        uint8 bodyColor;
        uint8 hatColor;
        uint8 gradientColor1;
        uint8 gradientColor2;
        uint8 mouthColor;
        uint8 detailColor;
        uint8 extraColor;
        uint8 maskColor;
        uint8 eyeColor;
        uint8 fullFaceColor;
        uint8 tier;
        uint8 hat;
        uint8 eye;
        uint8 mouth;
        uint8 detail;
        uint8 extra;
        uint8 mask;
        uint8 fullFace;
        uint8 mode;
        bool upgraded;
    }

    mapping(uint256 => Blobber) private idToBlobber;

    mapping(uint256 => uint256) public chubbiness; // Not used
    mapping(uint256 => uint256) public mouthLength; // Not used

    uint8 constant colsLength = 74;
    string[colsLength] cols = [
        "252525",
        "ffffff",
        "849e85",
        "c9ae90",
        "cfcfcf",
        "9b9b9b",
        "686868",
        "363636",
        "ffaeae",
        "ffc7b0",
        "ffe0b3",
        "fff5b9",
        "e9ffb5",
        "c7ffb9",
        "b9ffdc",
        "64ffea",
        "b7e5ff",
        "becdff",
        "bcbbff",
        "d6bfff",
        "e5bfff",
        "fdb8ff",
        "ffc1e3",
        "ffbcd0",
        "ff6464",
        "ff9064",
        "ffaa64",
        "ffc164",
        "ffe864",
        "d0ff64",
        "83ff64",
        "64ffb1",
        "64ffea",
        "64c6ff",
        "6488ff",
        "6764ff",
        "9a64ff",
        "c164ff",
        "fa64ff",
        "ff64b9",
        "ff6492",
        "ff2929",
        "ff6022",
        "ff831e",
        "ffa318",
        "ffde20",
        "bdff23",
        "4fff23",
        "22ff90",
        "26ffe2",
        "25afff",
        "2850d3",
        "3330c9",
        "7226ff",
        "ab2dff",
        "f82fff",
        "ff2fa2",
        "ff1d61",
        "9c2525",
        "a84b26",
        "a05f29",
        "3e7e2e",
        "3d8f66",
        "33857a",
        "357296",
        "334788",
        "2e2c81",
        "482d7a",
        "542474",
        "8c308f",
        "8b2e61",
        "8f2b49",
        "da9760",
        "484872"
    ];

    uint8 constant noOfHats = 29;
    uint8 constant noOfEyes = 24;
    uint8 constant noOfMouths = 20;
    uint8 constant noOfFullFaces = 8;
    uint8 constant noOfMasks = 9;
    uint8 constant noOfExtras = 5;
    uint8 constant noOfDetails = 8;
    uint8 constant noOfBodies = 4;

    /*
  // NFT id => timestamp of last time BLB collected
  mapping (uint256 => uint256) public lastBlockHarvestedById;
  uint256 issuancePerBlock = 1000;
  // when a mint happens, the issuancePerBlock is split between one more Blobber
  // calculating rewards:
  // 40 blocks * 1000/1 -> (next mint happens) + 69 blocks * 1000/2 -> (next mint happens) + 100 blocks * 1000/3 + ...
  // 22, 23, 26
  // 20 blocks * 1000/1 -> (20-22)
  // 2*(issuance #block 20)
  // we need to store triples (supply, start block with that supply, end block with that supply) 
  
  */
    function viewBlockNumber() public view returns (uint256) {
        return block.number;
    }

    uint256 public lastFarmBlockNumber = 5000;
    mapping(uint256 => uint256) public idToLastBlockClaimed;
    uint256[limit] mintBlockNumbersArray;

    function claimBLB(uint256 id) public {
        require(ownerOf(id) == msg.sender, "NOT OWNER");
        require(idToLastBlockClaimed[id] < block.number, "NOTHING TO CLAIM");
        uint256 amountToClaim = amountAvailableToClaim(id);
        require(amountToClaim > 0);

        idToLastBlockClaimed[id] = block.number;
        blobToken.transfer(msg.sender, amountToClaim);
    }

    function getMintBlockNumberById(uint256 id) public view returns (uint256) {
        return mintBlockNumbersArray[id];
    }

    function amountAvailableToClaim(uint256 id) public view returns (uint256) {
        // only necessary while debugging
        require(id < totalMinted(), "this id has not been minted");

        uint256 lastBlock = idToLastBlockClaimed[id];

        // if last claimed block >= last mint block, result returned instantly
        if (lastBlock >= mintBlockNumbersArray[totalMinted() - 1]) {
            return (((block.number - lastBlock) * issuancePerBlock) /
                totalMinted());
        }

        uint256 amountAvailable = 0;

        for (uint256 i = 1; i < totalMinted(); i++) {
            if (
                mintBlockNumbersArray[i] > lastBlock &&
                mintBlockNumbersArray[i] < lastFarmBlockNumber
            ) {
                amountAvailable +=
                    (((mintBlockNumbersArray[i] - 1) - lastBlock) *
                        issuancePerBlock) /
                    i;
                lastBlock = mintBlockNumbersArray[i] - 1;
            }
        }
        if (block.number < lastFarmBlockNumber) {
            amountAvailable +=
                ((block.number - lastBlock) * issuancePerBlock) /
                totalMinted();
        } else {
            amountAvailable +=
                ((lastFarmBlockNumber - lastBlock) * issuancePerBlock) /
                totalMinted();
        }
        return amountAvailable;
    }

    function getBlobber(uint256 _id) public view returns (Blobber memory) {
        return idToBlobber[_id];
    }

    function mintItem() public payable returns (uint256) {
        require(_tokenIds.current() < limit, "DONE MINTING");
        require(msg.value >= price, "NOT ENOUGH");
        price = (price * curve) / 1000;
        uint256 id = _tokenIds.current();
        _tokenIds.increment();
        _mint(msg.sender, id);
        bytes32 predictableRandom = keccak256(
            abi.encodePacked(
                blockhash(block.number - 1),
                msg.sender,
                address(this),
                id
            )
        );
        idToBlobber[id].bodyColor = uint8(predictableRandom[0]) % (colsLength);
        idToBlobber[id].gradientColor1 =
            uint8(predictableRandom[1]) %
            (colsLength);
        idToBlobber[id].gradientColor2 =
            uint8(predictableRandom[2]) %
            (colsLength);
        idToBlobber[id].tier = uint8(predictableRandom[3]) % noOfBodies;
        idToBlobber[id].fullFace =
            uint8(predictableRandom[4]) %
            (noOfFullFaces * 10); // 10% chance for fullface

        if (idToBlobber[id].fullFace < noOfFullFaces) {
            // set all others to default
            idToBlobber[id].mouth = 99;
            idToBlobber[id].eye = 99;
            idToBlobber[id].hat = 99;
            idToBlobber[id].extra =
                uint8(predictableRandom[5]) %
                (noOfExtras * 2); // 50% chance of extra when full face
            idToBlobber[id].detail = 99;
            idToBlobber[id].mask = 99;
        } else {
            // else we are not using full face
            // Check if we roll a mask
            idToBlobber[id].mask =
                uint8(predictableRandom[5]) %
                (noOfMasks * 5); // 20% chance for mask if not a fullface
            if (idToBlobber[id].mask < noOfMasks) {
                // we rolled a mask, set eye and mouth to default
                idToBlobber[id].mouth = 99;
                idToBlobber[id].eye = 99;
            } else {
                // We didnt roll a mask, set mouth and eye
                idToBlobber[id].mouth =
                    uint8(predictableRandom[6]) %
                    noOfMouths;
                idToBlobber[id].eye = uint8(predictableRandom[7]) % noOfEyes;
            }

            idToBlobber[id].hat = uint8(predictableRandom[8]) % noOfHats;
            idToBlobber[id].extra =
                uint8(predictableRandom[9]) %
                (noOfExtras * 10);
            idToBlobber[id].detail =
                uint8(predictableRandom[10]) %
                (noOfDetails * 3);
        }

        // condom (no. 11) must have same color as body
        idToBlobber[id].hatColor = idToBlobber[id].hat == 11
            ? idToBlobber[id].bodyColor
            : uint8(predictableRandom[11]) % (colsLength);
        idToBlobber[id].mouthColor =
            uint8(predictableRandom[12]) %
            (colsLength);
        idToBlobber[id].extraColor =
            uint8(predictableRandom[13]) %
            (colsLength);
        idToBlobber[id].detailColor =
            uint8(predictableRandom[14]) %
            (colsLength);
        idToBlobber[id].eyeColor = uint8(predictableRandom[15]) % (colsLength);
        idToBlobber[id].fullFaceColor =
            uint8(predictableRandom[16]) %
            (colsLength);
        idToBlobber[id].maskColor = uint8(predictableRandom[17]) % (colsLength);
        // 3 modes (set rarity)
        idToBlobber[id].mode = uint8(predictableRandom[18]) % 3;

        idToBlobber[id].upgraded = false;

        chubbiness[id] =
            35 +
            ((55 * uint256(uint8(predictableRandom[3]))) / 255);
        mouthLength[id] =
            180 +
            ((uint256(chubbiness[id] / 4) *
                uint256(uint8(predictableRandom[4]))) / 255);
        // Send to recipient address
        (bool success, ) = recipient.call{value: msg.value}("");
        require(success, "could not send");

        idToLastBlockClaimed[id] = block.number - 1;
        mintBlockNumbersArray[id] = block.number;

        emit Mint(msg.sender, id);
        return id;
    }

    function tokenURI(uint256 id) public view override returns (string memory) {
        require(_exists(id), "not exist");
        string memory name = string(
            abi.encodePacked("Blobber #", id.toString())
        );
        string memory description = string(
            abi.encodePacked(
                "This Blobber is the color #",
                cols[idToBlobber[id].bodyColor]
            )
        );
        string memory image = Base64.encode(bytes(generateSVGofTokenById(id)));

        string memory firstPart = string(
            abi.encodePacked(
                '{"name":"',
                name,
                '", "description":"',
                description,
                '", "external_url":"https://burnyboys.com/token/',
                id.toString(),
                '", "attributes": [{"trait_type": "color", "value": "#',
                cols[idToBlobber[id].bodyColor],
                '"},{"trait_type": "chubbiness", "value": ',
                uint2str(chubbiness[id]),
                '},{"trait_type": "mouthLength", "value": ',
                uint2str(mouthLength[id]),
                '}], "owner":"'
            )
        );

        string memory secondPart = string(
            abi.encodePacked(
                (uint160(ownerOf(id))).toHexString(20),
                '", "image": "',
                "data:image/svg+xml;base64,",
                image,
                '"}'
            )
        );

        return
            string(
                abi.encodePacked(
                    "data:application/json;base64,",
                    Base64.encode(
                        bytes(string(abi.encodePacked(firstPart, secondPart)))
                    )
                )
            );
    }

    function generateSVGofTokenById(uint256 id)
        public
        view
        returns (string memory)
    {
        string memory svgMode = "";
        if (idToBlobber[id].mode == 1) {
            //transparent
            svgMode = ' fill-opacity="0.5" ';
        } else if (idToBlobber[id].mode == 2) {
            //glow
            svgMode = ' stroke="none" style="filter:url(#glow)" ';
        }

        string memory svgP1 = string(
            abi.encodePacked(
                '<svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1080 1080"><title>Blobbers</title><defs><linearGradient id="linear-gradient" x2="1080" y2="1080" gradientUnits="userSpaceOnUse">',
                '<stop offset="0" stop-color="#',
                cols[idToBlobber[id].gradientColor1],
                '" />',
                '<stop offset="1" stop-color="#',
                cols[idToBlobber[id].gradientColor1],
                '" /></linearGradient>'
            )
        );

        string memory svgP2 = string(
            abi.encodePacked(
                '<filter id="glow"><feGaussianBlur stdDeviation="20" result="coloredBlur" /><feMerge><feMergeNode in="coloredBlur" /><feMergeNode in="SourceGraphic" /></feMerge>',
                '</filter></defs><rect width="1080" height="1080" fill="url(#linear-gradient)" /><g transform="translate(0 20)" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="10">',
                extraGenerator.render(
                    idToBlobber[id].extra,
                    cols[idToBlobber[id].extraColor]
                ),
                '<g fill="#',
                cols[idToBlobber[id].bodyColor],
                '"',
                svgMode,
                ">",
                bodyGenerator.render(idToBlobber[id].tier),
                "</g>"
            )
        );

        string memory svgP3 = string(
            abi.encodePacked(
                fullFaceGenerator.render(
                    idToBlobber[id].fullFace,
                    cols[idToBlobber[id].fullFaceColor]
                ),
                hatGenerator.render(
                    idToBlobber[id].hat,
                    cols[idToBlobber[id].hatColor]
                ),
                hatGenerator2.render(
                    idToBlobber[id].hat,
                    cols[idToBlobber[id].hatColor]
                ),
                eyeGenerator.render(
                    idToBlobber[id].eye,
                    cols[idToBlobber[id].eyeColor]
                )
            )
        );

        string memory svgP4 = string(
            abi.encodePacked(
                mouthGenerator.render(
                    idToBlobber[id].mouth,
                    cols[idToBlobber[id].mouthColor]
                ),
                mouthGenerator2.render(
                    idToBlobber[id].mouth,
                    cols[idToBlobber[id].mouthColor]
                ),
                maskGenerator.render(
                    idToBlobber[id].mask,
                    cols[idToBlobber[id].maskColor]
                ),
                detailGenerator.render(
                    idToBlobber[id].detail,
                    cols[idToBlobber[id].detailColor]
                ),
                "</g></svg>"
            )
        );

        return string(abi.encodePacked(svgP1, svgP2, svgP3, svgP4));
    }

    function upgrade(uint256 id) public {
        require(_isApprovedOrOwner(msg.sender, id), "NOT OWNER/APPROVED");
        require(!idToBlobber[id].upgraded, "Already upgraded");

        bool toContractTransfer = blobToken.transferFrom(
            msg.sender,
            address(this),
            priceToUpgrade
        );
        require(toContractTransfer, "NOT SUCCESSFUL INGOING TRANSFER");

        idToBlobber[id].upgraded = true; // upgrade the tier;

        // Randomly choose a few traits from toBurnId and use in toUpgradeId instead.
        bytes32 predictableRandom = keccak256(
            abi.encodePacked(
                blockhash(block.number - 1),
                msg.sender,
                address(this),
                id
            )
        );
        idToBlobber[id].eye = uint8(predictableRandom[7]) % noOfEyes;
        emit Upgrade(msg.sender, id);
    }

    function burn(uint256 tokenId) internal {
        require(
            _isApprovedOrOwner(_msgSender(), tokenId),
            "ERC721Burnable: caller is not owner nor approved"
        );
        _burn(tokenId);
    }

    function totalMinted() public view returns (uint256) {
        return _tokenIds.current();
    }

    function uint2str(uint256 _i)
        internal
        pure
        returns (string memory _uintAsString)
    {
        if (_i == 0) {
            return "0";
        }
        uint256 j = _i;
        uint256 len;
        while (j != 0) {
            len++;
            j /= 10;
        }
        bytes memory bstr = new bytes(len);
        uint256 k = len;
        while (_i != 0) {
            k = k - 1;
            uint8 temp = (48 + uint8(_i - (_i / 10) * 10));
            bytes1 b1 = bytes1(temp);
            bstr[k] = b1;
            _i /= 10;
        }
        return string(bstr);
    }
}
