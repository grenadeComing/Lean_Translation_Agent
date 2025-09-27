import Mathlib

/-- For a function f : ℂ → ℂ and z0 : ℂ, f(z) → ⊤ in WithTop ℂ as z → z0 iff for every M > 0
there exists a δ > 0 such that |f(z)| > M whenever |z - z0| < δ. -/
theorem tendsto_withTop_iff_abs_gt (f : Complex → Complex) (z0 : Complex) :
  Filter.Tendsto (fun z => (f z : WithTop Complex)) (Filter.nhds z0) (Filter.nhds (⊤ : WithTop Complex)) ↔
  (∀ M : ℝ, 0 < M → ∃ δ : ℝ, 0 < δ ∧ ∀ z, Complex.abs (z - z0) < δ → Complex.abs (f z) > M) := by
  sorry
