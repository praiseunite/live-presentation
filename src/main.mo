import Cycles "mo:base/ExperimentalCycles";
actor {

    var counter : Nat = 0;

    public query func show_count() : async Nat {
        return counter;
    };

    public func inc() : async Nat {
        counter := counter + 1;
        return counter;
    };

    system func heartbeat() : async () {
        counter := counter + 1;
    };

    public query func cycle_balance() : async Nat {
        return Cycles.balance();
    };  
    
};
