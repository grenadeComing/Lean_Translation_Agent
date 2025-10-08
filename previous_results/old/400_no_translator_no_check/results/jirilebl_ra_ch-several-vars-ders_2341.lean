import Mathlib

open ContinuousLinearMap

variable {X Y : Type _} [NormedAddCommGroup X] [NormedAddCommGroup Y]
  [NormedSpace ℝ X] [NormedSpace ℝ Y]

/-- If A and B are bounded (continuous linear) operators X → Y, then A + B is bounded. -/
theorem add_bounded {A B : X →L[ℝ] Y} : ∃ C : ℝ, 0 ≤ C ∧ ∀ x : X, ‖(A + B) x‖ ≤ C * ‖x‖ := by sorry

/-- If A is bounded and α ∈ ℝ, then α • A is bounded. -/
theorem smul_bounded {A : X →L[ℝ] Y} (α : ℝ) : ∃ C : ℝ, 0 ≤ C ∧ ∀ x : X, ‖(α • A) x‖ ≤ C * ‖x‖ := by sorry

/-- The operator norm is nonnegative. -/
theorem operator_norm_nonneg (f : X →L[ℝ] Y) : 0 ≤ ‖f‖ := by sorry

/-- The operator norm vanishes only for the zero operator. -/
theorem operator_norm_eq_zero_iff (f : X →L[ℝ] Y) : ‖f‖ = 0 ↔ f = 0 := by sorry

/-- The operator norm satisfies the triangle inequality. -/
theorem operator_norm_triangle (f g : X →L[ℝ] Y) : ‖f + g‖ ≤ ‖f‖ + ‖g‖ := by sorry

/-- The operator norm is absolutely homogeneous. -/
theorem operator_norm_smul (c : ℝ) (f : X →L[ℝ] Y) : ‖c • f‖ = |c| * ‖f‖ := by sorry
