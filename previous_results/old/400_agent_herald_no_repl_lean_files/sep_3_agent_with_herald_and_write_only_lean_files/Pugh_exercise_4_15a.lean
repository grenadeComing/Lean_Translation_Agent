import Mathlib

open Set Filter

/-- A modulus of continuity μ : ℝ → ℝ is positive on (0,∞), strictly increasing on (0,∞),
    continuous on (0,∞), and tends to 0 as s → 0^+. -/
def is_modulus_of_continuity (μ : ℝ → ℝ) : Prop :=
  (∀ s, 0 < s → 0 < μ s) ∧ StrictMonoOn μ (Ioi (0 : ℝ)) ∧ ContinuousOn μ (Ioi (0 : ℝ)) ∧
    Tendsto μ (nhdsWithin (0 : ℝ) (Ioi (0 : ℝ))) (𝓝 (0 : ℝ))

/-- f has modulus of continuity μ on [a,b] if for all s,t in [a,b],
    |f s - f t| ≤ μ (|s - t|). -/
def has_modulus_on (μ f : ℝ → ℝ) (a b : ℝ) : Prop :=
  ∀ s t, s ∈ Icc a b → t ∈ Icc a b → |f s - f t| ≤ μ (|s - t|)

/-- A function on a closed interval [a,b] is uniformly continuous iff there exists
    a modulus of continuity μ such that f has modulus μ on [a,b]. -/
theorem uniform_continuous_on_iff_exists_modulus (f : ℝ → ℝ) {a b : ℝ} (h : a ≤ b) :
  UniformContinuousOn f (Icc a b) ↔ ∃ μ : ℝ → ℝ, is_modulus_of_continuity μ ∧ has_modulus_on μ f a b := by sorry
