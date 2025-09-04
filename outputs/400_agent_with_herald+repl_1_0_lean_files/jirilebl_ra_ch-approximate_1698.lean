import Mathlib
open Complex Set
open scoped Topology

/-- Let f be entire and suppose f(z) \not= 0 for all z. Show that there exists a holomorphic g with f = e^g. -/
theorem exists_holomorphic_g_eq_exp_of_ne_zero {f : ℂ → ℂ} (hf : AnalyticOn ℂ f univ) (hf_ne : ∀ z, f z ≠ 0) :
    ∃ g : ℂ → ℂ, AnalyticOn ℂ g univ ∧ f = exp ∘ g := by sorry
