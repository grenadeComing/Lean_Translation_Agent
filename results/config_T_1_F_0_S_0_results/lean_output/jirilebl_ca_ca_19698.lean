import Mathlib

/-- Identity theorem for holomorphic functions.

Suppose U ⊂ ℂ is open and f, g : ℂ → ℂ are holomorphic on U. If S ⊂ U has an
accumulation point in U and f(z) = g(z) for all z ∈ S, then f ≡ g on U.
-/
lemma identity_theorem_of_eq_on_of_has_accumulation_point {U : Set ℂ} (hU : IsOpen U)
  {f g : ℂ → ℂ} (hf : HolomorphicOn f U) (hg : HolomorphicOn g U)
  {S : Set ℂ} (hS : S ⊆ U)
  (hacc : ∃ a ∈ U, ∀ ε > 0, ∃ z ∈ S, z ≠ a ∧ dist z a < ε)
  (heq : EqOn f g S) : EqOn f g U := by sorry