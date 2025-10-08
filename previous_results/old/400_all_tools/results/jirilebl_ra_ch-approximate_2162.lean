import Mathlib

/-- Let f : ℂ → ℂ be analytic (entire) and suppose f(z) ≠ 0 for all z. Show there exists a holomorphic g with f = exp ∘ g.

We state the theorem in elementary terms using Differentiable over ℂ and finish with := by sorry (no proof). -/
theorem exists_holomorphic_log (f : ℂ → ℂ) (hf : Differentiable ℂ f) (hf_ne : ∀ z, f z ≠ 0) :
  ∃ g : ℂ → ℂ, Differentiable ℂ g ∧ ∀ z, f z = Complex.exp (g z) := by sorry
