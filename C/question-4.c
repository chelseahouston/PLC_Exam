(ArithExp *) makeExpr()
{
    ArithExp * e = (ArithExp *) malloc(sizeof(ArithExp));
    (* e).isLeaf = TRUE;
    return e;
}

