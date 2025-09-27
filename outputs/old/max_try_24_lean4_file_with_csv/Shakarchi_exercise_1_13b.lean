import Mathlib

open Complex

/-- Suppose f is holomorphic in an open set Ω. If Im(f) is constant on Ω, then f is constant. -/
theorem Shakarchi_exercise_1_13b {Ω : Set ℂ} (hΩ : IsOpen Ω) (f : ℂ → ℂ)
  (hd : DifferentiableOn ℂ f Ω) (c : ℝ) (hc : ∀ z ∈ Ω, (f z).im = c) :
  ∃ w : ℂ, ∀ z ∈ Ω, f z = w := by sorry
