import Mathlib

/-- Suppose a topology on the set `Y` is given as the final topology from functions
`f_i : X i → Y` where `i` runs through an index type `ι`. That is, for every
topological space `Z` and every `g : Y → Z`, `g` is continuous iff each `g ∘ f_i`
is continuous. Then `Y` is Hausdorff (T2) iff there exists a topological space
`X` and an injective map `P : X → Y` such that every `f_i` factors through `P`.

This statement is given as a theorem declaration (no proof): -/
theorem t2_space_iff_exists_injective_factor_through_final_topology
  {ι : Type*} {Y : Type*} [TopologicalSpace Y]
  (X : ι → Type*) [∀ i, TopologicalSpace (X i)]
  (f : ∀ i, X i → Y)
  (h_final : ∀ {Z : Type*} [TopologicalSpace Z], (g : Y → Z) → (Continuous g ↔ ∀ i, Continuous (g ∘ f i))) :
  T2Space Y ↔ ∃ (X' : Type*) [TopologicalSpace X'] (P : X' → Y),
    Injective P ∧ (∀ i, ∃ (g_i : X i → X'), f i = P ∘ g_i) := by sorry