import Mathlib

open Set

theorem Rudin_exercise_5_15 (a : ℝ) {f : ℝ → ℝ} (hf : ContDiffOn ℝ 2 f (Ioi a))
  (M0 M1 M2 : ℝ)
  (h0 : ∀ x ∈ Ioi a, |f x| ≤ M0)
  (h1 : ∀ x ∈ Ioi a, |deriv f x| ≤ M1)
  (h2 : ∀ x ∈ Ioi a, |(deriv (deriv f)) x| ≤ M2) :
  M1^2 ≤ 4 * M0 * M2 := by
  sorry
