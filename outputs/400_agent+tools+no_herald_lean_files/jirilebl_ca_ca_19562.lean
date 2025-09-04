import Mathlib

open Complex
open Finset

theorem jirilebl_ca_ca_19562 (z : ℂ) : ∀ n : ℕ,
  Complex.abs ((Finset.sum (range (n+1)) fun k => z ^ k / (Nat.cast (Nat.factorial k) : ℂ)) - Complex.exp z)
  ≤ (Complex.abs z) ^ (n+1) / (Nat.cast (Nat.factorial (n+1)) : ℝ) * Real.exp (Complex.abs z) := by
  sorry
