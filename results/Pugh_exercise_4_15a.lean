import Mathlib

open Set

/-- A function mu : (0,∞) → (0,∞) is a modulus of continuity if it is strictly
increasing and continuous on (0,∞), tends to 0 as s → 0+, and is positive on
(0,∞). -/
def modulus_of_continuity (mu : ℝ → ℝ) : Prop :=
  StrictMonoOn mu (Ioi (0 : ℝ)) ∧ ContinuousOn mu (Ioi (0 : ℝ)) ∧
    (∀ ε > 0, ∃ δ > 0, ∀ s, 0 < s → s < δ → mu s < ε) ∧ (∀ s, 0 < s → 0 < mu s)

/-- f has modulus mu on the closed interval [a,b] if for all s,t ∈ [a,b],
|f s - f t| ≤ mu(|s - t|). We also include a ≤ b as part of the predicate. -/
def has_modulus_on_interval (f mu : ℝ → ℝ) (a b : ℝ) : Prop :=
  a ≤ b ∧ ∀ s t, s ∈ Icc a b → t ∈ Icc a b → abs (f s - f t) ≤ mu (abs (s - t))

/-- A real function on a closed bounded interval is uniformly continuous iff it
admits a modulus of continuity. -/
theorem uniform_on_Icc_iff_has_modulus (f : ℝ → ℝ) {a b : ℝ} (h : a < b) :
  UniformContinuousOn f (Icc a b) ↔ ∃ mu, modulus_of_continuity mu ∧ has_modulus_on_interval f mu a b := by
  sorry
