import Mathlib

open Complex

/-- Suppose f is holomorphic (differentiable) on an open set Ω. If |f| is constant on Ω,
    then f is constant on Ω. -/
theorem Shakarchi_exercise_1_13c {Ω : Set ℂ} (hΩ : IsOpen Ω) {f : ℂ → ℂ}
  (hd : DifferentiableOn ℂ f Ω)
  (habs : ∀ z w, z ∈ Ω → w ∈ Ω → Complex.abs (f z) = Complex.abs (f w)) :
  ∀ z w, z ∈ Ω → w ∈ Ω → f z = f w := by
  sorry
