import Mathlib

/-! Exercise 1.26 (Shakarchi).

Suppose f is continuous in a region Ω. Prove that any two primitives of f (if they exist)
differ by a constant.

We formalize this for functions on ℂ: if F and G have the same derivative f at every
point of a connected set Ω, then F - G is constant on Ω. -/

theorem Shakarchi_exercise_1_26 {Ω : Set ℂ} (hconn : IsConnected Ω)
  {f F G : ℂ → ℂ}
  (hF : ∀ z ∈ Ω, HasDerivAt F (f z) z)
  (hG : ∀ z ∈ Ω, HasDerivAt G (f z) z) :
  ∃ c : ℂ, ∀ z ∈ Ω, F z - G z = c := by
  sorry
