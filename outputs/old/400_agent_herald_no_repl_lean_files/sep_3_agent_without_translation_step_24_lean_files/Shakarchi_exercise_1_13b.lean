import Mathlib

open Complex Set

/-- Suppose f is holomorphic on an open set Ω. If Im(f) is constant on Ω then f is constant on Ω. -/
theorem Shakarchi_exercise_1_13b (Ω : Set ℂ) (f : ℂ → ℂ) (c : ℝ)
  (hopen : IsOpen Ω) (hd : DifferentiableOn ℂ f Ω) (h : ∀ z ∈ Ω, (Complex.im (f z)) = c) :
  ∃ a : ℂ, ∀ z ∈ Ω, f z = a := by sorry
