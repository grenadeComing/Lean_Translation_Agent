import Mathlib

open Complex

/-- Suppose that f is holomorphic in an open set Ω. Prove that if Re(f) is constant, then f is constant. -/
theorem Shakarchi_exercise_1_13a {Ω : Set ℂ} (hΩ : IsOpen Ω) {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f Ω) (c : ℝ) (h : ∀ z ∈ Ω, (f z).re = c) :
  ∀ z w, z ∈ Ω → w ∈ Ω → f z = f w := by sorry
