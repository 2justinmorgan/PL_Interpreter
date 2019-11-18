function runTests()
    if nargin == 0
        checkEqual(interp(numC(3), makeTopEnv()), numV(3));
        checkEqual(numC(4), numC(4));
        checkEqual(evaluatePrimop("+", [numV(4), numV(5)]), 9)
        checkEqual(interp(appC(idC("+"), [numC(4), numC(2)]), makeTopEnv()), 6)
    end
end