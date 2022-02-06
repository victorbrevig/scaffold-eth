pragma solidity ^0.8.0;
//SPDX-License-Identifier: MIT

import "./ToColor.sol";

contract SVGFullFaceGenerator {
    using ToColor for bytes3;

    constructor() {}

    function render(uint8 fullFace, string memory color)
        external
        pure
        returns (string memory)
    {
        if (fullFace == 0) {
            // animal skull
            return
                string(
                    abi.encodePacked(
                        '<g fill="#ff4848"><path d="M505.5,110h0A27.5,27.5,0,0,0,478,137.5V193l27.5,40L533,193V137.5A27.5,27.5,0,0,0,505.5,110Z" fill="#f0f0f0" />',
                        '<path d="M663.5,110h0A27.5,27.5,0,0,0,636,137.5V193l27.5,40L691,193V137.5A27.5,27.5,0,0,0,663.5,110Z" fill="#f0f0f0" />',
                        '<path d="M584.5,60h0A27.5,27.5,0,0,0,557,87.5V193l27.5,40L612,193V87.5A27.5,27.5,0,0,0,584.5,60Z" fill="#f0f0f0" /><line x1="506" y1="233" x2="506" y2="291" /><line x1="585" y1="233" x2="585" y2="291" />',
                        '<line x1="664" y1="233" x2="664" y2="291" /><line x1="585" y1="180" x2="611.89" y2="153.11" /><line x1="584" y1="146" x2="611.91" y2="118.09" /><line x1="506" y1="192" x2="531.96" y2="166.04" /><line x1="664" y1="190" x2="636.5" y2="162.5" />',
                        '<path d="M478,137.5A27.5,27.5,0,0,1,505.5,110h0A27.5,27.5,0,0,1,533,137.5l-27.75,27.75Z" /><path d="M557,86.5A27.5,27.5,0,0,1,584.5,59h0A27.5,27.5,0,0,1,612,86.5l-27.75,27.75Z" /><path d="M636.5,137A27.5,27.5,0,0,1,664,109.5h0A27.5,27.5,0,0,1,691.5,137l-27.75,27.75Z" />',
                        '<path d="M533,150.58V137.5A27.5,27.5,0,0,0,505.5,110h0A27.5,27.5,0,0,0,478,137.5V154" fill="none" /><path d="M612,99.58V86.5A27.5,27.5,0,0,0,584.5,59h0A27.5,27.5,0,0,0,557,86.5V103" fill="none" />',
                        '<path d="M691,149.58V136.5A27.5,27.5,0,0,0,663.5,109h0A27.5,27.5,0,0,0,636,136.5V153" fill="none" /><line x1="585" y1="114" x2="557.5" y2="86.5" />',
                        '<path d="M728,383.05H715.73V362.72a27.56,27.56,0,0,0-27.56-27.56H651.08V267.92H518.19v67.24H481.1a27.56,27.56,0,0,0-27.56,27.56v20.33H441.27a63.15,63.15,0,0,0-63.15,63.15h0a63.15,63.15,0,0,0,63.15,63.15h12.27v46.87a64.66,64.66,0,0,0,64.65,64.65h0v98a66.45,66.45,0,0,0,66.44,66.45h0a66.45,66.45,0,0,0,66.45-66.45v-98h0a64.66,64.66,0,0,0,64.65-64.65V509.35H728a63.15,63.15,0,0,0,63.15-63.15h0A63.15,63.15,0,0,0,728,383.05Z" fill="#f4f1df" /><rect x="593.33" y="679.99" width="25.56" height="70.55" rx="12.78" fill="#000" /><rect x="550.38" y="679.99" width="25.56" height="70.55" rx="12.78" fill="#000" /><circle cx="453.47" cy="446.86" r="38.86" fill="#000" /><circle cx="715.23" cy="446.86" r="38.86" fill="#000" /><path d="M610.4,642V392.4a25.3,25.3,0,0,1,25.3-25.29h0" fill="none" />',
                        '<path d="M558.56,642.16V392.52a25.29,25.29,0,0,0-25.29-25.29h0" fill="none" /><path d="M518.19,312.16h-227A86.16,86.16,0,0,1,205,226h0a50.1,50.1,0,0,0,50.1,50.1H518.19Z" fill="#d6d1ab" />',
                        '<path d="M650.81,312.16h227A86.16,86.16,0,0,0,964,226h0a50.1,50.1,0,0,1-50.1,50.1H650.81Z" fill="#d6d1ab" /><line x1="549" y1="322" x2="620" y2="322" /><line x1="489.43" y1="276.1" x2="489.43" y2="312.16" /><line x1="679" y1="276.1" x2="679" y2="312.16" /><g transform="translate(-60 0)"><path d="M354.44,273A19.56,19.56,0,0,1,374,292.56V350a49,49,0,0,1-49,49h0V309.16" fill="none" /><line x1="325" y1="399" x2="325" y2="461" /><path d="M355.2,273A18.8,18.8,0,0,1,374,291.8V350a49,49,0,0,1-49,49h0V309.16" fill="none" stroke-width="18" stroke-dasharray="0.1 40" /><line x1="325" y1="399" x2="325" y2="461" /><circle cx="325" cy="461" r="18" /></g></g>'
                    )
                );
        } else if (fullFace == 1) {
            // SKI MASK
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '"><path d="M542.5,196.37h0c-131.72,0-238.5,106.78-238.5,238.5V609H781V434.87C781,303.15,674.22,196.37,542.5,196.37ZM496,483a63,63,0,0,1-24.57,5H446a42,42,0,0,1-42-42h0a42,42,0,0,1,42-42h25.43A63,63,0,0,1,496,409h0c16.68,7.06,40,20.34,47,37-7,16.67-30.32,29.95-47,37Zm131.5,47h-85a18.5,18.5,0,0,1,0-37h85a18.5,18.5,0,0,1,0,37ZM766,446a42,42,0,0,1-42,42H698.57A63,63,0,0,1,674,483c-16.68-7.06-40-20.34-47-37,7-16.67,30.32-29.95,47-37a63,63,0,0,1,24.57-5H724a42,42,0,0,1,42,42Z" />',
                        '<g opacity="0.1"><polyline points="356.39 298.74 332.03 323.11 332.03 323.68 332.1 323.68 356.39 347.98 332.03 372.34 332.03 373.06 356.39 397.43 332.03 421.79 332.03 422.36 332.1 422.36 356.39 446.66 332.03 471.02 332.03 471.75 356.39 496.11 332.03 520.47 332.03 521.05 332.1 521.05 356.39 545.34 332.03 569.7" /><path d="M405.39,249.3,381,273.66v.72l24.36,24.36L381,323.1v.58h.06l24.3,24.3L381,372.34v.72l24.36,24.37L381,421.79v.57h.06L401.73,443a5.17,5.17,0,0,1,0,7.31L381,471v.73l24.36,24.36L381,520.47v.58h.06l24.3,24.29L381,569.7" />',
                        '<polyline points="448.58 489.3 455.39 496.11 431.03 520.47 431.03 521.05 431.1 521.05 455.39 545.34 431.03 569.7" /><polyline points="431.1 225 455.39 249.29 431.03 273.66 431.03 274.38 455.39 298.74 431.03 323.11 431.03 323.68 431.1 323.68 455.39 347.98 431.03 372.34 431.03 373.06 455.39 397.43 451.1 401.71" /><polyline points="495.8 407.01 505.39 397.43 481.03 373.06 481.03 372.34 505.39 347.98 481.1 323.68 481.03 323.68 481.03 323.11 505.39 298.74 481.03 274.38 481.03 273.66 505.39 249.29 481.1 225 504.55 201.55" />',
                        '<polyline points="481.03 569.7 505.39 545.34 481.1 521.05 481.03 521.05 481.03 520.47 505.39 496.11 494.79 485.5" /><polyline points="550.57 491.29 531.03 471.75 531.03 471.02 555.39 446.66 531.1 422.36 531.03 422.36 531.03 421.79 555.39 397.43 531.03 373.06 531.03 372.34 555.39 347.98 531.1 323.68 531.03 323.68 531.03 323.11 555.39 298.74 531.03 274.38 531.03 273.66 555.39 249.29 531.1 225 557.05 199.05" /><polyline points="531.03 569.7 555.39 545.34 540.67 530.63" /><polyline points="600.57 491.29 581.03 471.75 581.03 471.02 605.39 446.66 581.1 422.36 581.03 422.36 581.03 421.79 605.39 397.43 581.03 373.06 581.03 372.34 605.39 347.98 581.1 323.68 581.03 323.68 581.03 323.11 605.39 298.74 581.03 274.38 581.03 273.66 605.39 249.29 581.1 225 601.02 205.08" />',
                        '<polyline points="581.03 569.7 605.39 545.34 590.67 530.63" /><polyline points="637.47 428.74 631.1 422.36 631.03 422.36 631.03 421.79 655.39 397.43 631.03 373.06 631.03 372.34 655.39 347.98 631.1 323.68 631.03 323.68 631.03 323.11 655.39 298.74 631.03 274.38 631.03 273.66 655.39 249.29 631.1 225 636.05 220.05" /><polyline points="646.75 504.74 655.39 496.11 631.03 471.75 631.03 471.02 638.01 464.04" /><polyline points="631.03 569.7 655.39 545.34 641.83 531.78" /><polyline',
                        ' points="700.87 401.95 705.39 397.43 681.03 373.06 681.03 372.34 705.39 347.98 681.1 323.68 681.03 323.68 681.03 323.11 705.39 298.74 681.03 274.38 681.03 273.66 696.84 257.84" /><polyline points="681.03 569.7 705.39 545.34 681.1 521.05 681.03 521.05 681.03 520.47 705.39 496.11 698.46 489.18" /><polyline points="745.16 407.65 755.39 397.43 731.03 373.06 731.03 372.34 755.39 347.98 731.1 323.68 731.03 323.68 731.03 323.11 743.07 311.07" /><polyline points="731.03 569.7 755.39 545.34 731.1 521.05 731.03 521.05 731.03 520.47 755.39 496.11 744.78 485.5" />',
                        '</g><path d="M781,609V434.87c0-131.72-106.78-238.5-238.5-238.5h0c-131.72,0-238.5,106.78-238.5,238.5V609ZM496,483a63,63,0,0,1-24.57,5H446a42,42,0,0,1-42-42h0a42,42,0,0,1,42-42h25.43A63,63,0,0,1,496,409h0c16.68,7.06,40,20.34,47,37-7,16.67-30.32,29.95-47,37Zm131.5,47h-85a18.5,18.5,0,0,1,0-37h85a18.5,18.5,0,0,1,0,37ZM766,446a42,42,0,0,1-42,42H698.57A63,63,0,0,1,674,483c-16.68-7.06-40-20.34-47-37,7-16.67,30.32-29.95,47-37a63,63,0,0,1,24.57-5H724a42,42,0,0,1,42,42Z" fill="none" /><rect x="296" y="574" width="493" height="39" /><line x1="316.75" y1="574" x2="316.75" y2="613" />',
                        '<line x1="346.75" y1="574" x2="346.75" y2="613" /><line x1="376.75" y1="574" x2="376.75" y2="613" /><line x1="406.75" y1="574" x2="406.75" y2="613" /><line x1="436.75" y1="574" x2="436.75" y2="613" /><line x1="466.75" y1="574" x2="466.75" y2="613" /><line x1="496.75" y1="574" x2="496.75" y2="613" /><line x1="526.75" y1="574" x2="526.75" y2="613" /><line x1="556.75" y1="574" x2="556.75" y2="613" /><line x1="586.75" y1="574" x2="586.75" y2="613" /><line x1="616.75" y1="574" x2="616.75" y2="613" /><line x1="646.75" y1="574" x2="646.75" y2="613" /><line x1="676.75" y1="574" x2="676.75" y2="613" /><line x1="706.75" y1="574" x2="706.75" y2="613" /><line x1="736.75" y1="574" x2="736.75" y2="613" />',
                        '<line x1="766.75" y1="574" x2="766.75" y2="613" /><line x1="545" y1="511" x2="624" y2="511" /><g transform="translate(5 10)" ><circle cx="451.88" cy="437.25" r="26" fill="#fff" /><circle cx="711.88" cy="437.25" r="26" fill="#fff" /></g></g>'
                    )
                );
        } else if (fullFace == 2) {
            // ape
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '"><path d="M714,390H456a58,58,0,0,0-58,58h0a58,58,0,0,0,58,58h71v31a58,58,0,0,0,58,58h0a58,58,0,0,0,58-58V506h71a58,58,0,0,0,58-58h0A58,58,0,0,0,714,390Z" fill="#c9ae90" /><path d="M650.5,262a28.42,28.42,0,0,1-20-8.2,28.5,28.5,0,1,1,0-40.6,28.49,28.49,0,0,1,40,0A28.51,28.51,0,0,1,718,226.09a28.73,28.73,0,0,1,1,7.41" stroke="none" />',
                        '<path d="M650.5,262a28.42,28.42,0,0,0,20-8.2,28.5,28.5,0,1,0,0-40.6,28.49,28.49,0,0,0-40,0A28.51,28.51,0,0,0,583,226.09a28.73,28.73,0,0,0-1,7.41" /><path d="M772,528a53,53,0,0,0,0-106Z" fill="#c9ae90" transform="translate(0 10)" />',
                        '<circle cx="315" cy="475" r="53" fill="#c9ae90" transform="translate(0 10)" /><path d="M315,500a25,25,0,0,1,0-50" fill="none" transform="translate(0 10)" />',
                        '<circle cx="583" cy="485" r="19" fill="#000" /><line x1="583.5" y1="487.5" x2="583.5" y2="543.5" /><circle cx="451.88" cy="437.25" r="26" fill="#fff" /><g transform="translate(5 10)" ><circle cx="451.88" cy="437.25" r="26" fill="#fff" /><circle cx="711.88" cy="437.25" r="26" fill="#fff" /></g></g>'
                    )
                );
        } else if (fullFace == 3) {
            // pc
            return
                string(
                    abi.encodePacked(
                        '<g fill="#227cff"><rect x="304" y="540" width="68" height="24" fill="#000"/><rect x="341" y="173" width="465" height="410" rx="52.21" fill="#fff7d4" />',
                        '<rect x="387.5" y="214" width="372" height="297" rx="33.3"/><path d="M341,230.5l-53.44,53.43a19.89,19.89,0,0,0-5.81,14V520.14A19.86,19.86,0,0,0,301.61,540h41.65Z" fill="#d3c89c"/>',
                        '<line x1="397" y1="545" x2="507" y2="545"/><circle cx="610" cy="545" r="10" fill="#000"/><circle cx="650" cy="545" r="10" fill="#000"/>',
                        '<circle cx="690" cy="545" r="10" fill="#000"/><circle cx="730" cy="545" r="10" fill="#ff3636"/><line x1="301" y1="511" x2="325" y2="511"/>',
                        '<line x1="301" y1="491" x2="325" y2="491"/><line x1="301" y1="471" x2="325" y2="471"/><line x1="301" y1="451" x2="325" y2="451"/>',
                        '<line x1="422" y1="252" x2="624" y2="252" stroke="#fff"/><line x1="649" y1="252" x2="721" y2="252" stroke="#fff"/><line x1="422" y1="292" x2="594" y2="292" stroke="#fff"/><line x1="422" y1="272" x2="445" y2="272" stroke="#fff"/><line x1="471" y1="272" x2="573" y2="272" stroke="#fff"/><line x1="614" y1="292" x2="660" y2="292" stroke="#fff"/><line x1="422" y1="332" x2="544" y2="332" stroke="#fff"/><line x1="422" y1="372" x2="534" y2="372" stroke="#fff"/>',
                        '<line x1="422" y1="352" x2="485" y2="352" stroke="#fff"/><line x1="511" y1="352" x2="573" y2="352" stroke="#fff"/><line x1="554" y1="372" x2="660" y2="372" stroke="#fff"/><line x1="574" y1="332" x2="600" y2="332" stroke="#fff"/>',
                        '<line x1="630" y1="332" x2="650" y2="332" stroke="#fff"/><line x1="594" y1="352" x2="700" y2="352" stroke="#fff"/><line x1="422" y1="447" x2="544" y2="447" stroke="#fff"/><line x1="422" y1="467" x2="485" y2="467" stroke="#fff"/>',
                        '<line x1="511" y1="467" x2="573" y2="467" stroke="#fff"/><line x1="574" y1="447" x2="600" y2="447" stroke="#fff"/><line x1="594" y1="467" x2="700" y2="467" stroke="#fff"/><line x1="684" y1="372" x2="730" y2="372" stroke="#fff"/></g>'
                    )
                );
        } else if (fullFace == 4) {
            // paper bag
            return
                string(
                    abi.encodePacked(
                        '<g transform="translate(10 0)"><polygon points="301.81 576.11 330.2 604.5 331.05 604.5 359.44 576.11 387.83 604.5 388.5 604.5 388.5 199.5 273.5 199.5 273.5 604.42 301.81 576.11" fill="#998362" />',
                        '<polygon points="734 200 619 200 504 200 389 200 389 604.92 417.31 576.61 445.7 605 446.55 605 474.94 576.61 503.33 605 504 605 504 604.92 532.31 576.61 560.7 605 561.55 605 589.94 576.61 618.33 605 619 605 619 604.92 647.31 576.61 675.7 605 676.55 605 704.94 576.61 733.33 605 734 605 734 604.92 762.31 576.61 790.7 605 791 605 791 200 734 200" fill="#b29b76" />',
                        '<line x1="331" y1="258" x2="331" y2="605" /><polygon points="274 200 331.5 257.5 389 200 274 200" fill="#7f6c52" />',
                        '<rect x="418" y="404" width="84" height="84" rx="42" fill="#2e271d" /><rect x="678" y="404" width="84" height="84" rx="42" fill="#2e271d" />',
                        '<path d="M743,324h48a0,0,0,0,1,0,0v34a0,0,0,0,1,0,0H743a17,17,0,0,1-17-17v0A17,17,0,0,1,743,324Z" fill="#7f6c52" stroke="none" />',
                        '<path d="M769,284h22a0,0,0,0,1,0,0v34a0,0,0,0,1,0,0H769a17,17,0,0,1-17-17v0A17,17,0,0,1,769,284Z" fill="#7f6c52" stroke="none" />',
                        '<path d="M624,200H791a0,0,0,0,1,0,0v75a0,0,0,0,1,0,0H699a75,75,0,0,1-75-75v0A0,0,0,0,1,624,200Z" fill="#7f6c52" stroke="none" />',
                        '<circle cx="703" cy="308" r="14" fill="#7f6c52" stroke="none" /><rect x="368" y="308" width="87" height="41" rx="20.5" fill="#7f6c52" stroke="none" />',
                        '<polygon points="734 200 619 200 504 200 389 200 389 604.92 417.31 576.61 445.7 605 446.55 605 474.94 576.61 503.33 605 504 605 504 604.92 532.31 576.61 560.7 605 561.55 605 589.94 576.61 618.33 605 619 605 619 604.92 647.31 576.61 675.7 605 676.55 605 704.94 576.61 733.33 605 734 605 734 604.92 762.31 576.61 790.7 605 791 605 791 200 734 200" fill="none" /></g>'
                    )
                );
        } else if (fullFace == 5) {
            // mummy
            return
                string(
                    abi.encodePacked(
                        '<g><rect x="299" y="540" width="487" height="43" fill="#dbdbc3" /><rect x="299" y="510" width="487" height="43" fill="#dbdbc3" />',
                        '<rect x="304" y="470" width="477" height="43" fill="#dbdbc3" /><rect x="296" y="440" width="483" height="43" fill="#dbdbc3" />',
                        '<rect x="304" y="400" width="477" height="43" fill="#dbdbc3" /><rect x="304" y="360" width="477" height="43" fill="#dbdbc3" />',
                        '<path d="M674,225a287.77,287.77,0,0,0-132.4-31.73h0A287.77,287.77,0,0,0,409.2,225Z" transform="translate(0 -2)" fill="#dbdbc3" />',
                        '<path d="M380.47,255H702.73a241.21,241.21,0,0,0-67.79-43H448.26A241.35,241.35,0,0,0,380.47,255Z" transform="translate(0 -2)" fill="#dbdbc3" />',
                        '<path d="M741,285a249.79,249.79,0,0,0-46.27-43H388.48a250.16,250.16,0,0,0-46.28,43Z" transform="translate(0 -2)" fill="#dbdbc3" /><path d="M327.2,315H756a242.21,242.21,0,0,0-32-43H359.23A242.26,242.26,0,0,0,327.2,315Z" transform="translate(0 -2)" fill="#dbdbc3" />',
                        '<path d="M321.81,335H761.39a240.58,240.58,0,0,0-25.17-43H347A241.18,241.18,0,0,0,321.81,335Z" transform="translate(0 -2)" fill="#dbdbc3" />',
                        '<path d="M302.2,375H781a235.37,235.37,0,0,0-15.78-43H318A236.11,236.11,0,0,0,302.2,375Z" transform="translate(0 -2)" fill="#dbdbc3" /><polygon points="380.47 246 771.51 344.26 781 394.43 345.59 279.03 380.47 246" fill="#dbdbc3" />',
                        '<path d="M778.31,405H445.69c-29.31,0-57.63,14.35-79.69,40.38h0l.21.25C388.16,471,416.12,485,445,485H779Z" transform="translate(0 -2)" /><circle cx="455" cy="446" r="26" fill="#ff0000" /><circle cx="715" cy="446" r="26" fill="#ff0000" /></g>'
                    )
                );
        } else if (fullFace == 6) {
            // headgear
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '"><rect x="772" y="394" width="24" height="186" stroke-width="10" /><rect x="772" y="394" width="24" height="186" stroke-width="10" fill="#000" opacity="0.2" /><path d="M705,502h91a0,0,0,0,1,0,0v58a0,0,0,0,1,0,0H705a29,29,0,0,1-29-29v0A29,29,0,0,1,705,502Z" />',
                        '<path d="M285,570a10,10,0,0,0,10,10h96a10.14,10.14,0,0,0,10-10.2,10,10,0,0,1,10-9.8h65a29,29,0,0,0,29-29h0a29,29,0,0,0-29-29H405.4A23.4,23.4,0,0,1,382,478.6V417.4A23.4,23.4,0,0,1,405.4,394H796V299.63A26.63,26.63,0,0,0,769.37,273H311.63A26.63,26.63,0,0,0,285,299.63V570Z" /><path d="M615.56,273S623,228,580,205H504c46,20,41.56,68,41.56,68Z" fill="#303030" /><path d="M358,249H737a24,24,0,0,1,24,24v0a0,0,0,0,1,0,0H334a0,0,0,0,1,0,0v0a24,24,0,0,1,24-24Z" />',
                        '<path d="M777,331.28V304.75a13,13,0,0,0-13-13" fill="none" stroke="#fff" /><rect x="510" y="298" width="159.33" height="70" stroke-width="10" fill="#fff" /><path d="M589.67,328c21.1,0,40.91,6.91,58.08,19H648V318H531.35v29h.23C548.75,334.91,568.56,328,589.67,328Z" fill="#303030" /><circle cx="455" cy="446" r="36" fill="#6a2472" />',
                        '<line x1="442" y1="446" x2="468" y2="446" /><circle cx="715" cy="446" r="26" fill="#fff" /><path d="M602,511h17a0,0,0,0,1,0,0v15.5a8.5,8.5,0,0,1-8.5,8.5h0a8.5,8.5,0,0,1-8.5-8.5V511a0,0,0,0,1,0,0Z" stroke="none" fill="#ff3636" /><rect x="285" y="390" width="28" height="109" opacity="0.5" fill="#000" /><path',
                        ' d="M286.61,372H284.5A12.5,12.5,0,0,0,272,384.5h0A12.5,12.5,0,0,0,284.5,397h.5v0a29.49,29.49,0,0,1,28,29.46v39A29.49,29.49,0,0,1,285,495v0h-.5A12.5,12.5,0,0,0,272,507.5h0A12.5,12.5,0,0,0,284.5,520h2.11a47.46,47.46,0,0,0,47.46-47.47V419.47A47.46,47.46,0,0,0,286.61,372Z" /><rect x="275" y="434" width="38" height="24" fill="#303030" /><line x1="545" y1="511" x2="624" y2="511" /><rect x="624" y="528" width="17" height="17" rx="8.5" fill="#ff3636" stroke="none" />',
                        "</g>"
                    )
                );
        } else if (fullFace == 7) {
            // atronaut
            return
                string(
                    abi.encodePacked(
                        '<g><path d="M541.5,176h0A251.5,251.5,0,0,1,793,427.5V574a0,0,0,0,1,0,0H290a0,0,0,0,1,0,0V427.5A251.5,251.5,0,0,1,541.5,176Z" fill="#efe9dc" /><path d="M793,427.5a250.37,250.37,0,0,0-27.82-115.07c-36.89-29-91.69-51.43-173-51.43C347,261,344,442.36,344,442.36v77.55l449,.51Z" fill="#8c8c8c" /><path d="M793,499.45V427.5a252.33,252.33,0,0,0-7.63-61.68C757.4,325.4,701.61,282,591,282c-207,0-222,152-222,152v65Z" fill="#22273a" /><circle cx="316" cy="474" r="10" fill="none" stroke="#000" /><circle cx="589" cy="223.53" r="19" fill="#548ae2" stroke="#548ae2" />',
                        '<polyline points="567 237.62 608 202.29 578.59 247" fill="none" stroke="#ff3636" /><rect x="578.94" y="222.06" width="20.12" height="2.94" rx="1.47" stroke="#fff" /><path d="M608,499.25c0-145.74-58-215.09-58-215.09S501,286.91,460.5,310c0,0,33.22,84.56,33.22,189.3Z" fill="#fff" opacity="0.1" stroke="none" /><rect x="301" y="580" width="483" height="41" rx="11.15" fill="#efe9dc" /><g fill="#cec3ae"><rect x="276" y="561.26" width="32.03" height="47.45" rx="16.01" /><rect x="308.03" y="561.26" width="32.03" height="47.45" rx="16.01" /><rect x="340.06" y="561.26" width="32.03" height="47.45" rx="16.01" />',
                        '<rect x="372.08" y="561.26" width="32.03" height="47.45" rx="16.01" /><rect x="404.11" y="561.26" width="32.03" height="47.45" rx="16.01" /><rect x="436.14" y="561.26" width="32.03" height="47.45" rx="16.01" /><rect x="468.17" y="561.26" width="32.03" height="47.45" rx="16.01" /><rect x="682.6" y="561.26" width="32.03" height="47.45" rx="16.01" /><rect x="714.63" y="561.26" width="32.03" height="47.45" rx="16.01" /><rect x="746.66" y="561.26" width="32.03" height="47.45" rx="16.01" /><rect x="778.69" y="561.26" width="32.03" height="47.45" rx="16.01" /><rect x="500.19" y="553.39" width="182.41" height="65.22" rx="28.24" />',
                        '<rect x="520.19" y="553.39" width="182.41" height="65.22" rx="28.24" fill="#efe9dc" /></g><rect x="563" y="574" width="8" height="24" /><rect x="593" y="574" width="8" height="24" /><rect x="623" y="574" width="8" height="24" /><rect x="653" y="574" width="8" height="24" /><g fill="#fff" stroke="none" style="filter:url(#glow)" opacity="0.6"><circle cx="569" cy="346" r="4" /><circle cx="486" cy="403" r="6" /><circle cx="718" cy="466" r="6" /></g><line x1="308" y1="501" x2="324" y2="501" /><line x1="308" y1="517" x2="324" y2="517" /><line x1="382.34" y1="390.67" x2="362.44" y2="380" /><line x1="374.34" y1="406.67" x2="354.44" y2="396" />',
                        '<path d="M793,499.45V427.5a252.33,252.33,0,0,0-7.63-61.68C757.4,325.4,701.61,282,591,282c-207,0-222,152-222,152v65Z" fill="none" /></g>'
                    )
                );
        } else {
            return "";
        }
    }
}
