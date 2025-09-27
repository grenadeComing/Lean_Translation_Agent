import Mathlib

variable {G : Type*} [Group G] [Fintype G]
variable (φ : G ≃* G)

/-- Herstein exercise: If an automorphism φ of a finite group G satisfies φ(x) = x⁻¹ for more than
    three-fourths of the elements of G, then φ(y) = y⁻¹ for all y ∈ G, and hence G is abelian. -/
theorem herstein_exercise_2_5_52
  (h : 4 * (Fintype.card {x : G // φ x = x⁻¹}) > 3 * Fintype.card G) :
  (∀ y : G, φ y = y⁻¹) ∧ (∀ a b : G, a * b = b * a) := by sorry
