import Mathlib

open Set Filter

/-- A continuous, strictly increasing function μ : (0, ∞) → (0, ∞)
    is a modulus of continuity if μ(s) → 0 as s → 0 (from the right). -/
def modulus_of_continuity (μ : ℝ → ℝ) : Prop :=
  (∀ s, 0 < s → 0 < μ s) ∧ StrictMonoOn μ (Ioi (0 : ℝ)) ∧ ContinuousOn μ (Ioi (0 : ℝ)) ∧
    Tendsto μ (nhdsWithin 0 (Ioi (0 : ℝ))) (nhds (0 : ℝ))

/-- f has modulus of continuity μ on [a, b] if |f s - f t| ≤ μ(|s - t|) for all s, t ∈ [a,b]. -/
def has_modulus_on (f : ℝ → ℝ) (μ : ℝ → ℝ) (a b : ℝ) : Prop :=
  ∀ s ∈ Icc a b, ∀ t ∈ Icc a b, |f s - f t| ≤ μ (|s - t|)

/-- A function on a closed interval [a,b] is uniformly continuous iff it has a modulus
    of continuity. -/
theorem uniform_continuous_iff_exists_modulus {a b : ℝ} (f : ℝ → ℝ) :
  UniformContinuousOn f (Icc a b) ↔ ∃ μ, modulus_of_continuity μ ∧ has_modulus_on f μ a b := by
  sorry
