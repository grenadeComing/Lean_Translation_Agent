import Mathlib
open Matrix

/-- The product of two reflections in O(2) is a rotation in SO(2). -/
theorem rotation_of_product_of_two_reflections
  (A B : Matrix (Fin 2) (Fin 2) ℝ)
  (hA : A ∈ OrthogonalGroup 2 ℝ)
  (hB : B ∈ OrthogonalGroup 2 ℝ)
  (hdetA : A.det = -1) (hdetB : B.det = -1) :
  A * B ∈ SpecialOrthogonalGroup 2 ℝ := by
  sorry