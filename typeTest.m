%% Test double class
exp = 'double';
act = ones;
assert(isa(act,exp))

%% Test single class
exp = 'single';
act = ones('single');
assert(isa(act,exp))

%% Test uint16 class
exp = 'uint16';
act = ones('uint16');
assert(isa(act,exp))