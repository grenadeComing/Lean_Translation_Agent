import Mathlib

open Set
open Filter

/-- A modulus of continuity: a continuous, strictly increasing function mu : (0,∞) → (0,∞)
    with mu(s) → 0 as s → 0, and positive values on (0,∞). -/
def IsModulusOfContinuity (mu : ℝ → ℝ) : Prop :=
  StrictMonoOn mu (Ioi (0 : ℝ)) ∧
  ContinuousOn mu (Ioi (0 : ℝ)) ∧
  (∀ ε > 0, ∃ δ > 0, ∀ s, 0 < s → s < δ → mu s < ε) ∧
  (∀ s > 0, 0 < mu s)

/-- Exercise (Pugh 4.15a): A function on a closed interval is uniformly continuous
    iff it has a modulus of continuity. -/
theorem exists_modulus_iff_uniform_continuous {a b : ℝ} (hab : a < b) {f : ℝ → ℝ} :
  UniformContinuousOn f (Icc a b) ↔
  ∃ mu : ℝ → ℝ, IsModulusOfContinuity mu ∧
    ∀ x y, x ∈ Icc a b → y ∈ Icc a b → abs (f x - f y) ≤ mu (abs (x - y)) :=
by
  sorry
