pragma solidity ^0.8.0;

//SPDX-License-Identifier: MIT

contract SVGBodyGenerator {
    constructor() {}

    function render(uint8 tier) external pure returns (string memory) {
        // Body
        if (tier == 0) {
            return
                string(
                    abi.encodePacked(
                        '<path d="M806.25,804.25h-34V434.75c0-126.75-102.75-229.5-229.5-229.5h0c-126.75,0-229.5,102.75-229.5,229.5v369.5h-38a29,29,0,0,0-29,29h0a29,29,0,0,0,29,29h531a29,29,0,0,0,29-29h0A29,29,0,0,0,806.25,804.25Z" />',
                        '<rect x="704" y="901" width="77" height="51" rx="25.5" /><rect x="155" y="854.88" width="50" height="33.12" rx="16.56" /><rect x="870" y="837.88" width="50" height="33.12" rx="16.56" />',
                        '<line x1="313" y1="804" x2="481" y2="804" />'
                    )
                );
        } else if (tier == 1) {
            return
                string(
                    abi.encodePacked(
                        '<rect x="157" y="854.88" width="50" height="33.12" rx="16.56" />',
                        '<rect x="872" y="837.88" width="50" height="33.12" rx="16.56" />',
                        '<rect x="704" y="901" width="77" height="51" rx="25.5" />',
                        '<rect x="395" y="834" width="305" height="58" rx="29" opacity="0.2" stroke="none" fill="#000" />',
                        '<path d="M774,630V434.61c0-126.75-102.75-229.5-229.5-229.5S315,307.86,315,434.61V630l-.12,3.38A94.24,94.24,0,1,0,421.26,787.11a141.39,141.39,0,0,0,245.89-.53A94.24,94.24,0,1,0,774.22,633.43Z" />',
                        '<path d="M403,717a140.88,140.88,0,0,0,13,59.19c1.63,3.53,3.41,7,5.31,10.35a141.41,141.41,0,0,0,245.91.53q3.13-5.48,5.78-11.25" fill="none" />'
                    )
                );
        } else if (tier == 2) {
            return
                string(
                    abi.encodePacked(
                        '<rect x="704" y="901" width="77" height="51" rx="25.5" />',
                        '<rect x="155" y="854.88" width="50" height="33.12" rx="16.56" />',
                        '<rect x="870" y="837.88" width="50" height="33.12" rx="16.56" />',
                        '<rect x="313" y="205" width="459" height="595" rx="229.5" />',
                        '<rect x="389" y="834" width="305" height="58" rx="29" fill="#000" opacity="0.2" stroke="none" />'
                    )
                );
        } else if (tier == 3) {
            return
                string(
                    abi.encodePacked(
                        '<rect x="704" y="901" width="77" height="51" rx="25.5" />',
                        '<rect x="155" y="854.88" width="50" height="33.12" rx="16.56" />',
                        '<rect x="870" y="837.88" width="50" height="33.12" rx="16.56" />',
                        '<rect x="389" y="834" width="305" height="58" rx="29" fill="#000" opacity="0.2" stroke="none" />',
                        '<path d="M773,680.6v-256c0-126.75-102.75-229.5-229.5-229.5S314,297.86,314,424.61v314.6a32.79,32.79,0,1,0,65.57,0V725.79A32.79,32.79,0,0,1,412.36,693h0a32.79,32.79,0,0,1,32.78,32.79v43.42a32.79,32.79,0,1,0,65.57,0V749.79a32.79,32.79,0,1,1,65.58,0v-.57a32.79,32.79,0,1,0,65.57,0V727h0v.79A32.79,32.79,0,0,1,674.64,695h0a32.79,32.79,0,0,1,32.79,32.79V727h0v6.21a32.79,32.79,0,1,0,65.57,0Z" />',
                        '<rect x="352" y="832" width="377" height="58" rx="29" opacity="0.2" fill="#000" stroke="none" />'
                    )
                );
        }
    }
}
