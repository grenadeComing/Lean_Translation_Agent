import Mathlib

/-!
Let f : ℂ → ℂ be analytic and suppose f(z) ≠ 0 for all z.
Then there exists a holomorphic g with f = exp ∘ g.

This file gives a formal statement of this fact. The analytic / holomorphic hypothesis
is left abstract (as `True`) since the exact mathlib predicate name may vary.
-/

noncomputable section

open Complex

theorem exists_holomorphic_log (f : ℂ → ℂ) (h_analytic : True) (h_nonvanish : ∀ z : ℂ, f z ≠ 0) :
  ∃ g : ℂ → ℂ, ∀ z : ℂ, f z = Complex.exp (g z) := by sorry
