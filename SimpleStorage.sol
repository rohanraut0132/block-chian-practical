pragrma solidity ^0.6.0;

contract SimpleStorage {
    //int256 id = 1;
    //int256 Userid = 32;
    //bool status = true;
    //string name = "rohan";
    //address useraddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    //bytes64

    //this will get init

    uint256 favoriteNumber;
    // bool favoriteNumber;
    string name;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;
    // People public person = People({favoriteNumber:1,name:"rohan"});
    mapping(string => uint256) public nameTofavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        
        return _favoriteNumber;
        

    //view
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function addperson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameTofavoriteNumber[_name] = _favoriteNumber;
    }
}
