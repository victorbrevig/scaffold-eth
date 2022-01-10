pragma solidity ^0.8.0;
//SPDX-License-Identifier: MIT

import "./ToColor.sol";

contract SVGMouthGenerator {
    using ToColor for bytes3;

    constructor() {}

    function render(uint8 mouth, string memory color)
        external
        pure
        returns (string memory)
    {
        if (mouth == 0) {
            // default
            return '<g><line x1="545.38" y1="513" x2="624.38" y2="513" /></g>';
        } else if (mouth == 1) {
            // covid mask
            return
                string(
                    abi.encodePacked(
                        "<g>",
                        '<line x1="547.38" y1="513" x2="626.38" y2="513" />',
                        '<rect x="472" y="487" width="229" height="118" rx="23" fill="#cbe7ff" />',
                        '<path d="M472,510a23,23,0,0,1,23-23H678a23,23,0,0,1,23,23Z" fill="#fff" />',
                        '<line x1="498" y1="535" x2="675" y2="535" stroke="#85b9e7" />',
                        '<line x1="498" y1="558" x2="675" y2="558" stroke="#85b9e7" />',
                        '<line x1="498" y1="581" x2="675" y2="581" stroke="#85b9e7" />',
                        '<path d="M472.29,565.25H296.71a29.13,29.13,0,0,1-29.12-29.13h0A29.12,29.12,0,0,1,296.71,507H472.29" fill="none" />',
                        '<path d="M772.16,507H700.59" fill="none" />',
                        '<path d="M700.59,565.25h71.57" fill="none" />',
                        "</g>"
                    )
                );
        } else if (mouth == 2) {
            // SMOKER
            return
                string(
                    abi.encodePacked(
                        '<g><rect x="863" y="443" width="39" height="137" fill="#fff" transform="translate(351 1394) rotate(-90)" />',
                        '<rect x="819" y="487" width="39" height="49" transform="translate(307 1350) rotate(-90)" fill="#d68a25" /><rect x="922.5" y="502.5" width="39" height="18" transform="translate(410.5 1453.5) rotate(-90)" />',
                        '<line x1="913" y1="350" x2="913" y2="462"/><line x1="931" y1="462" x2="931" y2="398"/>',
                        '<circle cx="585" cy="511" r="12" /></g>'
                    )
                );
        } else if (mouth == 3) {
            // mobster
            return
                string(
                    abi.encodePacked(
                        '<g><g fill="#',
                        color,
                        '">',
                        '<rect x="594.5" y="592.5" width="19" height="50" /><rect x="325" y="572.56" width="440" height="20" />',
                        '<rect x="562" y="618" width="79.5" height="55.5" rx="13.11" /><rect x="302" y="563.06" width="39" height="39" rx="13.22" />',
                        '<rect x="364.86" y="563.06" width="39" height="39" rx="13.22" /><rect x="427.71" y="563.06" width="39" height="39" rx="13.22" />',
                        '<rect x="490.57" y="563.06" width="39" height="39" rx="13.22" /><rect x="679.14" y="563.06" width="39" height="39" rx="13.22" />',
                        '<rect x="742" y="563.06" width="39" height="39" rx="13.22" /><rect x="616.29" y="563.06" width="39" height="39" rx="13.22" />',
                        '<rect x="553.43" y="563.06" width="39" height="39" rx="13.22" />',
                        '</g><line x1="544.38" y1="513" x2="623.38" y2="513" /><rect x="518" y="491" width="55" height="6" />',
                        '<rect x="594" y="491" width="55" height="6" /><rect x="580" y="528" width="8" height="16" /></g>'
                    )
                );
        } else if (mouth == 4) {
            // bandana
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '" transform="translate(0 10)"><polygon points="303 503 585 648 654.64 598.71 780 510 780 490 303 490 303 503" /><circle cx="288" cy="498" r="21" />',
                        '<path d="M267,498H239.69A24.68,24.68,0,0,1,215,473.31V446Z" /><path d="M267,498v27.31A24.68,24.68,0,0,1,242.31,550H215Z" /><path d="M615,495a39,39,0,0,1-78,0" /><path d="M595,495a19,19,0,0,1-38,0" fill="none" stroke="#fff" stroke-linecap="butt" />',
                        '<polyline points="738.93 498.94 642.56 567.14 588.52 605.38" fill="none" stroke="#000" stroke-dasharray="1 14.98" /><polyline points="582.41 609.71 582 610 582 610.32 581.55 610.09" /><line x1="567.84" y1="603.04" x2="355.3" y2="493.75" fill="none" stroke-dasharray="1.03 15.42"',
                        'stroke-linecap="round" stroke-linejoin="round" /><line x1="712" y1="501.72" x2="711.59" y2="502.01" fill="none" stroke="#fff" /><polyline points="699.4 510.64 628.43 560.87 588.5 589.12" fill="none" stroke="#fff" stroke-dasharray="1 14.93" />',
                        '<polyline points="582 594.39 582 594.89 581.55 594.66" fill="none" stroke="#fff" /><line x1="568.53" y1="587.97" x2="408.3" y2="505.58" fill="none" stroke-dasharray="0.98 14.65" stroke="#fff" /><line x1="401.78" y1="502.23" x2="401.34" y2="502" fill="none" stroke="#fff" /><line x1="666.14" y1="506" x2="665.73" y2="506.29" fill="none" stroke="#fff" stroke-width="20" />',
                        '<polyline points="638.56 525.52 612.05 544.28 595.99 555.64" fill="none" stroke="#fff" stroke-width="20" stroke-dasharray="1.11 33.29" /><polyline points="581.76 567.5 581.7 568 581.25 567.77" fill="none" stroke="#fff" stroke-width="20" /><line x1="552.06" y1="552.76" x2="476.16" y2="513.73" fill="none" stroke-dasharray="1.09 32.83" stroke-width="20" stroke="#fff" />',
                        '<line x1="461.56" y1="506.23" x2="461.12" y2="506" fill="none" stroke="#fff" stroke-width="20" /></g>'
                    )
                );
        } else if (mouth == 5) {
            // whistle
            return
                string(
                    abi.encodePacked(
                        '<g><path d="M485,493a31,31,0,0,1,0,62" fill="none" />',
                        '<path d="M659,493a31,31,0,0,1,0,62" fill="none" /><circle cx="817" cy="543" r="10" />',
                        '<line x1="827" y1="514" x2="827" y2="546" /><rect x="827" y="512" width="12" height="4.94" />',
                        '<path d="M571,520a11,11,0,1,1,11,11" fill="none" /><path d="M571,542a11,11,0,1,0,11-11" fill="none" />',
                        '<path d="M367.39,475.27a17.5,17.5,0,1,0-12.56,29.86l18.22,18.22a9.5,9.5,0,0,0,13.43-13.43L371.1,494.53A17.49,17.49,0,0,0,367.39,475.27Z" fill="#fff" /></g>'
                    )
                );
        } else if (mouth == 6) {
            // puffer jacket
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '" transform="translate(0 10)">',
                        '<rect x="292" y="620.33" width="503" height="46.67" rx="23.33" transform="translate(0 -30)" />',
                        '<rect x="292" y="573.67" width="503" height="46.67" rx="23.33" transform="translate(0 -30)" />',
                        '<rect x="292" y="520" width="503" height="53.67" rx="24.31" fill="#1e1e1e" transform="translate(0 -30)" />',
                        '<path d="M600.19,636c7.63,0,13.81-5.89,13.81-13.15V602.49c0-7.27-6.18-13.16-13.81-13.16h-30c7.63,0,13.81,5.89,13.81,13.16v20.36c0,7.26-6.18,13.15-13.81,13.15Z" />',
                        '<path d="M600.19,589.33c7.63,0,13.81-5.89,13.81-13.15V555.82c0-7.26-6.18-13.15-13.81-13.15h-30c7.63,0,13.81,5.89,13.81,13.15v20.36c0,7.26-6.18,13.15-13.81,13.15Z" />',
                        '<path d="M600.19,542.67c7.63,0,13.81-6.77,13.81-15.13V504.12c0-8.35-6.18-15.12-13.81-15.12h-30c7.63,0,13.81,6.77,13.81,15.12v23.42c0,8.36-6.18,15.13-13.81,15.13Z" />',
                        '<path d="M392,605h24a39,39,0,0,0,39-39h0" fill="none" opacity="0.3" /><path d="M777,605a39,39,0,0,1-39-39h0" fill="none" opacity="0.3" />',
                        '<path d="M712,522v-3.17A10.83,10.83,0,0,0,701.17,508H698" fill="none" stroke="#fff" />',
                        '<circle cx="699" cy="521" r="5" fill="#fff" stroke="none" /><line x1="678" y1="508" x2="684" y2="508" opacity="0.3" stroke="#fff" /><line x1="673" y1="521" x2="684" y2="521" opacity="0.3" stroke="#fff" /></g>'
                    )
                );
        } else if (mouth == 7) {
            // floatie
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '" transform="translate(-10 0)"><path d="M238.39,512.39A10.74,10.74,0,0,0,236,524l-1.88-1.88A10.72,10.72,0,1,0,219,537.27l1.88,1.88a10.73,10.73,0,0,0-11.59,17.54l64.62,52.48,8.49-8.49.61-.61,13.95-14,.61-.6L306,577l-52.48-64.62A10.73,10.73,0,0,0,238.39,512.39Z" />',
                        '<line x1="249" y1="536" x2="259" y2="548" fill="none" stroke="#fff" /><rect x="254.15" y="549" width="599.85" height="83.74" rx="41.87" /><path d="M886.36,457h24.08a0,0,0,0,1,0,0v56.56a23,23,0,0,1-23,23h-1.08a0,0,0,0,1,0,0V457A0,0,0,0,1,886.36,457Z" fill="#000" />',
                        '<rect x="886.36" y="457.03" width="24.08" height="49.2" fill="#fff" /><path d="M853.91,586V405.73a9.42,9.42,0,0,1,9.42-9.42h0a9.42,9.42,0,0,1,9.42,9.42v45a25.12,25.12,0,0,0,25.12,25.12h0A25.13,25.13,0,0,0,923,450.75v-45a59.68,59.68,0,0,0-59.67-59.67h0a59.67,59.67,0,0,0-59.67,59.67V576" /><circle cx="898.92" cy="442.37" r="3.14" fill="#fff" />',
                        '<path d="M863.33,367a38.73,38.73,0,0,1,38.73,38.73" fill="none" stroke="#fff" /><line x1="316" y1="568" x2="396.72" y2="568" stroke="#fff"/><line x1="662.65" y1="582.4" x2="662.65" y2="609" /><<line x1="645.72" y1="609" x2="679.58" y2="609" /><circle cx="596" cy="515" r="6" fill="none" />',
                        '<polyline points="596 515 641 515 661 568" fill="none" stroke="#ffaaaa" /><circle cx="689" cy="530" r="23" fill="#ffd62c" /><circle cx="689" cy="530" r="11" fill="#fffbeb" stroke="none" /><path d="M633.18,564a32.65,32.65,0,0,0,58.94,0Z" fill="#d22" opacity="0.6" stroke="none" />',
                        '<path d="M636.66,530.19a32.65,32.65,0,1,0,52,0Z" fill="none" /><path d="M557,499a16,16,0,0,1,0,32" fill="none" /></g>'
                    )
                );
        } else if (mouth == 8) {
            // scarf
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '"><rect x="305" y="494" width="479" height="84" />',
                        '<path d="M784,561H305a5,5,0,0,1,0-10H784a5,5,0,0,1,0,10Z" stroke="none" opacity="0.8" fill="#000" />',
                        '<path d="M784,551H305a5,5,0,0,1,0-10H784a5,5,0,0,1,0,10Z" fill="#fff" stroke="none" opacity="0.6" />',
                        '<path d="M632,583a5,5,0,0,1-5-5V494a5,5,0,0,1,10,0v84A5,5,0,0,1,632,583Z" opacity="0.8" stroke="none" fill="#000" />',
                        '<path d="M642,583a5,5,0,0,1-5-5V494a5,5,0,0,1,10,0v84A5,5,0,0,1,642,583Z" fill="#fff" opacity="0.6" stroke="none" />',
                        '<path d="M662,583a5,5,0,0,1-5-5V494a5,5,0,0,1,10,0v84A5,5,0,0,1,662,583Z" fill="#fff" opacity="0.6" stroke="none" />',
                        '<path d="M652,583a5,5,0,0,1-5-5V494a5,5,0,0,1,10,0v84A5,5,0,0,1,652,583Z" opacity="0.8" stroke="none" fill="#000" />',
                        '<path d="M784,511H737V494a5,5,0,0,0-10,0v17H487V494a5,5,0,0,0-10,0v17H305a5,5,0,0,0,0,10H477v57a5,5,0,0,0,10,0V521H727v57a5,5,0,0,0,10,0V521h47a5,5,0,0,0,0-10Z" fill="#ff2c2c" opacity="0.8" stroke="none" />',
                        '<rect x="305" y="494" width="479" height="84" stroke-width="10" stroke="#000" fill="none" /><line x1="354.57" y1="704.5" x2="354.57" y2="727" />',
                        '<line x1="376.23" y1="704.5" x2="376.23" y2="727" /><line x1="397.9" y1="704.5" x2="397.9" y2="727" /><line x1="419.57" y1="704.5" x2="419.57" y2="727" /><rect x="275.25" y="551.25" width="222.5" height="84" transform="translate(979.75 206.75) rotate(90)" />',
                        '<path d="M366.5,709.5a5,5,0,0,1-5-5V482a5,5,0,0,1,10,0V704.5A5,5,0,0,1,366.5,709.5Z" opacity="0.8" stroke="none" fill="#000" /><path d="M376.5,709.5a5,5,0,0,1-5-5V482a5,5,0,0,1,10,0V704.5A5,5,0,0,1,376.5,709.5Z" fill="#fff" opacity="0.6" stroke="none" />',
                        '<path d="M428.5,539h-17V704.5a5,5,0,0,1-10,0V539h-57a5,5,0,0,1,0-10h57V482a5,5,0,0,1,10,0v47h17a5,5,0,0,1,0,10Z" opacity="0.8" stroke="none" fill="#ff2c2c" /><path d="M344.5,609h84a5,5,0,0,0,0-10h-84a5,5,0,0,0,0,10Z" opacity="0.8" stroke="none" fill="#000" /><path d="M344.5,619h84a5,5,0,0,0,0-10h-84a5,5,0,0,0,0,10Z" fill="#fff" opacity="0.6" stroke="none" />',
                        '<path d="M344.5,629h84a5,5,0,0,0,0-10h-84a5,5,0,0,0,0,10Z" stroke="none" opacity="0.8" fill="#000" /><path d="M344.5,639h84a5,5,0,0,0,0-10h-84a5,5,0,0,0,0,10Z" fill="#fff" stroke="none" opacity="0.6" /><rect x="275.25" y="551.25" width="222.5" height="84" transform="translate(979.75 206.75) rotate(90)" fill="none" /></g>'
                    )
                );
        } else if (mouth == 9) {
            // TEETH
            return
                string(
                    abi.encodePacked(
                        '<g><path d="M546,511h61a18,18,0,0,0,18-18h0" fill="none" /><path d="M546,511h61a18,18,0,0,1,18,18h0" fill="none" />',
                        '<path d="M578,511a18,18,0,0,0,18-18h0" fill="none" /><path d="M578,511a18,18,0,0,1,18,18h0" fill="none" /><path d="M548,511a18,18,0,0,0,18-18h0" fill="none" />',
                        '<path d="M548,511a18,18,0,0,1,18,18h0" fill="none" />',
                        '<rect x="705.22" y="500.95" width="78.78" height="17.03" stroke-width="10" stroke="#000" stroke-linecap="round" stroke-linejoin="round" fill="#ea8b9d" />',
                        '<rect x="705.22" y="517.98" width="78.78" height="17.03" fill="#fff" /><line x1="764.47" y1="517.98" x2="764.47" y2="535.01" />',
                        '<line x1="745.3" y1="517.98" x2="745.3" y2="535.01" /><line x1="726.14" y1="517.98" x2="726.14" y2="535.01" />',
                        '<rect x="675.92" y="572.78" width="78.78" height="17.03" transform="translate(620.55 -335.54) rotate(45)" fill="#ea8b9d" />',
                        '<rect x="687.96" y="560.74" width="78.78" height="17.03" transform="translate(615.56 -347.59) rotate(45)" fill="#fff" />',
                        '<line x1="735.37" y1="589.32" x2="747.42" y2="577.27" /><line x1="721.82" y1="575.77" x2="733.87" y2="563.72" />',
                        '<line x1="708.27" y1="562.22" x2="720.32" y2="550.17" /></g>'
                    )
                );
        } else if (mouth == 10) {
            // SUIT
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '"><rect x="300" y="531" width="485" height="108" stroke-width="10" /><line x1="319" y1="536" x2="319" y2="634" fill="none" stroke="#fff" opacity="0.2" />',
                        '<line x1="349" y1="536" x2="349" y2="634" fill="none" stroke="#fff" opacity="0.2" /><line x1="379" y1="536" x2="379" y2="634" fill="none" stroke="#fff" opacity="0.2" /><line x1="409" y1="536" x2="409" y2="634" fill="none" stroke="#fff" opacity="0.2" />',
                        '<line x1="439" y1="536" x2="439" y2="634" fill="none" stroke="#fff" opacity="0.2" /><line x1="469" y1="536" x2="469" y2="634" fill="none" stroke="#fff" opacity="0.2" />',
                        '<line x1="499" y1="536" x2="499" y2="634" fill="none" stroke="#fff" opacity="0.2" /><line x1="529" y1="536" x2="529" y2="634" fill="none" stroke="#fff" opacity="0.2" />',
                        '<line x1="559" y1="536" x2="559" y2="634" fill="none" stroke="#fff" opacity="0.2" /><line x1="589" y1="536" x2="589" y2="634" fill="none" stroke="#fff" opacity="0.2" /><line x1="619" y1="536" x2="619" y2="634" fill="none" stroke="#fff" opacity="0.2" /><line x1="649" y1="536" x2="649" y2="634" fill="none" stroke="#fff" opacity="0.2" />',
                        '<line x1="679" y1="536" x2="679" y2="634" fill="none" stroke="#fff" opacity="0.2" /><line x1="709" y1="536" x2="709" y2="634" fill="none" stroke="#fff" opacity="0.2" /><line x1="739" y1="536" x2="739" y2="634" fill="none" stroke="#fff" opacity="0.2" /><line x1="769" y1="536" x2="769" y2="634" fill="none" stroke="#fff" opacity="0.2" />',
                        '<polygon points="659 552 588.98 592 511 552 511 531 659 531 659 552" fill="#fff" stroke="#000" /><circle cx="565" cy="616" r="2" /><path d="M575,531h24a0,0,0,0,1,0,0v42a12,12,0,0,1-12,12h0a12,12,0,0,1-12-12V531A0,0,0,0,1,575,531Z" fill="#1d1d1d" />',
                        '<rect x="575" y="531" width="24" height="27" fill="#1d1d1d" /><polygon points="662 550 605.75 550 587 531 662 531 662 550" fill="#fff" /><polygon points="568.25 550 512 550 512 531 587 531 568.25 550" fill="#fff" /><polygon points="507.02 545.25 505.27 570.46 587 600 512.48 523 436.13 533 484 560 507.02 545.25" />',
                        '<polygon points="666.11 545.25 667.86 570.46 586.13 600 660.66 524 737 533 689.13 560 666.11 545.25" /><polygon points="507.02 545.25 505.27 570.46 587 600 512.48 523 436.13 533 484 560 507.02 545.25" fill="#000" opacity="0.2" /><polygon points="666.11 545.25 667.86 570.46 586.13 600 660.66 524 737 533 689.13 560 666.11 545.25" fill="#000" opacity="0.2" />',
                        '<line x1="587" y1="587" x2="587" y2="639" /><line x1="545" y1="511" x2="624" y2="511" transform="translate(0 -10)" /><line x1="349" y1="600" x2="409" y2="600" />',
                        '<line x1="709" y1="600" x2="769" y2="600" /></g>'
                    )
                );
        } else if (mouth == 11) {
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
                        '<g><path d="M651,511a30.68,30.68,0,0,0-30.63-29H544.68a30.68,30.68,0,0,0-30.63,29H313v57H772V511Z" fill="#4b4b4b" stroke="none" opacity="0.7" />',
                        '<line x1="313" y1="509" x2="313" y2="553" transform="translate(2 0)" /><line x1="772" y1="509" x2="772" y2="553" transform="translate(2 0)" />',
                        '<polygon points="750 553 750 502 710 502 710 545 460 545 460 502 410 502 410 553 297 553 297 641 782 641 782 553 750 553" fill="#262626" />',
                        '<rect x="460" y="545" width="250" height="35" stroke-width="10" /><rect x="460" y="580" width="250" height="20.22" fill="#424242" /><rect x="460" y="600.39" width="250" height="20.22" fill="#424242" /><rect x="460" y="620.78" width="250" height="20.22" fill="#424242" />',
                        '<rect x="290" y="580" width="136" height="49" fill="#424242" /><rect x="745" y="580" width="47" height="49" fill="#424242" /><line x1="725" y1="522" x2="735" y2="522" opacity="0.2" stroke="#fff" /><line x1="427" y1="522" x2="443" y2="522" opacity="0.2" stroke="#fff" />',
                        '<path d="M324,607.05v23.52H306V607.05a96.94,96.94,0,0,1,4.22-28.16l1.88-6.17c.7-2.29,5.1-2.29,5.8,0l1.88,6.17A96.94,96.94,0,0,1,324,607.05Z" fill="#ffd62c" />',
                        '<path d="M344,607.05v23.52H326V607.05a96.94,96.94,0,0,1,4.22-28.16l1.88-6.17c.7-2.29,5.1-2.29,5.8,0l1.88,6.17A96.94,96.94,0,0,1,344,607.05Z" fill="#ffd62c" />',
                        '<path d="M364,607.05v23.52H346V607.05a96.94,96.94,0,0,1,4.22-28.16l1.88-6.17c.7-2.29,5.1-2.29,5.8,0l1.88,6.17A96.94,96.94,0,0,1,364,607.05Z" fill="#ffd62c" />',
                        '<path d="M384,607.05v23.52H366V607.05a96.94,96.94,0,0,1,4.22-28.16l1.88-6.17c.7-2.29,5.1-2.29,5.8,0l1.88,6.17A96.94,96.94,0,0,1,384,607.05Z" fill="#ffd62c" />',
                        '<path d="M404,607.05v23.52H386V607.05a96.94,96.94,0,0,1,4.22-28.16l1.88-6.17c.7-2.29,5.1-2.29,5.8,0l1.88,6.17A96.94,96.94,0,0,1,404,607.05Z" fill="#ffd62c" />',
                        '<path d="M566.93,501a15.18,15.18,0,0,0-15.18,15.18h0a15.18,15.18,0,0,0,15.18,15.18h48.68V501Z" /><rect x="565" y="501" width="26" height="21" stroke-width="10" fill="#fff" /></g>'
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
        }
        return "";
    }
}
