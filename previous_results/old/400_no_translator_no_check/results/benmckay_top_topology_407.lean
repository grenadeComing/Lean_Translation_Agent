import Mathlib

open Set

variable {I : Type*} {Y : Type*} (X : I → Type*)
variable [TopologicalSpace Y] [∀ i, TopologicalSpace (X i)]
variable (f : ∀ i, X i → Y)
variable (final_topology : ∀ U : Set Y, IsOpen U ↔ ∀ i, IsOpen (f i ⁻¹' U))

/-- Canonical map from the disjoint union `Σ i, X i` to `Y`. -/
def P_sum (s : Σ i, X i) : Y := f s.1 s.2

/-- Under the final topology hypothesis, `Y` is Hausdorff iff the canonical
    map `P_sum` from the disjoint union is injective. -/
theorem t2_iff_injective_of_final_topology :
  T2Space Y ↔ Function.Injective (P_sum (X := X) (f := f)) := by sorry
