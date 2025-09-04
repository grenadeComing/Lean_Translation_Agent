import Mathlib
open Complex

/-- Let f : ℂ → ℂ be differentiable (holomorphic) and nonvanishing. Then there exists a holomorphic g with f = exp ∘ g. -/
theorem exists_differentiable_g_eq_exp_of_nonvanishing {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f univ) (hf_ne_zero : ∀ z, f z ≠ 0) :
  ∃ g : ℂ → ℂ, DifferentiableOn ℂ g univ ∧ f = Complex.exp ∘ g := by sorry