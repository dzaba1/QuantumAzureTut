namespace QTut {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    
    @EntryPoint()
    operation GenerateRandomBit() : Result {
        use qubit = Qubit();

        H(qubit);
        return M(qubit);
    }
}
