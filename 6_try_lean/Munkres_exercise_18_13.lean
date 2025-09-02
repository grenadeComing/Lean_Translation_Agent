import Mathlib

open Set

/-- Let A ⊂ X; let f: A → Y be continuous; let Y be Hausdorff. Show that if f may be extended to a continuous function g: closure A → Y, then g is uniquely determined by f. -/
theorem extension_unique {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] [T2Space Y]
  {A : Set X} {f : A → Y} {g1 g2 : X → Y}
  (hg1 : ContinuousOn g1 (closure A)) (hg2 : ContinuousOn g2 (closure A))
  (h1 : ∀ x : A, g1 x = f x) (h2 : ∀ x : A, g2 x = f x) :
  ∀ x ∈ closure A, g1 x = g2 x := by
  sorry
