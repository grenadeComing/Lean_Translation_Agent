import Mathlib

/-- For a complex-valued function, convergence to `L` at infinity in the sense of the
Riemann sphere is equivalent to the usual ε–M definition: for every ε > 0 there exists
M such that Complex.abs (f z - L) < ε whenever Complex.abs z > M. -/
theorem tendsto_at_infty_riemann_sphere_iff {f : ℂ → ℂ} {L : ℂ} :
  Filter.Tendsto f (Filter.cocompact (X := ℂ)) (nhds (L : ℂ)) ↔
    ∀ ε : ℝ, ε > 0 → ∃ M : ℝ, ∀ z : ℂ, Complex.abs z > M → Complex.abs (f z - L) < ε := by sorry
