import Mathlib

lemma jirilebl_ca_ca_19562 (z : Complex) (n : Nat) :
  Complex.abs ((∑ k in Finset.range (n + 1), (z ^ k) / ((k! : Complex))) - Complex.exp z)
    ≤ (Complex.abs z) ^ (n + 1) / ((n + 1)! : Real) * Real.exp (Complex.abs z) := by sorry