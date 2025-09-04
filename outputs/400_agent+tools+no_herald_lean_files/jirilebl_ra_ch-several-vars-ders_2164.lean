import Mathlib

open ContinuousLinearMap

/-- In Euclidean space R^m, the continuous linear functional x ↦ ⟪b, x⟫ has operator norm equal to ‖b‖. -/
lemma innerSL_opNorm_eq_norm {m : ℕ} (b : EuclideanSpace ℝ (Fin m)) :
  (innerSL ℝ b).opNorm = ‖b‖ := by
  sorry
