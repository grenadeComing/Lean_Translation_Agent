import Mathlib

variable (holomorphic_on : (ℂ → ℂ) → Set ℂ → Prop)
variable (analytic_at : (ℂ → ℂ) → ℂ → Prop)

theorem holomorphic_on_analytic {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (h : holomorphic_on f U) :
  ∀ z0 ∈ U, analytic_at f z0 := by sorry
