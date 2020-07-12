Etherum DApp using truffle IDE:

-To create the template for DApp:
   Inside the project folder: truffle init (can also be created using Truffle Box )
   Directory structure:
   	contracts/ : contains solidity files for our smart contracts .Migration.sol is present by default 
    
   	migrations/: to handle smart contracts deployment . An additional smart contracts that keep track of changes.
   
   	test/: both javascript and solidity tests for smart contracts 
   
   	truffle-config.js : truffle configuration file 

-Compiling contracts:
   Change to the root directory where the project is located and type the following in the terminal : truffle compile
   Artifacts of your compilation will be placed in the build/contracts/ directory (This directory will be created if it does not exist.)

-Running Migrations:
  To run migrations, run : $ truffle migrate

-Truffle develop :
  To launch Truffle develop: truffle develop 
  Develop blockchain locally on port 9545 by default with ten accounts 

-Testing :
 To test various test conditon : truffle test 
           
       
     
Error encountered:
-"truffle cannot destructure property 'body' of 'undefined' as it is undefined" due to bug in newer version of truffle 
error sloved by degrading truffle version to 5.1.10
