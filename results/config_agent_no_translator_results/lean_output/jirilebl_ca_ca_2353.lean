import Mathlib

-- A minimal, self-contained encoding to translate the statement.
-- We introduce a small Holomorphic predicate as a wrapper around complex differentiability.
structure Holomorphic (f : ℂ → ℂ) : Prop where
  differentiable_at : ∀ z, DifferentiableAt ℂ f z

-- Translation of the statement: a holomorphic f : ℂ → ℂ is conformal at z0 iff its derivative at z0 is nonzero.
theorem conformalAt_iff_fderiv_ne_zero_of_holomorphic (f : ℂ → ℂ) (z0 : ℂ)
  (hf : Holomorphic f) :
  ConformalAt f z0 ↔ fderiv ℝ f z0 ≠ 0 := by
  sorry
