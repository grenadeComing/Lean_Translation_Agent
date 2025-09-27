import Mathlib

open Function

/-!
Translate: Suppose a topology on the set Y is given as the final topology from functions
f_i : X_i → Y where i runs through an index set I. Prove that Y is Hausdorff iff the
function P : X → Y is injective for some topological space X and function P : X → Y
which includes all the functions f_i.

We formalize this by using the coinduced (final) topology with respect to a map P : X → Y.
We state the equivalence between Y being T2 (Hausdorff) with the coinduced topology and
P being injective. Proof omitted (:= by sorry).
-/

theorem coinduced_t2_iff_injective {X Y : Type _} (P : X → Y) (t : TopologicalSpace X) :
  @T2Space Y (TopologicalSpace.coinduced P t) ↔ Function.Injective P := by sorry

/-- Specialization: when the map P is the canonical map from the disjoint union (sigma)
    of a family X_i to Y given by the family of maps f_i. -/
theorem final_topology_from_family_t2_iff_injective {I : Type _} (X_i : I → Type _) (f : ∀ i, X_i i → Y)
  (t : TopologicalSpace (Σ i, X_i i)) :
  @T2Space Y (TopologicalSpace.coinduced (fun x : Σ i, X_i i => f x.1 x.2) t) ↔
    Function.Injective (fun x : Σ i, X_i i => f x.1 x.2) := by sorry
