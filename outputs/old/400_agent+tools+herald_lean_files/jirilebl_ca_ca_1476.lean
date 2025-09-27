import Mathlib

open Filter

variable {f : ℂ → ℂ} {z0 : ℂ}

theorem tendsto_abs_infty_iff :
  Tendsto (fun z => Complex.abs (f z)) (nhds z0) atTop ↔
  ∀ M : ℝ, M > 0 → ∃ δ : ℝ, δ > 0 ∧ ∀ z : ℂ, Complex.abs (z - z0) < δ → Complex.abs (f z) > M :=
by
  sorry