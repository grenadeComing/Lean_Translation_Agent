import Mathlib

/-- Herstein exercise: Let G be a finite group and φ an automorphism of G such that φ(x) = x⁻¹
for more than three-fourths of the elements of G. Then φ(y) = y⁻¹ for all y ∈ G, and so G is abelian. -/
theorem Herstein_exercise_2_5_52 {G : Type*} [Group G] [Fintype G] [DecidableEq G] (φ : MulAut G)
  (h : (Finset.filter (fun x : G => φ x = x⁻¹) (Finset.univ : Finset G)).card * 4 > 3 * Fintype.card G) :
  (∀ y : G, φ y = y⁻¹) ∧ (∀ x y : G, x * y = y * x) := by sorry
