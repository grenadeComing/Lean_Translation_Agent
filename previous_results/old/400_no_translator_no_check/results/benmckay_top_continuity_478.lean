import Mathlib

open Set

/-- Suppose f : X → Y is surjective and Y has the quotient (coinduced) topology from X via f.
    If there exists a compact K ⊆ X with f '' K = univ, then Y is compact. -/
theorem benmckay_compact_of_surjective_image_compact {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  {f : X → Y}
  (hf : Function.Surjective f)
  (h_coind : ∀ U : Set Y, IsOpen U ↔ IsOpen (f ⁻¹' U))
  (hK : ∃ K : Set X, IsCompact K ∧ f '' K = (univ : Set Y)) :
  IsCompact (univ : Set Y) := by sorry
