import Mathlib

variable {I : Type _}
variable {Y : Type _} [TopologicalSpace Y]
variable (X : I → Type _) [∀ i, TopologicalSpace (X i)]

variable (f : ∀ i, X i → Y)

def P (s : Sigma fun i => X i) : Y := f s.1 s.2

/-- Let Y carry the final topology with respect to the family `f : ∀ i, X i → Y`.
    Let `P : Sigma X → Y` be the canonical map from the disjoint union.
    Then Y is Hausdorff (T2) iff `P` is injective. -/
lemma final_topology_hausdorff_iff_injective (h_final : Prop) :
  T2Space Y ↔ Function.Injective (P X f) := by sorry
