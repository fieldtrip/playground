function tests = localfunctionTest
tests = functiontests(localfunctions);

function testFunctionOne(testCase)
disp('testFunctionOne: pass');

function testFunctionTwo(testCase)
warning('testFunctionTwo: warning');

function testFunctionThree(testCase)
disp('testFunctionThree: pass');


