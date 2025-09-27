import Mathlib

open Set Filter

theorem Pugh_exercise_4_15a {a b : ℝ} (hab : a < b) (f : ℝ → ℝ) :
  UniformContinuousOn f (Icc a b) ↔
  ∃ μ : ℝ → ℝ,
    (∀ s, 0 < s → 0 < μ s) ∧
    StrictMonoOn μ (Ioi 0) ∧
    ContinuousOn μ (Ioi 0) ∧
    Tendsto μ (nhdsWithin 0 (Ioi 0)) (nhds 0) ∧
    (∀ s t, s ∈ Icc a b → t ∈ Icc a b → |f s - f t| ≤ μ (|s - t|)) := by
  sorry
