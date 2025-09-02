import Mathlib

/-- If G is a group and a, x ∈ G, then the centralizer of x^{-1} a x equals the conjugate
of the centralizer of a by x^{-1}.
-/
theorem Herstein_exercise_2_3_17 (G : Type*) [Group G] (a x : G) :
  (Subgroup.centralizer ({x⁻¹ * a * x} : Set G) : Set G) =
    Set.image (fun y => x⁻¹ * y * x) (Subgroup.centralizer ({a} : Set G) : Set G) := by sorry
