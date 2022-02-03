pragma solidity ^0.8.0;
//SPDX-License-Identifier: MIT

import "./ToColor.sol";

contract SVGMouthGenerator2 {
    using ToColor for bytes3;

    constructor() {}

    function render(uint8 mouth, string memory color)
        external
        pure
        returns (string memory)
    {
        if (mouth == 14) {
            // HOODIE
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '"><g transform="translate(0 15)"><path d="M479,525,356.47,483.18A157,157,0,0,0,312.85,477H275.21A19.21,19.21,0,0,0,256,496.21V519" />',
                        '<path d="M479,525,356.47,483.18A157,157,0,0,0,312.85,477H275.21A19.21,19.21,0,0,0,256,496.21V519" fill="#fff" opacity="0.5" /><path d="M728,525l54.94-41.82.19-.12a12.67,12.67,0,0,1,19.38,10.78V514" />',
                        '<path d="M728,525l54.94-41.82.19-.12a12.67,12.67,0,0,1,19.38,10.78V514" fill="#fff" opacity="0.5" /><path d="M402.92,525,328.4,503.45A113.33,113.33,0,0,0,297,499H269.84A13.84,13.84,0,0,0,256,512.84V520a36,36,0,0,0,36,36H403Z" />',
                        '<path d="M755.08,556l0-31,33.41-21.55.14-.09a9.14,9.14,0,0,1,14,7.8v30.21A11.63,11.63,0,0,1,791,553h0" /></g>',
                        '<rect x="305" y="614" width="480" height="22" /><rect x="305" y="614" width="480" height="22" fill="#fff" opacity="0.5" /><rect x="292" y="525" width="506" height="89" rx="15.16" /><path d="M687.74,597H702V578H687a19,19,0,0,1-19-19H530a19,19,0,0,1-19,19H495v19h13.86" />',
                        '<line x1="448" y1="543" x2="448" y2="588" /><rect x="445" y="573" width="6" height="10" /><line x1="747" y1="543" x2="747" y2="588" /><rect x="744" y="573" width="6" height="10" />',
                        '<circle cx="448" cy="543" r="3" /><circle cx="747" cy="543" r="3" /><line x1="545" y1="512" x2="624" y2="512" transform="translate(0 -5)" /></g>'
                    )
                );
        } else if (mouth == 15) {
            // FANNY PACK
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '"><polygon points="781 555 305 605 305 585 781 535 781 555" fill="#333" /><path d="M573.06,554.74a5.31,5.31,0,0,0-5.83-4.62l-99.81,10.73-.62.06L367,571.64a5.31,5.31,0,0,0-4.72,5.76l2.44,27.25a5.32,5.32,0,0,0,3.4,4.49l43.79,26.38a5.33,5.33,0,0,0,2.47.32l59.71-6.42.63-.07,59.71-6.41a5.28,5.28,0,0,0,2.34-.84L574.11,587a5.32,5.32,0,0,0,2.36-5.1Z" />',
                        '<path d="M413.59,579.13H532.38a25.6,25.6,0,0,1,25.6,25.6v0A51.27,51.27,0,0,1,506.71,656H439.26A51.27,51.27,0,0,1,388,604.73v0a25.6,25.6,0,0,1,25.6-25.6Z" transform="translate(-63.28 54.07) rotate(-6.13)" /><rect x="408.02" y="595.29" width="128.11" height="19.22" rx="9.61" transform="translate(-61.93 53.9) rotate(-6.13)" /><rect x="408.02" y="595.29" width="128.11" height="19.22" rx="9.61"',
                        ' transform="translate(-61.93 53.9) rotate(-6.13)" fill="#000" opacity="0.5" /><line x1="513.72" y1="610.08" x2="515.36" y2="625.37" /><path d="M722.46,567.89l6.3-.68-3.47-31.9L719,536a13.78,13.78,0,0,1-25.81,2.81l-9,1,3.47,31.91,9-1a13.79,13.79,0,0,1,25.81-2.81Z" fill="#1a1a1a" /><polygon points="717.47 538.11 723.01 537.51 726.06 565.55 720.52 566.15 697.83 568.62 689.88 569.48 686.83 541.44 694.78 540.58 717.47 538.11"',
                        ' fill="#111111" /><line x1="545" y1="511" x2="624" y2="511" /><polygon points="460.85 640.63 491.09 637.27 490.23 628.63 460 631.98 460.85 640.63" fill="none" stroke="#fff" /></g>'
                    )
                );
        } else if (mouth == 16) {
            // MOUSTACHE
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '"><path d="M564.19,492.5h-.49a42.85,42.85,0,0,0-27.32,10.11,62.48,62.48,0,0,1-66.22,8.57A49.51,49.51,0,0,0,516,542h48.75a24.75,24.75,0,0,0,24.75-24.27C589.76,503.86,578.07,492.5,564.19,492.5Z" />',
                        '<path d="M615.46,492.5h.5a42.85,42.85,0,0,1,27.32,10.11,62.48,62.48,0,0,0,66.22,8.57A49.52,49.52,0,0,1,663.66,542H614.91a24.75,24.75,0,0,1-24.75-24.27C589.9,503.86,601.59,492.5,615.46,492.5Z" />',
                        '<path d="M590,560h0a20.9,20.9,0,0,0-19.83,27.51L590,647l19.83-59.49A20.9,20.9,0,0,0,590,560Z" />',
                        "</g>"
                    )
                );
        } else if (mouth == 17) {
            // RICH
            return
                string(
                    abi.encodePacked(
                        '<g fill="#cccced"><line x1="545" y1="511" x2="624" y2="511" /><path d="M501,520s91.56,48,171,0" fill="none" stroke="#ddc047" /><polygon points="647.16 527 587.95 559.89 528.75 527 304 527 304 615 781 615 781 527 647.16 527" />',
                        '<polyline points="587 564 493 504 443 534 587 564" /><rect x="309" y="615" width="467" height="25" stroke-width="10" fill="#b56924" /><polyline points="587 615 587 564 681 504 731 534 587 564" />',
                        '<g fill="#965520" stroke="none"><rect x="314" y="627.5" width="11" height="7.5" /><rect x="325" y="620" width="11" height="7.5" /><rect x="336" y="627.5" width="11" height="7.5" /><rect x="347" y="620" width="11" height="7.5" />',
                        '<rect x="358" y="627.5" width="11" height="7.5" /><rect x="369" y="620" width="11" height="7.5" /><rect x="380" y="627.5" width="11" height="7.5" /><rect x="391" y="620" width="11" height="7.5" /><rect x="402" y="627.5" width="11" height="7.5" /><rect x="413" y="620" width="11" height="7.5" /><rect x="424" y="627.5" width="11" height="7.5" /><rect x="435" y="620" width="11" height="7.5" />',
                        '<rect x="446" y="627.5" width="11" height="7.5" /><rect x="457" y="620" width="11" height="7.5" /><rect x="468" y="627.5" width="11" height="7.5" /><rect x="479" y="620" width="11" height="7.5" /><rect x="490" y="627.5" width="11" height="7.5" /><rect x="501" y="620" width="11" height="7.5" /><rect x="512" y="627.5" width="11" height="7.5" /><rect x="523" y="620" width="11" height="7.5" />',
                        '<rect x="534" y="627.5" width="11" height="7.5" /><rect x="545" y="620" width="11" height="7.5" /><rect x="556" y="627.5" width="11" height="7.5" /><rect x="567" y="620" width="11" height="7.5" /><rect x="578" y="627.5" width="11" height="7.5" /><rect x="589" y="620" width="11" height="7.5" /><rect x="600" y="627.5" width="11" height="7.5" /><rect x="611" y="620" width="11" height="7.5" />',
                        '<rect x="622" y="627.5" width="11" height="7.5" /><rect x="633" y="620" width="11" height="7.5" /><rect x="644" y="627.5" width="11" height="7.5" /><rect x="655" y="620" width="11" height="7.5" /><rect x="666" y="627.5" width="11" height="7.5" /><rect x="677" y="620" width="11" height="7.5" /><rect x="688" y="627.5" width="11" height="7.5" /><rect x="699" y="620" width="11" height="7.5" />',
                        '<rect x="710" y="627.5" width="11" height="7.5" /><rect x="721" y="620" width="11" height="7.5" /><rect x="732" y="627.5" width="11" height="7.5" /><rect x="743" y="620" width="11" height="7.5" /><rect x="754" y="627.5" width="11" height="7.5" /><rect x="765" y="620" width="6" height="7.5" /></g>',
                        '<rect x="560" y="608" width="54" height="40" stroke-width="10" stroke="#ddc047" fill="none" /><line x1="614" y1="628" x2="590" y2="628" fill="none" stroke="#ddc047" /></g>'
                    )
                );
        } else if (mouth == 18) {
            // STRIPED TSHIRT
            return
                string(
                    abi.encodePacked(
                        '<g><rect x="305" y="540" width="474" height="96" stroke-width="10" fill="#efe6c7" /><rect x="305" y="530" width="474" height="10" stroke-width="10" /><g stroke="none"><rect x="357" y="545" width="10" height="86" fill="#2f604c" />',
                        '<rect x="437" y="545" width="10" height="86" fill="#cc4646" /><rect x="457" y="545" width="10" height="86" fill="#765849" /><rect x="377" y="545" width="30" height="86" fill="#315d93" /><rect x="507" y="545" width="10" height="86" fill="#2f604c" />',
                        '<rect x="587" y="545" width="10" height="86" fill="#cc4646" /><rect x="607" y="545" width="10" height="86" fill="#765849" /><rect x="647" y="545" width="10" height="86" fill="#2f604c" /><rect x="727" y="545" width="10" height="86" fill="#cc4646" />',
                        '<rect x="747" y="545" width="10" height="86" fill="#765849" /><rect x="527" y="545" width="30" height="86" fill="#315d93" /><rect x="667" y="545" width="30" height="86" fill="#315d93" /></g>',
                        '<rect x="545" y="572" width="79" height="10" stroke-width="10" stroke="#ffd62c" /><line x1="545" y1="511" x2="624" y2="511" /></g>'
                    )
                );
        } else if (mouth == 19) {
            // BEARD
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '"><path d="M778,548.33V507H641a56,56,0,0,1-112,0H361V470H338v37h0v4h.07A128,128,0,0,0,466,635H761a45,45,0,0,0,45-45h0A45,45,0,0,0,778,548.33Z" />',
                        '<path d="M559.19,490.5h-.49a42.85,42.85,0,0,0-27.32,10.11,62.48,62.48,0,0,1-66.22,8.57A49.51,49.51,0,0,0,511,540h48.75a24.75,24.75,0,0,0,24.75-24.27C584.76,501.86,573.07,490.5,559.19,490.5Z" />',
                        '<path d="M610.46,490.5h.5a42.85,42.85,0,0,1,27.32,10.11,62.48,62.48,0,0,0,66.22,8.57A49.52,49.52,0,0,1,658.66,540H609.91a24.75,24.75,0,0,1-24.75-24.27C584.9,501.86,596.59,490.5,610.46,490.5Z" /><path d="M761,545a45,45,0,0,1,45,45h0" fill="none" />',
                        "</g>"
                    )
                );
        } else if (mouth == 19) {
            // SPIKES
            return
                string(
                    abi.encodePacked(
                        '<g fill="#ddd"><line x1="546" y1="511" x2="625" y2="511" /><rect x="305" y="534" width="467" height="72" fill="#232323" />',
                        '<polygon points="305 590 305 550 245 570 305 590" /><polygon points="772 590 772 550 832 570 772 590" /><path d="M347,550l-31,20,31,20a20,20,0,0,0,0-40Z" />',
                        '<path d="M728,550l31,20-31,20a20,20,0,0,1,0-40Z" /><circle cx="424.2" cy="570" r="20" /><circle cx="500.4" cy="570" r="20" /><circle cx="576.6" cy="570" r="20" />',
                        '<circle cx="652.8" cy="570" r="20" /></g>'
                    )
                );
        } else if (mouth == 20) {
            // HUNTER
            return
                string(
                    abi.encodePacked(
                        '<g><rect x="305" y="553" width="474" height="83" stroke-width="10" fill="#a02525" /><rect x="338" y="553" width="10" height="78" opacity="0.5" stroke="none" fill="#ddd"/><rect x="354" y="553" width="20" height="78" opacity="0.5" stroke="none"/><rect x="451" y="553" width="10" height="78" opacity="0.5" stroke="none"fill="#ddd"/>',
                        '<rect x="467" y="553" width="20" height="78" opacity="0.5" stroke="none"/><rect x="564" y="553" width="10" height="78" opacity="0.5" stroke="none"fill="#ddd"/><rect x="580" y="553" width="20" height="78" opacity="0.5" stroke="none"/><rect x="677" y="553" width="10" height="78" opacity="0.5" stroke="none"fill="#ddd"/>',
                        '<rect x="693" y="553" width="20" height="78" opacity="0.5" stroke="none"/><rect x="310" y="578" width="464" height="10" opacity="0.5" stroke="none"fill="#ddd"/><rect x="310" y="594" width="464" height="20" opacity="0.5" stroke="none"/><path d="M634.69,493.14H542.31A20.31,20.31,0,0,0,522,513.45v11.41h48.73a18.39,18.39,0,0,0,17.66-13.27.75.75,0,0,1,1.44,0,18.39,18.39,0,0,0,17.66,13.27H655V513.45A20.31,20.31,0,0,0,634.69,493.14Z" fill="#7c5b25"/>',
                        '<path d="M460.3,499h-150a18.32,18.32,0,0,0-17.18,24.69L304,553H503l-12.12-32.72A32.6,32.6,0,0,0,460.3,499Z" fill="#d6ba92"/><path d="M710.7,499h63a18.32,18.32,0,0,1,17.18,24.69L780,553H668l12.12-32.72A32.6,32.6,0,0,1,710.7,499Z" fill="#d6ba92"/></g>'
                    )
                );
        } else if (mouth == 21) {
            // Layer 2
            return
                string(
                    abi.encodePacked(
                        '<g><rect x="413" y="534" width="342" height="94" stroke-width="10" fill="#ffd62c" /><line x1="545" y1="511" x2="624" y2="511" /><g stroke="none"><path d="M473.35,594H460V566.29a4.13,4.13,0,0,0-1.33-3.12,4.27,4.27,0,0,0-3-1.24,4.48,4.48,0,0,0-3.23,1.25,4.2,4.2,0,0,0-1.29,3.11v31.76a4.29,4.29,0,0,0,4.36,4.35h17.86a4.29,4.29,0,0,0,3.07-1.18,4,4,0,0,0,1.28-3,4,4,0,0,0-1.28-3.07A4.33,4.33,0,0,0,473.35,594Z" />',
                        '<path d="M511.6,564.56a4.27,4.27,0,0,0-4-2.85,3.85,3.85,0,0,0-2.56.67,4.46,4.46,0,0,0-1.71,2.15l-13.69,32.86,0,.1a4.54,4.54,0,0,0-.21,1.33,4,4,0,0,0,1,2.69,3.68,3.68,0,0,0,3,1.17,3.87,3.87,0,0,0,2.32-.77,4.26,4.26,0,0,0,1.51-2l2.6-6.09h15.06l2.59,6a5,5,0,0,0,1.56,2.06,3.86,3.86,0,0,0,2.39.81,4.09,4.09,0,0,0,2.79-1.14,4,4,0,0,0,1.29-3.1,4.73,4.73,0,0,0-.36-1.71Zm-8.29,20.9,4-9.32,4,9.32Z" /><path d="M562.27,561.77a4.29,4.29,0,0,0-3.58,2.08l-8.25,12.08-8.86-12.22a4.29,4.29,0,0,0-3.49-1.94,4.73,4.73,0,0,0-3,1.16,4,4,0,0,0-1.52,3.19,4.74,4.74,0,0,0,.27,1.52,5.68,5.68,0,0,0,.92,1.67L546,584.23v13.82a4.27,4.27,0,0,0,4.3,4.35,4,4,0,0,0,2.93-1.25,4.24,4.24,0,0,0,1.25-3.1V585l11.32-16.21a4.44,4.44,0,0,0,.61-1.31,5.23,5.23,0,0,0,.17-1.27,4.37,4.37,0,0,0-4.3-4.41Z" />',
                        '<path d="M603.27,570.25a4.45,4.45,0,0,0,3.05-1.1,3.85,3.85,0,0,0,1.3-3,4,4,0,0,0-1.28-3.07,4.33,4.33,0,0,0-3.07-1.18H584.86a4.3,4.3,0,0,0-4.36,4.36v31.76a4.29,4.29,0,0,0,4.36,4.35h18.41a4.38,4.38,0,0,0,3.06-1.14,3.9,3.9,0,0,0,1.29-3,4,4,0,0,0-1.26-2.93,4.22,4.22,0,0,0-3.09-1.26h-13.9v-8.16h11.42a4.45,4.45,0,0,0,3.06-1.11,3.85,3.85,0,0,0,1.3-3,4,4,0,0,0-1.28-3.07,4.35,4.35,0,0,0-3.08-1.17H589.37v-7.35Z" /><path d="M654.57,595.14a1,1,0,0,1-.49-.55,6.63,6.63,0,0,1-.27-1.51c-.06-.72-.16-1.53-.31-2.41a9.23,9.23,0,0,0-.77-3.11,10.17,10.17,0,0,0-1.76-2.68,7,7,0,0,0-.61-.61,13.12,13.12,0,0,0,1.27-1.21,13.72,13.72,0,0,0,2.48-3.85,11.23,11.23,0,0,0,.94-4.46,13.12,13.12,0,0,0-1.68-6.63,12.53,12.53,0,0,0-4.38-4.53,11.23,11.23,0,0,0-5.88-1.66H627.28a4.29,4.29,0,0,0-4.35,4.36v31.76a3.94,3.94,0,0,0,1.59,3.17,5.23,5.23,0,0,0,3.37,1.18,3.61,3.61,0,0,0,2.92-1.33,4.69,4.69,0,0,0,1-3v-9.66h9.28a6.51,6.51,0,0,1,1.89.25,3.18,3.18,0,0,1,1.15.65,3,3,0,0,1,.7,1,3.46,3.46,0,0,1,.26,1.35,16.88,16.88,0,0,0,.62,5,9.09,9.09,0,0,0,1.71,3.24,8.72,8.72,0,0,0,2.14,1.84,6.68,6.68,0,0,0,1.82.63,6.29,6.29,0,0,0,1.14.11,6.1,6.1,0,0,0,1.13-.11,3.68,3.68,0,0,0,2.09-1.22,3.6,3.6,0,0,0,.86-3.28A4.08,4.08,0,0,0,654.57,595.14Zm-9.74-23.64a5.27,5.27,0,0,1,1.07,3.41,8.48,8.48,0,0,1-.54,3.08,5.81,5.81,0,0,1-1.3,2.11,1.81,1.81,0,0,1-1.23.63h-11V570.25h11A2.67,2.67,0,0,1,644.83,571.5Z" />',
                        '<path d="M722.57,595.53a4,4,0,0,0-2.9-1.17h-9l5.38-5.74a36.42,36.42,0,0,0,3.51-4.47,23,23,0,0,0,2.44-4.86,15.14,15.14,0,0,0,.91-5,13.44,13.44,0,0,0-1.61-6.58,11.84,11.84,0,0,0-4.56-4.62,13.87,13.87,0,0,0-6.92-1.67,13.68,13.68,0,0,0-5.7,1.36,17.65,17.65,0,0,0-5.12,3.55,16.4,16.4,0,0,0-1.67,1.94,4,4,0,0,0-.82,2.4,3.71,3.71,0,0,0,1.35,2.86,4.16,4.16,0,0,0,4.41.89,3.8,3.8,0,0,0,1.82-1.47,10.07,10.07,0,0,1,2.65-2.57,4.42,4.42,0,0,1,5-.24,5.52,5.52,0,0,1,1.82,1.87,4.81,4.81,0,0,1,.68,2.56,7.85,7.85,0,0,1-1.09,3.67,20.59,20.59,0,0,1-3,4.16l-12,12.81a4.38,4.38,0,0,0-1.27,3.1,4.12,4.12,0,0,0,1.1,2.94,3.9,3.9,0,0,0,3,1.19h18.69a4,4,0,0,0,2.89-1.13,3.77,3.77,0,0,0,1.18-2.83A4,4,0,0,0,722.57,595.53Z" /><circle cx="430.5" cy="551.5" r="5.5" /><circle cx="737.5" cy="551.5" r="5.5" />',
                        '<circle cx="430.5" cy="611.5" r="5.5" /><circle cx="737.5" cy="611.5" r="5.5" /></g></g>'
                    )
                );
        }
        return "";
    }
}
