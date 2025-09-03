import Mathlib

open Complex

/-- Suppose that f is holomorphic in an open connected set Ω. If Im(f) is constant on Ω, then f is constant on Ω. -/
theorem shakarchi_exercise_1_13b {Ω : Set ℂ} (hΩ : IsOpen Ω) (hconn : IsConnected Ω) {f : ℂ → ℂ}
  (hf : IsHolomorphicOn f Ω) (c : ℝ) (h : ∀ z ∈ Ω, (f z).im = c) : ∃ w : ℂ, ∀ z ∈ Ω, f z = w := by sorry
