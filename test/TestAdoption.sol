// SPDX-License-Identifier: MIT
pragma solidity >=0.4.13;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Adoption.sol";

contract TestAdoption {
    Adoption adoption = Adoption(DeployedAddresses.Adoption());

    uint256 expectedpetid = 8;
    address expectedAdopter = address(this);

    // Testing the adopt() function
    function testUserCanAdoptPet() public {
        uint256 returnedId = adoption.adpot(expectedpetid);

        Assert.equal(
            returnedId,
            expectedpetid,
            "Adoption of the expected pet should match what is returned."
        );
    }

    // Testing retrieval of a single pet's owner
    // function testGetAdopterAddressByPetId() public {
    //     address adopter = adoption.adopters(expectedpetid);

    //     Assert.equal(
    //         adopter,
    //         expectedAdopter,
    //         "Owner of the expected pet should be this contract"
    //     );
    // }

    // Testing retrieval of all pet owners
//     function testGetAdopterAddressByPetIdInArray() public {
//         // Store adopters in memory rather than contract's storage
//         address[16] memory adopters = adoption.getAdopters();

//         Assert.equal(
//             adopters[expectedpetid],
//             expectedAdopter,
//             "Owner of the expected pet should be this contract"
//         );
//     }
// }
