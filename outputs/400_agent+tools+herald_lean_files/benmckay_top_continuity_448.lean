import Mathlib

variable {X : Type*} [TopologicalSpace X] (s : Setoid X) [TopologicalSpace (Quotient s)]
variable {Y : Type*} [TopologicalSpace Y]

/-- The canonical quotient map from `X` to `Quotient s`. -/
def q : X → Quotient s := Quotient.mk s

/-- If the topology on `Quotient s` is the coinduced (quotient) topology via `q`,
    then `h : Quotient s → Y` is continuous iff `h ∘ q` is continuous. -/
theorem continuous_iff_comp_quotient (ht : TopologicalSpace (Quotient s) = TopologicalSpace.coinduced (q s) (inferInstance : TopologicalSpace X))
  (h : Quotient s → Y) :
  Continuous h ↔ Continuous (h ∘ q s) := by sorry

/-- A continuous map `F : X → Y` descends to a continuous map `Quotient s → Y`
    iff `F` is constant on equivalence classes (here we assume the quotient topology). -/
theorem continuous_descend_iff (ht : TopologicalSpace (Quotient s) = TopologicalSpace.coinduced (q s) (inferInstance : TopologicalSpace X))
  (F : X → Y) (hF : Continuous F) :
  (∃ (G : Quotient s → Y), Continuous G ∧ G ∘ q s = F) ↔
    ∀ (x1 x2 : X), Setoid.r s x1 x2 → F x1 = F x2 := by sorry
