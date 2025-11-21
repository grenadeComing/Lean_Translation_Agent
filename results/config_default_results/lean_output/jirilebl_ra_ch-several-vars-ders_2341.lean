import Mathlib

variable {k : Type*} [NontriviallyNormedField k]
variable {E : Type*} {F : Type*} [NormedAddCommGroup E] [NormedAddCommGroup F]
variable [NormedSpace k E] [NormedSpace k F]

/-- If A and B are continuous linear maps E →L[k] F, then A + B is bounded (continuous). -/
theorem bounded_add (A B : E →L[k] F) :
  ∃ C : ℝ, ∀ x : E, ‖(A + B) x‖ ≤ C * ‖x‖ := by
  sorry

/-- If α is a scalar, then α • A is bounded. -/
theorem bounded_smul (α : k) (A : E →L[k] F) :
  ∃ C : ℝ, ∀ x : E, ‖(α • A) x‖ ≤ C * ‖x‖ := by
  sorry

/-- The operator norm vanishes only for the zero map. -/
theorem operator_norm_zero_iff (f : E →L[k] F) :
  ‖f‖ = 0 ↔ f = 0 := by
  sorry

/-- Triangle inequality for the operator norm. -/
theorem operator_norm_triangle (f g : E →L[k] F) :
  ‖f + g‖ ≤ ‖f‖ + ‖g‖ := by
  sorry

/-- Homogeneity of the operator norm: ‖a • f‖ = ‖a‖ * ‖f‖. -/
theorem operator_norm_smul (a : k) (f : E →L[k] F) :
  ‖a • f‖ = ‖a‖ * ‖f‖ := by
  sorry
