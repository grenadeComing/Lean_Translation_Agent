import Mathlib

open Function Set

lemma final_topology_hausdorff_iff_exists_injective_factor
  {I : Type*} {Y : Type*} (X_i : I → Type*)
  [TopologicalSpace Y] [∀ i, TopologicalSpace (X_i i)]
  (f : ∀ i, X_i i → Y)
  (h_final : ∀ s : Set Y, IsOpen s ↔ ∀ i, IsOpen (f i ⁻¹' s)) :
  (T2Space Y) ↔
    ∃ (X' : Type*) [TopologicalSpace X'] (P : X' → Y),
      Function.Injective P ∧ (∀ i, ∃ (g : X_i i → X'), P ∘ g = f i) := by sorry