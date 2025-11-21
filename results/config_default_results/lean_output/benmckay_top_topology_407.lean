import Mathlib

universe u v w z

open Function

/-- Suppose a topology on the set Y is given as the final topology from functions f_i : X_i → Y where i runs through an index set I. 

We state: if there exists a space X0 with topology tX0 and a map P : X0 → Y and maps g_i : X_i → X0 with P ∘ g_i = f_i and tY = TopologicalSpace.coinduced P tX0,
then Y is Hausdorff (T2Space) iff there exists such a P which is injective. -/
theorem final_topology.t2_iff_exists_injective
  {I : Type u} {Y : Type v} {X : I → Type w}
  (tX : ∀ i, TopologicalSpace (X i))
  (tY : TopologicalSpace Y)
  (f : ∀ i, X i → Y) :
  (∃ (X0 : Type z) (tX0 : TopologicalSpace X0) (P : X0 → Y) (g : ∀ i, X i → X0),
     (∀ i, P ∘ g i = f i) ∧ tY = TopologicalSpace.coinduced P tX0) →
  (T2Space Y ↔ ∃ (X0 : Type z) (tX0 : TopologicalSpace X0) (P : X0 → Y) (g : ∀ i, X i → X0),
     (∀ i, P ∘ g i = f i) ∧ Function.Injective P) := by sorry
