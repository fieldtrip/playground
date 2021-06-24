%% Test size
exp = [7 13];
act = ones([7 13]);
assert(isequal(size(act),exp))

%% Test values
act = ones(42);
assert(unique(act) == 1)