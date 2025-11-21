import Mathlib

lemma continuous_on_Icc_riemann_integrable {a b : ℝ} (hab : a ≤ b) {f : ℝ → ℝ}
  (hcont : ContinuousOn f (Set.Icc a b)) : RiemannIntegrableOn f (Set.Icc a b) := by sorry
