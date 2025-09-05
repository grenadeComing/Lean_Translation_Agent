import Mathlib

/-!
Suppose a topology on the set `Y` is given as the final topology from functions
`f i : X i → Y` where `i` runs through an index set `I`.
We state a formulation of the assertion: `Y` is Hausdorff (T2) iff there exists
some topological space `Z` and an injective map `P : Z → Y` through which all
`f i` factor.  (The proof is omitted.)
-/

universe u v

variable {I : Type u} {Y : Type v} {X : I → Type u}
variable [∀ i, TopologicalSpace (X i)] [TopologicalSpace Y]

open Function

/-- Let `f : ∀ i, X i → Y` be a family of maps and suppose `Y` is endowed with
    the final topology with respect to these maps.  Then `Y` is Hausdorff
    (T2) if and only if there exists a topological space `Z` and an injective
    map `P : Z → Y` such that every `f i` factors through `P`.

    (This file gives only the statement; the proof is omitted.) -/
theorem final_topology_t2_iff_exists_injective_factor
  (f : ∀ i, X i → Y)
  (h_final : TopologicalSpace.IsFinal fun i => f i) :
  T2Space Y ↔ ∃ (Z : Type u) [TopologicalSpace Z] (P : Z → Y) (hP : Injective P),
    ∀ i, ∃ (g : X i → Z), f i = P ∘ g := by sorry
