import Mathlib

-- Suppose f is holomorphic on an open set Ω. If Re f is constant, then f is constant.
theorem Shakarchi_exercise_1_13a {Ω : Set ℂ} (hΩ : IsOpen Ω) {f : ℂ → ℂ} (hf : IsHolomorphicOn f Ω) (c : ℝ) (h : ∀ z ∈ Ω, (f z).re = c) : ∀ z ∈ Ω, f z = (c : ℂ) := by sorry
