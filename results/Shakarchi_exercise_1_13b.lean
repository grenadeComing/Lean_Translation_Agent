import Mathlib

/-!
Exercise: Suppose f is holomorphic in an open connected set Ω ⊆ ℂ. If Im(f) is constant on Ω, show f is constant on Ω.
-/

theorem Shakarchi_exercise_1_13b {Ω : Set ℂ} (hΩ : IsOpen Ω) (hconn : IsConnected Ω) {f : ℂ → ℂ}
  (hd : DifferentiableOn ℂ f Ω) {c : ℝ} (hc : ∀ z ∈ Ω, (f z).im = c) :
  ∃ a : ℂ, ∀ z ∈ Ω, f z = a := by sorry
