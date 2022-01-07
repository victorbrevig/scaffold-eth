pragma solidity ^0.8.0;
//SPDX-License-Identifier: MIT
import './ToColor.sol';

contract SVGExtraGenerator {

    using ToColor for bytes3;
    constructor() {}

    function render(uint8 extra, bytes3 color) external pure returns (string memory) {

        if(extra==0) { // wings
        return string(abi.encodePacked(
        '<g><g><path d="M527,558H486.85a106.86,106.86,0,0,1-76.08-31.52l-56.25-56.25A146.64,146.64,0,0,0,250.15,427H214a20,20,0,0,0-12.72,35.43L99.86,563.86a20,20,0,0,0,25.28,30.74,20,20,0,0,0,33,7.54l3.14-3.14a20,20,0,0,0,32.86,7.14l8.14-8.14a20,20,0,0,0,32.86,7.14L245.28,595a20,20,0,0,0,32.86,7.14L295.28,585a20,20,0,0,0,32.86,7.14l7.14-7.14a20,20,0,0,0,32.86,7.14l4.65-4.64a19.95,19.95,0,0,0,33.07,8.88,20,20,0,0,0,32.28,5.76l9.41-9.4a148.36,148.36,0,0,0,39.3,5.26H527a20,20,0,0,0,0-40Z" fill="#fff" />',
        '<line x1="166.09" y1="537.63" x2="236.9" y2="466.81" /><path d="M206.86,576.86l25.21-25.22" />',
        '<path d="M250.15,467H214a20,20,0,0,1,0-40h36.15a146.64,146.64,0,0,1,104.37,43.23l56.25,56.25A106.86,106.86,0,0,0,486.85,558H527a20,20,0,0,1,0,40H486.85a146.64,146.64,0,0,1-104.37-43.23" fill="none" />',
        '</g><g transform="translate(-80 0)">',
        '<path d="M553,558h40.15a106.86,106.86,0,0,0,76.08-31.52l56.25-56.25A146.64,146.64,0,0,1,829.85,427H866a20,20,0,0,1,12.72,35.43L980.14,563.86a20,20,0,0,1-25.28,30.74,20,20,0,0,1-33,7.54L918.72,599a20,20,0,0,1-32.86,7.14L877.72,598a20,20,0,0,1-32.86,7.14L834.72,595a20,20,0,0,1-32.86,7.14L784.72,585a20,20,0,0,1-32.86,7.14L744.72,585a20,20,0,0,1-32.86,7.14l-4.65-4.64a19.95,19.95,0,0,1-33.07,8.88,20,20,0,0,1-32.28,5.76l-9.41-9.4a148.36,148.36,0,0,1-39.3,5.26H553a20,20,0,0,1,0-40Z" fill="#fff" />',
        '<line x1="913.91" y1="537.63" x2="843.1" y2="466.81" /><path d="M873.14,576.86l-25.21-25.22" />',
        '<path d="M829.85,467H866a20,20,0,0,0,0-40H829.85a146.64,146.64,0,0,0-104.37,43.23l-56.25,56.25A106.86,106.86,0,0,1,593.15,558H553a20,20,0,0,0,0,40h40.15a146.64,146.64,0,0,0,104.37-43.23" fill="none" /></g></g>'
        ));
        }else if(extra==1) { // backpack
        return string(abi.encodePacked(
        '<g fill="#',color.toColor(),'" transform="translate(20 10)"><rect x="247" y="627" width="15" height="51" fill="#000" stroke="none" /><path d="M266.63,670.6V666H243.38v4.6a10,10,0,0,1,0,18.8V696h23.25v-6.6a10,10,0,0,1,0-18.8Z" fill="#000" />  <path d="M269.19,389H345a0,0,0,0,1,0,0V637a0,0,0,0,1,0,0H269.19A40.19,40.19,0,0,1,229,596.81V429.19A40.19,40.19,0,0,1,269.19,389Z" /><path d="M309.19,389H385a0,0,0,0,1,0,0V637a0,0,0,0,1,0,0H309.19A40.19,40.19,0,0,1,269,596.81V429.19A40.19,40.19,0,0,1,309.19,389Z" /><path d="M309.19,389H385a0,0,0,0,1,0,0V637a0,0,0,0,1,0,0H309.19A40.19,40.19,0,0,1,269,596.81V429.19A40.19,40.19,0,0,1,309.19,389Z" fill="#000" opacity="0.3" />',
        '<line x1="249" y1="466.81" x2="249" y2="466.31" />',
        '<path d="M249,456.14V429.19a40.2,40.2,0,0,1,34.61-39.81" fill="none" stroke-dasharray="1.02 10.18" />',
        '<path d="M288.69,389h.5" /><path d="M212.9,432H229a0,0,0,0,1,0,0v68a0,0,0,0,1,0,0H212.9A18.9,18.9,0,0,1,194,481.1V450.9A18.9,18.9,0,0,1,212.9,432Z" /><path d="M212.9,518H229a0,0,0,0,1,0,0v86a0,0,0,0,1,0,0h-4.89A30.11,30.11,0,0,1,194,573.89v-37A18.9,18.9,0,0,1,212.9,518Z" /><path d="M212.9,432H229a0,0,0,0,1,0,0v68a0,0,0,0,1,0,0H212.9A18.9,18.9,0,0,1,194,481.1V450.9A18.9,18.9,0,0,1,212.9,432Z" fill="#000" opacity="0.3" />',
        '<path d="M212.9,518H229a0,0,0,0,1,0,0v86a0,0,0,0,1,0,0h-4.89A30.11,30.11,0,0,1,194,573.89v-37A18.9,18.9,0,0,1,212.9,518Z"',
        ' fill="#000" opacity="0.3" /><circle cx="249" cy="479" r="8" fill="#fff" /><line x1="217" y1="456" x2="194" y2="456" fill="none" stroke-dasharray="1 10" />',
        '<line x1="217" y1="547" x2="194" y2="547" fill="none" stroke-dasharray="1 10" />',
        '<rect x="247" y="489" width="4" height="26" />',
        '</g>'
         ));
         }else if(extra==2) { // turtle
         return string(abi.encodePacked(
        '<g><path d="M306.91,665.54S307,729,235,729c0,0,56.32-34.88,41.66-76.94" fill="#345b37" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="10"/><circle cx="306.59" cy="534.48" r="114.09" fill="#345b37" />',
        '<path d="M240.85,472.51h0a11.9,11.9,0,0,1-11.9-11.9V455" transform="translate(0 0)" fill="none" stroke="#6c8259" />',
        '<line x1="218.61" y1="511.52" x2="198.62" y2="511.52" stroke="#6c8259" />',
        '<path d="M241.61,548.74H219V514.51a13,13,0,0,1,13-13h9.67" transform="translate(0 0)" fill="none" stroke="#6c8259" />',
        '<path d="M219,548.83v3a13.62,13.62,0,0,1-13.62,13.62h-8.57" transform="translate(0 0)" fill="none" stroke="#6c8259" />',
        '<line x1="214.95" y1="602.44" x2="244.49" y2="602.44" stroke="#6c8259" /><circle cx="306.59" cy="534.48" r="114.09" fill="none" />',
        '<rect x="260.5" y="424.16" width="149.61" height="226.68" rx="74.8" fill="#a58e62" /><path d="M335.31,403.76h0a93.7,93.7,0,0,0-93.7,93.69v80.1a93.7,93.7,0,0,0,93.7,93.69h0A93.69,93.69,0,0,0,429,577.55v-80.1A93.69,93.69,0,0,0,335.31,403.76ZM410.11,576a74.8,74.8,0,0,1-74.8,74.8h0A74.8,74.8,0,0,1,260.5,576V499a74.8,74.8,0,0,1,74.81-74.8h0a74.8,74.8,0,0,1,74.8,74.8Z" transform="translate(0 0)" fill="#eaddbe" />',
        '<line x1="263.14" y1="519.24" x2="407.4" y2="519.24" stroke="#eaddbe" /><line x1="260.5" y1="564.12" x2="410.11" y2="564.12" stroke="#eaddbe" />',
        '<line x1="262.01" y1="608.01" x2="407.84" y2="608.01" stroke="#eaddbe" /><line x1="335.31" y1="424.16" x2="335.31" y2="650.84" stroke="#eaddbe" />',
        '<path d="M278.59,450.22a167.64,167.64,0,0,0,113.29-.16,74.6,74.6,0,0,0-56.57-25.9h0A74.61,74.61,0,0,0,278.59,450.22Z" transform="translate(0 0)" /><path d="M267.87,471.62a301.08,301.08,0,0,0,134.83-.21" fill="none" stroke="#eaddbe" /><rect x="260.5" y="424.16" width="149.61" height="226.68" rx="74.8" fill="none" /><path d="M262.24,592A74.88,74.88,0,0,0,296,639.68v-5.53A43.15,43.15,0,0,0,262.24,592Z" /></g>'
         ));
         }
         else if(extra==3) { // arrows
         return string(abi.encodePacked(
        '<g><line x1="254.93" y1="497.71" x2="172.88" y2="415.65" /><polygon points="172.88 415.65 146.62 415.65 163.03 432.06 189.29 432.06 172.88 415.65" fill="#bababa" />',
        '<polygon points="172.88 415.65 172.88 389.39 189.29 405.8 189.29 432.06 172.88 415.65" fill="#bababa" /><line x1="245.09" y1="441.91" x2="163.03" y2="359.85" />',
        '<polygon points="163.03 359.85 136.77 359.85 153.18 376.26 179.44 376.26 163.03 359.85" fill="#bababa" /><polygon points="163.03 359.85 163.03 333.59 179.44 350 179.44 376.26 163.03 359.85" fill="#bababa" />',
        '<line x1="300.89" y1="451.75" x2="218.83" y2="369.7" /><polygon points="218.83 369.7 192.57 369.7 208.98 386.11 235.24 386.11 218.83 369.7" fill="#bababa" />',
        '<polygon points="218.83 369.7 218.83 343.44 235.24 359.85 235.24 386.11 218.83 369.7" fill="#bababa" /><rect x="294.02" y="398.93" width="91.68" height="273.87" transform="translate(-279.37 397.27) rotate(-45)"',
        ' fill="#7c5837" /><rect x="200.15" y="434.45" width="107.92" height="31.33" transform="translate(-243.85 311.52) rotate(-45)"'
        ' fill="#69421e" /><line x1="248.06" y1="478.32" x2="355.56" y2="585.81" /></g>'
        ));
        }
        else if(extra==4) { // AK-47
        return string(abi.encodePacked(
        '<g transform="translate(130 -100) rotate(20)"><path d="M193.55,396.76H338a4.55,4.55,0,0,1,4.55,4.55v0a4.55,4.55,0,0,1-4.55,4.55H193.55a0,0,0,0,1,0,0v-9.09A0,0,0,0,1,193.55,396.76Z" transform="translate(173.8 874.59) rotate(-135)" fill="#232323" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="10" />',
        '<polygon points="227.48 353.83 242.81 369.16 250.72 341.46 245.28 336.02 227.48 353.83" fill="#232323" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="10" />',
        '<polygon points="269.51 395.86 314.52 440.86 326.88 428.5 291.77 393.39 269.51 395.86" fill="#232323" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="10" />',
        '<line x1="366.94" y1="484.87" x2="343.69" y2="461.63" fill="#b56924" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="10" />',
        '<polygon points="371.63 473.25 496.25 597.87 496.25 632.24 472.27 649.55 361.99 523.45 348.14 480.92 371.63 473.25" fill="#232323" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="10" />',
        '<rect x="360.58" y="483.35" width="55.25" height="18.88" transform="translate(314.25 1115.74) rotate(-135)" stroke-width="10" stroke="#000" stroke-linecap="round" stroke-linejoin="round" fill="#232323" />',
        '<path d="M378.8,473l-11.86,11.86,20.27,20.28L365.7,526.66a7.35,7.35,0,0,1-10.39,0h0a7.35,7.35,0,0,1,0-10.38h0a2.45,2.45,0,0,0,0-3.47l-56.95-56.95a6.52,6.52,0,0,1,0-9.23l27-27Z" fill="#b56924" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="10" />',
        '<path d="M468.66,645.94l-10.77,3.11a15,15,0,0,0-9.66,8.59l-15.15,36.14a3.44,3.44,0,0,1-4.58,1.8l-22.31-10a3.45,3.45,0,0,1-1.73-4.56l2.24-4.92a3.45,3.45,0,0,1,4.22-1.84h0a3.43,3.43,0,0,0,4.24-1.9l14.48-33.78a15,15,0,0,0,.65-9.94l-2-7.28,10.11-10.12Z" fill="#b56924" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="10" />',
        '<path d="M438.15,611.47l-11.79,11.78a6.4,6.4,0,0,1-9.07,0l-16.15-16.14a6.43,6.43,0,0,1,0-9.08l13.55-13.55Z" fill="none" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="10" />',
        '<path d="M414.41,606.53h0a9.8,9.8,0,0,0,13.85,0l3.68-3.69" fill="none" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="10" />',
        '<path d="M264.24,610.62l9.27-43.38A185.43,185.43,0,0,0,379,544.17l29.74,33.61A229.44,229.44,0,0,1,264.24,610.62Z" fill="#232323" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="10" /></g>'
        ));
        }
        return '';
    }
}