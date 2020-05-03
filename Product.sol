pragma solidity ^0.5.0;

contract Ecom{
    
    uint256 public count;
    // Product[] public products;
    mapping(uint256 => Product) products;
    
    struct Product{
        uint256 id;
        string name;
        string description;
        uint256 price; 
    }
    
    
    constructor() public{
        count = 0;
    }
    
    function getCount() public view returns (uint256){
        return count;
    }
    
    function incrementCount() public returns (uint256){
        count+= 1;
        return count;
    }
    
    function createProduct(string memory name, string memory description, uint256 price) public returns (uint productid){
        count++;        
        products[count] = Product(count, name, description, price);
        return count;
    }
    
    function getProduct(uint256 id) public view returns (string memory productname){
        return products[id].name;
    }
}
