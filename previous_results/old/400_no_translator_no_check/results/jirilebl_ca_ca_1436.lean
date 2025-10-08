import Mathlib

open Filter

theorem limit_to_infty_iff {f : ℂ → ℂ} {z0 : ℂ} :
  Filter.Tendsto (fun z => Complex.abs (f z)) (nhdsWithin z0 (Set.univ \ {z0})) Filter.atTop ↔
  ∀ M : ℝ, M > 0 → ∃ δ > 0, ∀ z : ℂ, (0 < Complex.abs (z - z0) ∧ Complex.abs (z - z0) < δ) → Complex.abs (f z) > M := by sorry
