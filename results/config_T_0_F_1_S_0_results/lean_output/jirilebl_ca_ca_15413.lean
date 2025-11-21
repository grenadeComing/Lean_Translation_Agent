import Mathlib

open BigOperators

/-
Let z ∈ ℂ. Show that for all n ∈ ℕ,
|∑_{k=0}^n z^k / k! - e^z| ≤ |z|^{n+1}/(n+1)! * e^{|z|}.
-/

theorem jirilebl_ca_ca_15413 (z : Complex) (n : ℕ) :
  Complex.abs ((∑ k in Finset.range (n + 1), z ^ k / Complex.ofReal (Nat.factorial k : ℝ)) - Complex.exp z) ≤
    (Complex.abs z) ^ (n + 1) / (Nat.factorial (n + 1) : ℝ) * Real.exp (Complex.abs z) := by
  sorry
