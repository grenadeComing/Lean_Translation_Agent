import Mathlib

open Complex
open Finset

/-- Let z ∈ ℂ. Show that for all n ∈ ℕ,
    |∑_{k=0}^n z^k / k! - e^z| ≤ |z|^{n+1}/(n+1)! * e^{|z|}.
-/
theorem jirilebl_ca_ca_19562 (z : ℂ) (n : ℕ) :
  Complex.abs ((Finset.sum (Finset.range (n+1)) fun k => (z ^ k) / (Nat.cast (Nat.factorial k) : ℂ)) - exp z) ≤
    (Complex.abs z) ^ (n+1) / (Nat.cast (Nat.factorial (n+1)) : ℝ) * Real.exp (Complex.abs z) := by sorry
