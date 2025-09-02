import Mathlib

open Topology Set

variable {ι : Type*} {X : ι → Type*} [∀ i, TopologicalSpace (X i)]

/-- If the product ∏ i, X i (with the product topology) is normal, and each factor X i is nonempty,
then each factor X i is normal. -/
theorem normal_of_pi_normal (h : NormalSpace (∀ i, X i)) (hne : ∀ i, Nonempty (X i)) (i0 : ι) :
  NormalSpace (X i0) := by sorry
