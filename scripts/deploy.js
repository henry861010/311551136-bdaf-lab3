async function main() {

console.log("==========test1");
   const HelloWorld = await ethers.getContractFactory("lab3");
   
console.log("==========test2");
   // Start deployment, returning a promise that resolves to a contract object
   const lab3 = await HelloWorld.deploy();   
   
console.log("==========test3");
   console.log("Contract deployed to address:", lab3.address);
}

main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1);
  });
