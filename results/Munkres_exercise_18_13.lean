import Mathlib

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] [T2Space Y]
variable {A : Set X} (f : Subtype A → Y)

/-- If f : A → Y extends to a continuous g : closure A → Y and Y is Hausdorff, the extension is unique.
We state it in terms of functions on X continuous on closure A: if two such functions agree with f on A,
then they agree on closure A. -/
theorem extension_unique {g1 g2 : X → Y}
  (hg1 : ContinuousOn g1 (closure A)) (hg2 : ContinuousOn g2 (closure A))
  (h1 : ∀ x : Subtype A, g1 x.1 = f x)
  (h2 : ∀ x : Subtype A, g2 x.1 = f x) :
  ∀ x ∈ closure A, g1 x = g2 x := by sorry
