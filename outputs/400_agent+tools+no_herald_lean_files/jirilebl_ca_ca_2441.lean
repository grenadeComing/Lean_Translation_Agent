import Mathlib

open Set

/-- Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic, and f'(z) ≠ 0 for every z ∈ U.
    Then f is locally injective on U. -/
lemma jirilebl_ca_ca_2441 (U : Set Complex) (f : Complex → Complex)
  (hU : IsOpen U)
  (hhol : DifferentiableOn ℂ f U)
  (hder : ∀ z ∈ U, deriv f z ≠ 0) :
  ∀ z ∈ U, ∃ V : Set Complex, IsOpen V ∧ z ∈ V ∧ (∀ x y, x ∈ V → y ∈ V → f x = f y → x = y) := by sorry
