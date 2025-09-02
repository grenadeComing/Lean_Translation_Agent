import Mathlib

open Set

theorem Munkres_exercise_18_13 {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] [T2Space Y]
  {A : Set X} {f : Subtype A → Y} {g1 g2 : Subtype (closure A) → Y}
  (hg1 : Continuous g1) (hg2 : Continuous g2)
  (h1 : ∀ x : Subtype A, g1 ⟨x.1, subset_closure x.2⟩ = f x)
  (h2 : ∀ x : Subtype A, g2 ⟨x.1, subset_closure x.2⟩ = f x) :
  g1 = g2 := by
  ext x
  -- uniqueness of continuous extension in a Hausdorff space; proof omitted
  sorry
