import Mathlib

/-- Let X and Y be normed real vector spaces. -/
variable {X Y : Type*} [NormedAddCommGroup X] [NormedAddCommGroup Y] [NormedSpace ℝ X] [NormedSpace ℝ Y]

/-- If A and B are bounded (continuous) linear operators X → Y, then A + B is bounded. -/
lemma add_bounded (A B : ContinuousLinearMap ℝ X Y) :
  ∃ C : ℝ, 0 ≤ C ∧ ∀ x : X, ‖(A + B) x‖ ≤ C * ‖x‖ := by sorry

/-- If α ∈ ℝ and A is a bounded (continuous) linear operator X → Y, then α • A is bounded. -/
lemma smul_bounded (α : ℝ) (A : ContinuousLinearMap ℝ X Y) :
  ∃ C : ℝ, 0 ≤ C ∧ ∀ x : X, ‖(α • A) x‖ ≤ C * ‖x‖ := by sorry

/-- The operator norm on L(X, Y) satisfies the norm axioms: nonnegativity, definiteness,
    triangle inequality and absolute homogeneity. -/
lemma operator_norm_is_norm :
  (∀ f : ContinuousLinearMap ℝ X Y, 0 ≤ ‖f‖) ∧
  (∀ f : ContinuousLinearMap ℝ X Y, ‖f‖ = 0 ↔ f = 0) ∧
  (∀ f g : ContinuousLinearMap ℝ X Y, ‖f + g‖ ≤ ‖f‖ + ‖g‖) ∧
  (∀ (a : ℝ) (f : ContinuousLinearMap ℝ X Y), ‖a • f‖ = |a| * ‖f‖) := by sorry