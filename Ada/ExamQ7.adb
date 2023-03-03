procedure ArrayAssign
        (a : in out IntArray;
        b : in IntArray
        pos : in Integer)
with Global => (Out => Latest_Value), -- global, latest_value is an output of ArrayAssign, must be set within procedure
    Depends => ((a,b,pos) => a, -- what the procedure depends on and modifies - depends on a, b, pos together, calculates and modifies a
        b => b,
        (b,pos) => Latest_Value), -- depends on b and pos together, calculates and modifies latest_value
Pre => -- preconditions
        pos >= Integer(IntArray’First) -- smallest legal index
        and
        pos <= Integer(IntArray’Last), -- largest legal index
Post => -- postconditions
        (b(ArrayIndex(pos)) = b’Old(ArrayIndex(pos))) -- b at index (b(ArrayIndex(pos))) must be the same as before the procedure was executed
        and
        (a(ArrayIndex(pos)) = b(ArrayIndex(pos))); -- a at index (a(ArrayIndex(pos))) must be the same as the value of b at index (b(ArrayIndex(pos)))
