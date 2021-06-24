function tests = runLocalTest
tests = functiontests(localfunctions);

function testFunctionOne(testCase)
disp('testFunctionOne: pass');

function testFunctionTwo(testCase)
error('testFunctionTwo: fail');

function testFunctionThree(testCase)
disp('testFunctionThree: pass');


