import Mathlib

/-!
Exercise: Suppose f is continuous in a region Ω (an open, preconnected subset of ℝ).
Prove that any two primitives of f (if they exist) differ by a constant on Ω.
-/

open Set

theorem Shakarchi_exercise_1_26 {Ω : Set ℝ} (h_open : IsOpen Ω) (h_conn : IsPreconnected Ω)
  {f F G : ℝ → ℝ} (hf : ContinuousOn f Ω)
  (hF : ∀ x ∈ Ω, HasDerivAt F (f x) x) (hG : ∀ x ∈ Ω, HasDerivAt G (f x) x) :
  ∃ c : ℝ, ∀ x ∈ Ω, F x - G x = c := by sorry
