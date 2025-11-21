import Mathlib

variables {K : Type _} [NormedField K]
variables {X : Type _} [NormedAddCommGroup X] [NormedSpace K X]
variables {Y : Type _} [NormedAddCommGroup Y] [NormedSpace K Y]

theorem linear_map_bounded_is_continuous (A : X →ₗ[K] Y)
  (h : ∃ (C : ℝ), 0 ≤ C ∧ ∀ (x : X), norm (A x) ≤ C * norm x) :
  Continuous (A : X → Y) := by
  sorry
