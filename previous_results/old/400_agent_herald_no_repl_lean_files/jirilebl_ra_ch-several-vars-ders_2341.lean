import Mathlib

/-- Let E and F be normed vector spaces over ℝ. The sum of two bounded (continuous) linear maps is continuous (hence bounded). -/
theorem continuous_linear_map_add_bounded {E F : Type*} [NormedAddCommGroup E] [NormedAddCommGroup F]
  [NormedSpace ℝ E] [NormedSpace ℝ F] (A B : E →L[ℝ] F) :
  Continuous (A + B : E → F) := by sorry

/-- Scalar multiple of a bounded (continuous) linear map is continuous (hence bounded). -/
theorem continuous_linear_map_smul_bounded {E F : Type*} [NormedAddCommGroup E] [NormedAddCommGroup F]
  [NormedSpace ℝ E] [NormedSpace ℝ F] (c : ℝ) (A : E →L[ℝ] F) :
  Continuous (c • A : E → F) := by sorry

/-- The operator norm on L(E, F) satisfies the norm axioms: triangle inequality, absolute homogeneity,
    and definiteness. This shows that the map f ↦ ‖f‖ is a norm on the space of continuous linear maps. -/
theorem operator_norm_is_norm {E F : Type*} [NormedAddCommGroup E] [NormedAddCommGroup F]
  [NormedSpace ℝ E] [NormedSpace ℝ F] :
  (∀ (f g : E →L[ℝ] F), ‖f + g‖ ≤ ‖f‖ + ‖g‖) ∧
  (∀ (c : ℝ) (f : E →L[ℝ] F), ‖c • f‖ = |c| * ‖f‖) ∧
  (∀ (f : E →L[ℝ] F), ‖f‖ = 0 ↔ f = 0) := by sorry
