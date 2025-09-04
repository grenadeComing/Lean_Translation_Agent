import Mathlib

/-- Let f be entire (i.e. differentiable over ℂ) and suppose f(z) ≠ 0 for all z. Show that there exists a holomorphic g with f = exp ∘ g. -/
theorem exists_differentiable_log_of_nonvanishing {f : ℂ → ℂ} (hd : Differentiable ℂ f) (hf : ∀ z, f z ≠ 0) :
    ∃ g : ℂ → ℂ, Differentiable ℂ g ∧ f = exp ∘ g := by sorry