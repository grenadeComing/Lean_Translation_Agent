import Mathlib

/-- Suppose that f is holomorphic in an open set Ω. Prove that if |f| is constant, then f is constant. -/
theorem Shakarchi_exercise_1_13c {Ω : Set ℂ} (hΩ : IsOpen Ω) {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f Ω) (hr : ∃ r : ℝ, ∀ z ∈ Ω, |f z| = r) :
  ∃ c : ℂ, ∀ z ∈ Ω, f z = c := by
  sorry
