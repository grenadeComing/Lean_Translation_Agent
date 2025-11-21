import Mathlib

universe u v w

open Function

/-- Suppose a topology on the set Y is given as the final topology from functions
    f_i : X_i → Y for i in an index set I. Then Y is Hausdorff iff there exists
    a topological space X0 and a map P : X0 → Y which is injective and through
    which all the f_i factor (i.e. f_i = P ∘ g_i for some g_i). -/
theorem benmckay_top_topology_407 {I : Type u} {Y : Type v} {X : I → Type w}
  (f : ∀ i, X i → Y)
  (instY : TopologicalSpace Y)
  (instX : ∀ i, TopologicalSpace (X i))
  (h_final : ∀ {Z : Type _} [TopologicalSpace Z] (g : Y → Z),
    Continuous g ↔ ∀ i, Continuous (g ∘ f i)) :
  (T2Space Y) ↔
  (∃ (X0 : Type _) (instX0 : TopologicalSpace X0) (P : X0 → Y) (g : ∀ i, X i → X0),
    (∀ i, P ∘ g i = f i) ∧ Injective P) := by sorry
