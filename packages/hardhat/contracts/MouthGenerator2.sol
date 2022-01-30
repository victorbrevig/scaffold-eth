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
        if (mouth == 11) {
            // BURP
            return
                string(
                    abi.encodePacked(
                        '<g><path d="M568.5,548A21.51,21.51,0,0,1,547,526.5h0A21.51,21.51,0,0,1,568.5,505" fill="none" />',
                        '<path d="M620.05,505.62l-3.44,8.44a6.09,6.09,0,0,1-11.57,0l-1.6-4.88a6.09,6.09,0,0,0-11.57,0l-1.6,4.87a6.08,6.08,0,0,1-11.56,0l-1.6-4.86a6.51,6.51,0,0,0-7.11-4.14" fill="none" />',
                        '<path d="M570,548.1a6,6,0,0,0,7.11-4l1.6-4.87a6.08,6.08,0,0,1,11.56,0l1.6,4.87a6.09,6.09,0,0,0,11.57,0l1.6-4.88a6.09,6.09,0,0,1,11.57,0l3.44,8.45" fill="none" />',
                        '<path d="M551,517a18,18,0,0,0-1.81.1A21.44,21.44,0,0,0,562,547a17,17,0,0,0-11-30Z" fill="#912424" />',
                        '<circle cx="649" cy="524" r="8" fill="none" /><line x1="690" y1="497" x2="690" y2="513" />',
                        '<line x1="698" y1="505" x2="682" y2="505" /><circle cx="679" cy="536" r="5" stroke="none" />',
                        '<circle cx="679" cy="552" r="5" stroke="none" /><circle cx="687" cy="544" r="5" stroke="none" />',
                        '<circle cx="671" cy="544" r="5" stroke="none" /><circle cx="713" cy="534" r="8" fill="none" /></g>'
                    )
                );
        } else if (mouth == 12) {
            // FOOTBALL KIT
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '"><rect x="305" y="529" width="475" height="107" />',
                        '<line x1="545.38" y1="513" x2="624.38" y2="513" /><rect x="305" y="529" width="475" height="24" stroke-width="10" fill="#fff" />',
                        '<rect x="320" y="558" width="12" height="73" fill="#fff" stroke="none" /><rect x="342" y="558" width="12" height="73" fill="#fff" stroke="none" />',
                        '<circle cx="705" cy="589.75" r="16" fill="#fff" /><line x1="439" y1="582.25" x2="465" y2="582.25" />',
                        '<line x1="439" y1="597.25" x2="465" y2="597.25" opacity="0.3" /><polyline points="589 579 572 579 572 609 589 609 589 594 572 594" fill="none" stroke="#fff" /></g>'
                    )
                );
        } else if (mouth == 13) {
            // BULLET VEST
            return
                string(
                    abi.encodePacked(
                        '<g><path d="M652,518a30.68,30.68,0,0,0-30.63-29H545.68a30.68,30.68,0,0,0-30.63,29H318v57H777V518Z" fill="#606060" stroke="none" fill-opacity="0.6"/><path d="M651,511a30.68,30.68,0,0,0-30.63-29H544.68a30.68,30.68,0,0,0-30.63,29H313v57H772V511Z" fill="#4b4b4b" stroke="none" opacity="0.7" />',
                        '<line x1="313" y1="509" x2="313" y2="553" transform="translate(2 0)" /><line x1="772" y1="509" x2="772" y2="553" transform="translate(2 0)" />',
                        '<polygon points="750 553 750 502 710 502 710 545 460 545 460 502 410 502 410 553 297 553 297 641 782 641 782 553 750 553" fill="#262626" />',
                        '<rect x="460" y="545" width="250" height="35" stroke-width="10" /><rect x="460" y="580" width="250" height="20.22" fill="#424242" /><rect x="460" y="600.39" width="250" height="20.22" fill="#424242" /><rect x="460" y="620.78" width="250" height="20.22" fill="#424242" />',
                        '<rect x="290" y="580" width="136" height="49" fill="#424242" /><rect x="745" y="580" width="47" height="49" fill="#424242" /><line x1="725" y1="522" x2="735" y2="522" opacity="0.2" stroke="#fff" /><line x1="427" y1="522" x2="443" y2="522" opacity="0.2" stroke="#fff" />',
                        '<path d="M324,607.05v23.52H306V607.05a96.94,96.94,0,0,1,4.22-28.16l1.88-6.17c.7-2.29,5.1-2.29,5.8,0l1.88,6.17A96.94,96.94,0,0,1,324,607.05Z" fill="#ffd62c" />',
                        '<path d="M344,607.05v23.52H326V607.05a96.94,96.94,0,0,1,4.22-28.16l1.88-6.17c.7-2.29,5.1-2.29,5.8,0l1.88,6.17A96.94,96.94,0,0,1,344,607.05Z" fill="#ffd62c" />',
                        '<path d="M364,607.05v23.52H346V607.05a96.94,96.94,0,0,1,4.22-28.16l1.88-6.17c.7-2.29,5.1-2.29,5.8,0l1.88,6.17A96.94,96.94,0,0,1,364,607.05Z" fill="#ffd62c" />',
                        '<path d="M384,607.05v23.52H366V607.05a96.94,96.94,0,0,1,4.22-28.16l1.88-6.17c.7-2.29,5.1-2.29,5.8,0l1.88,6.17A96.94,96.94,0,0,1,384,607.05Z" fill="#ffd62c" />',
                        '<path d="M404,607.05v23.52H386V607.05a96.94,96.94,0,0,1,4.22-28.16l1.88-6.17c.7-2.29,5.1-2.29,5.8,0l1.88,6.17A96.94,96.94,0,0,1,404,607.05Z" fill="#ffd62c" /><line x1="544" y1="511" x2="624" y2="511"/>',
                        "</g>"
                    )
                );
        } else if (mouth == 14) {
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
        }
        return "";
    }
}
