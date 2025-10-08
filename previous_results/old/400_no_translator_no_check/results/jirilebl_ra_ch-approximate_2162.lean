import Mathlib

/--
Let f : ℂ → ℂ be analytic (entire) and suppose f(z) ≠ 0 for all z.
Then there exists an entire (holomorphic) g with f = exp ∘ g.
-/
theorem entire_nonzero_has_log (f : ℂ → ℂ)
  (hf : Differentiable ℂ f)
  (h_nonzero : ∀ z : ℂ, f z ≠ 0) :
  ∃ g : ℂ → ℂ, Differentiable ℂ g ∧ ∀ z, Complex.exp (g z) = f z :=
by sorry
