import Mathlib

/-!
Abstract formulation: Suppose Y is a Hausdorff topological space which admits a universal covering space.
A based covering map p : (X,x0) → (Y,y0) is universal iff for every based covering q : (Z,z0) → (Y,y0)
there is a unique based morphism h : (X,x0) → (Z,z0) with q ∘ h = p.

The proof is omitted (:= by sorry).
-/

variable {X Y Z : Type _}
variable [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
variable [T2Space Y]

variable (x0 : X) (y0 : Y) (z0 : Z)
variable (p : X → Y) (q : Z → Y)

/-- Abstract predicates saying `p` and `q` are covering maps, and `p` is universal. -/
variable (is_covering_p : Prop) (is_covering_q : Prop) (is_universal_p : Prop)

/-- Basedness equalities for basepoints. -/
variable (p_base : p x0 = y0) (q_base : q z0 = y0)

/-- A morphism of based coverings is a basepoint-preserving map h with q ∘ h = p. -/
def is_covering_morphism (h : X → Z) : Prop := h x0 = z0 ∧ q ∘ h = p

/-- Main equivalence (abstract): p is universal iff for every based covering q there exists a
unique based covering morphism h : X → Z with q ∘ h = p. -/
theorem universal_covering_iff_unique_morphism :
  is_universal_p ↔
    ∀ (Z' : Type _) [TopologicalSpace Z'] (z0' : Z') (q' : Z' → Y) (is_covering_q' : Prop) (q_base' : q' z0' = y0),
      ∃! (h : X → Z'), (h x0 = z0') ∧ (q' ∘ h = p) := by
  sorry
