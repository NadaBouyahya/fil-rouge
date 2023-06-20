// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@thirdweb-dev/contracts/base/ERC721Base.sol";
import "@thirdweb-dev/contracts/extension/ContractMetadata.sol";

contract DynamicNFT is ERC721Base {
struct NftAnimation {
    string name;
    string animationUrl;
}

mapping(uint256 => NftAnimation) private _NftAnimation;

      constructor(
        string memory _name,
        string memory _symbol,
        address _royaltyRecipient,
        uint128 _royaltyBps
    )
        ERC721Base(
            _name,
            _symbol,
            _royaltyRecipient,
            _royaltyBps
        )
    {}
    function setAnimationUrl(uint256 tokenId, string memory name, string memory animationUrl) public {
    require(_exists(tokenId), "MyNFT: token does not exist");
    _NftAnimation[tokenId].name = name;
    _NftAnimation[tokenId].animationUrl = animationUrl;
}

function getNftAnimation(uint256 tokenId) public view returns (NftAnimation memory) {
    require(_exists(tokenId), "MyNFT: token does not exist");
    // Check if metadata is null
    if (bytes(_NftAnimation[tokenId].name).length == 0 && bytes(_NftAnimation[tokenId].animationUrl).length == 0) {
        // Return default metadata
        return NftAnimation("T-pose", "https://ipfs.thirdwebcdn.com/ipfs/QmfXftFxvUi43oU7ismHEkRRaMsm9fb6kwX8RhFLMw3aty/T-Pose.fbx");
    } else {
        // Return stored metadata
        return _NftAnimation[tokenId];
    }
}
 function mintTo(address _to, string memory _tokenURI)
        public
        override
    {
        uint256 tokenId = nextTokenIdToMint();
        _setTokenURI(tokenId, _tokenURI);
        _safeMint(_to,1, "");
    }

}
